import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ListfoodDetailUI extends StatefulWidget {
  String name = '';
  String website = '';
  String facebook = '';
  String mobile = '';
  String image = '';
  String pikat = '';

  ListfoodDetailUI({
    Key? key,
    required this.name,
    required this.website,
    required this.facebook,
    required this.mobile,
    required this.image,
    required this.pikat,
  }) : super(key: key);

  @override
  _ListfoodDetailUIState createState() => _ListfoodDetailUIState();
}

class _ListfoodDetailUIState extends State<ListfoodDetailUI> {
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

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
      backgroundColor: Colors.lightBlue[50],
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
                width: 500.0,
              ),
              const SizedBox(
                height: 50.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 40.0,
                //height: 100.0,
                child: Card(
                  color: Colors.lightBlue[200],
                  elevation: 10.0,
                  shadowColor: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                    5.0,
                  )),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.person,
                            ),
                            Text(
                              '  Name:  ' + widget.name,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey[600],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              FontAwesomeIcons.facebookF,
                            ),
                            Text(
                              '  Facebook:  ' + widget.facebook,
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Like',
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey[600],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              FontAwesomeIcons.mobileAlt,
                            ),
                            Text(
                              '  Mobile:  ' + widget.mobile,
                            ),
                          ],
                        ),
                      ),
                    ],
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
//เปิดเว็บ
                      setState(() {
                        _launchInBrowser(widget.website);
                      });
                    },
                    icon: const Icon(FontAwesomeIcons.globeAsia),
                    label: const Text(
                      'เปิดเว็บ',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlueAccent,
                      fixedSize: const Size(
                        120.0,
                        50.0,
                      ),
                    ),
                  ),
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
                  ElevatedButton.icon(
                    onPressed: () {
                      //เปิดmap
                      _launchInBrowser(widget.pikat);
                    },
                    icon: const Icon(FontAwesomeIcons.mapMarkedAlt),
                    label: const Text(
                      'พิกัด',
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
