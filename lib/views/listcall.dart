import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class Listcall extends StatefulWidget {
  String name = '';
  String website = '';
  String facebook = '';
  String mobile = '';
  String image = '';
  String pikat = '';

  Listcall({
    Key? key,
    required this.name,
    required this.website,
    required this.facebook,
    required this.mobile,
    required this.image,
    required this.pikat,
  }) : super(key: key);

  @override
  _ListcallState createState() => _ListcallState();
}

class _ListcallState extends State<Listcall> {
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text(
          "รายละเอียด",
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50.0,
              ),
              Image.asset(
                'assets/images/' + widget.image,
                width: 300.0,
              ),
              const SizedBox(
                height: 50.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 40.0,
                //height: 100.0,
                child: Card(
                  color: Colors.blue[200],
                  elevation: 10.0,
                  shadowColor: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                    5.0,
                  )),
                  child: Column(
                    children: [],
                  ),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      //กดแล้วโทร
                      setState(() {
                        _makePhoneCall('tel:' + widget.mobile);
                      });
                    },
                    icon: const Icon(Icons.call),
                    label: const Text(
                      'โทรเลย',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlueAccent,
                      fixedSize: const Size(
                        120.0,
                        50.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
