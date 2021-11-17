import 'package:flutter/material.dart';
import 'package:flutter_new_app/models/foodlist.dart';
import 'package:flutter_new_app/views/listcall.dart';
import 'package:url_launcher/url_launcher.dart';

class New1UI extends StatefulWidget {
  const New1UI({Key? key}) : super(key: key);

  String? get mobile => null;

  @override
  _New1UIState createState() => _New1UIState();
}

class _New1UIState extends State<New1UI> {
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  List<FoodList> foodList = [
    FoodList(
      name: 'แจ้งเหตุด่วน-เหตุร้ายทุกชนิด',
      mobile: 'โทร:191',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'แจ้งอัคคีภัย สัตว์เข้าบ้าน',
      mobile: 'โทร:199',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ศูนย์ความปลอดภัย กรมทางหลวงชนบท',
      mobile: 'โทร:1146',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'สายด่วนตำรวจท่องเที่ยว',
      mobile: 'โทร:1155',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ศูนย์ปราบปรามการโจรกรรมรถยนต์ รถจักรยานยนต์	',
      mobile: 'โทร:1192',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'กองปราบปราม',
      mobile: 'โทร:1195',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'อุบัติเหตุทางน้ำ กองบัญชาการตำรวจ	',
      mobile: 'โทร:1196',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ศูนย์ปลอดภัยทางน้ำ	',
      mobile: 'โทร:1199',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'กองอำนวยการรักษาความมั่นคงภายในราชอาณาจักร	',
      mobile: 'โทร:1374',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ศูนย์สนับสนุนการปฏิบัติการฉุกเฉินสารเคมี',
      mobile: 'โทร:1650',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'กรมป้องกันและบรรเทาสาธารณภัย',
      mobile: 'โทร:1784',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ศูนย์บริการรับแจ้งโทรศัพท์ขัดข้อง',
      mobile: 'โทร:1177',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text(
          'เบอร์โทรฉุกเฉิน',
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  height: 10.0,
                  color: Colors.grey,
                );
              },
              itemCount: foodList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Listcall(
                          facebook: '',
                          image: 'emergency.jpg',
                          mobile: '',
                          name: '',
                          pikat: '',
                          website: '',
                        ),
                      ),
                    );
                  },
                  title: Text(
                    foodList[index].name,
                  ),
                  subtitle: Text(
                    foodList[index].mobile,
                  ),
                  leading: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: Image.asset(
                      'assets/images/' + foodList[index].image,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _launchInBrowser {
  _launchInBrowser(String? mobile);
}
