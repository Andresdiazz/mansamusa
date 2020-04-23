
import 'package:flutter/material.dart';

import 'jitsi_meet.dart';
import 'jitsi_meeting_listener.dart';

class ChatPage extends StatefulWidget{
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final serverText = TextEditingController();

  final roomText = TextEditingController();

  final subjectText = TextEditingController();

  final nameText = TextEditingController();

  final emailText = TextEditingController();

  var isAudioOnly = true;

  var isAudioMuted = true;

  var isVideoMuted = true;

  @override
  void initState() {
    super.initState();
    JitsiMeet.addListener(JitsiMeetingListener(
        onConferenceWillJoin: _onConferenceWillJoin,
        onConferenceJoined: _onConferenceJoined,
        onConferenceTerminated: _onConferenceTerminated,
        onError: _onError));
  }

  @override
  void dispose() {
    super.dispose();
    JitsiMeet.removeAllListeners();
  }

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Image.asset("assets/logo3.png", height: 120, width: 145,)),
          backgroundColor: Color(0xffAC7830),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: SingleChildScrollView(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 24.0,
                      ),
                      /*TextFormField(
                        textCapitalization: TextCapitalization.words,
                        controller: serverText,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            filled: true,
                            icon: Icon(Icons.computer),
                            labelText: "Server URL",
                            hintText: "Hint: Leave empty for meet.jitsi.si"),
                      ),*/
                      SizedBox(
                        height: 16.0,
                      ),
                      TextFormField(
                        textCapitalization: TextCapitalization.words,
                        controller: roomText,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: true,
                          icon: Icon(Icons.computer),
                          labelText: "Sala",
                          hintText: "Escribe el nombre de la sala"
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      TextFormField(
                        textCapitalization: TextCapitalization.words,
                        controller: subjectText,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: true,
                          icon: Icon(Icons.chat),
                          labelText: "Asunto",
                          hintText: "Escribe el asunto de la reunión"
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      TextField(
                        textCapitalization: TextCapitalization.words,
                        controller: nameText,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: "Nombre",
                          filled: true,
                          icon: Icon(Icons.person),
                          hintText: "Ingresa tu nombre"

                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      TextField(
                        textCapitalization: TextCapitalization.words,
                        controller: emailText,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          border: UnderlineInputBorder(),
                          labelText: "Email",
                          icon: Icon(Icons.mail),
                          hintText: "Ingresa tu correo",

                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      CheckboxListTile(
                        title: Text("Audio Only"),
                        value: isAudioOnly,
                        onChanged: _onAudioOnlyChanged,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      CheckboxListTile(
                        title: Text("Audio Muted"),
                        value: isAudioMuted,
                        onChanged: _onAudioMutedChanged,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      CheckboxListTile(
                        title: Text("Video Muted"),
                        value: isVideoMuted,
                        onChanged: _onVideoMutedChanged,
                      ),
                      Divider(
                        height: 48.0,
                        thickness: 2.0,
                      ),
                      SizedBox(
                        height: 64.0,
                        width: double.maxFinite,
                        child: RaisedButton(
                          onPressed: () {
                            _joinMeeting();
                          },
                          child: Text(
                            "Join Meeting",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        height: 48.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _onAudioOnlyChanged(bool value) {
    setState(() {
      isAudioOnly = value;
    });
  }

  _onAudioMutedChanged(bool value) {
    setState(() {
      isAudioMuted = value;
    });
  }

  _onVideoMutedChanged(bool value) {
    setState(() {
      isVideoMuted = value;
    });
  }

  _joinMeeting() async {
    String serverUrl =
    serverText.text?.trim()?.isEmpty ?? "" ? null : serverText.text;

    try {
      var options = JitsiMeetingOptions()
        ..room = roomText.text
        ..serverURL = serverUrl
        ..subject = subjectText.text
        ..userDisplayName = nameText.text
        ..userEmail = emailText.text
        ..audioOnly = isAudioOnly
        ..audioMuted = isAudioMuted
        ..videoMuted = isVideoMuted;

      debugPrint("JitsiMeetingOptions: $options");
      await JitsiMeet.joinMeeting(options,
          listener: JitsiMeetingListener(onConferenceWillJoin: ({message}) {
            debugPrint("${options.room} will join with message: $message");
          }, onConferenceJoined: ({message}) {
            debugPrint("${options.room} joined with message: $message");
          }, onConferenceTerminated: ({message}) {
            debugPrint("${options.room} terminated with message: $message");
          }));
    } catch (error) {
      debugPrint("error: $error");
    }
  }

  void _onConferenceWillJoin({message}) {
    debugPrint("_onConferenceWillJoin broadcasted with message: $message");
  }

  void _onConferenceJoined({message}) {
    debugPrint("_onConferenceJoined broadcasted with message: $message");
  }

  void _onConferenceTerminated({message}) {
    debugPrint("_onConferenceTerminated broadcasted with message: $message");
  }

  _onError(error) {
    debugPrint("_onError broadcasted: $error");
  }
}
