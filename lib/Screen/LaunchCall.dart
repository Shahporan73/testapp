import 'package:flutter/material.dart';
import 'package:mytest_app/Services/ToastServicec.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

import '../common_widget/RoundButton.dart';

class LaunchCall extends StatefulWidget {
  const LaunchCall({super.key});

  @override
  State<LaunchCall> createState() => _LaunchCallState();
}

class _LaunchCallState extends State<LaunchCall> with TickerProviderStateMixin {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: "Launch Url".text.size(20).white.make(),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          80.heightBox,
          Container(
            width: MediaQuery.sizeOf(context).width * 0.80,
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                  labelText: "Enter text", border: OutlineInputBorder()),
            ),
          ).box.outerShadowSm.makeCentered(),
          10.heightBox,
          Roundbutton(
            title: "LaunchMail",
            onTap: () {
              _lauchURL(_controller.text);
              Toastservicec().onSuccessToast("Success");
            },
          ),
          10.heightBox,
          Roundbutton(
            title: "LaunchMail",
            onTap: () {
              _launchMail(_controller.text);
            },
          ),
          10.heightBox,
          Roundbutton(
            title: "LaunchSms",
            onTap: () {
              _launchSms(_controller.text);
            },
          )
        ],
      ),
    );
  }

  Future _lauchURL(String number) async {
    var url = Uri.parse("tel:$number");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future _launchMail(String mail) async {
    var url = Uri.parse("mailto:$mail");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future _launchSms(String smsNumber) async {
    var url = Uri.parse("sms:$smsNumber");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
