import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_new_app/views/new.dart';
import 'package:flutter_new_app/views/new_1.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 80.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.fastForward,
                      size: 80.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'สายด่วน',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'ประเทศไทย',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: Row(
                  children: [
                    Text(
                      '',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewUI(),
                    ),
                  );
                },
                child: Text(
                  'Go TO',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize:
                      Size(MediaQuery.of(context).size.width - 100.0, 60.0),
                  primary: Colors.blue[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => New1UI()),
                      );
                    },
                    child: Text(
                      '',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.bold,
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
