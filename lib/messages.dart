import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_sms_inbox/flutter_sms_inbox.dart';
import 'package:permission_handler/permission_handler.dart';

class inboxcontent extends StatefulWidget {
  const inboxcontent({Key? key}) : super(key: key);

  @override
  State<inboxcontent> createState() => _inboxcontentState();
}

class _inboxcontentState extends State<inboxcontent> {
  final SmsQuery _query = SmsQuery();
  List<SmsMessage> _messages = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      // appBar: AppBar(
      //   title: const Text('Plugin example app'),
      // ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: _messages.length,
          itemBuilder: (BuildContext context, int i) {
            var message = _messages[i];

            return SizedBox(
              height: 50,
              width: 200,
              child: ListTile(
                title: Text(
                  '${message.sender} [${message.date}]',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('${message.body}'),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var permission = await Permission.sms.status;
          if (permission.isGranted) {
            final messages = await _query.querySms(
              kinds: [SmsQueryKind.inbox, SmsQueryKind.sent],
              // address: '+254712345789',
              count: 10,
            );
            debugPrint('sms inbox messages: ${messages.length}');

            setState(() => _messages = messages);
          } else {
            await Permission.sms.request();
          }
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
