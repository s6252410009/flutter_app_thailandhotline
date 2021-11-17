import 'package:flutter/material.dart';
import 'package:flutter_new_app/models/foodlist.dart';

import 'listcall.dart';

// ignore: must_be_immutable
class New2UI extends StatefulWidget {
  New2UI({
    Key? key,
  }) : super(key: key);

  @override
  _New2UIState createState() => _New2UIState();
}

class _New2UIState extends State<New2UI> {
  List<FoodList> foodList = [
    FoodList(
      name: 'ศูนย์ประชาบดี',
      mobile: 'โทร:1300',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ศูนย์ปลอดภัยคมนาคม',
      mobile: 'โทร:1356',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'หน่วยแพทย์กู้ชีวิต วชิรพยาบาล',
      mobile: 'โทร:1554',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'หน่วยแพทย์กู้ชีพกรุงเทพมหานคร',
      mobile: 'โทร:1555',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ศูนย์เอราวัณ สำนักการแพทย์ กรุงเทพมหานคร',
      mobile: 'โทร:1646',
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
      name: 'สถาบันการแพทย์ฉุกเฉินแห่งชาติ',
      mobile: 'โทร:1669',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ศูนย์ส่งกลับและรถพยาบาล โรงพยาบาลตำรวจ',
      mobile: 'โทร:1691',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ศูนย์เตือนภัยพิบัติแห่งชาติ',
      mobile: 'โทร:1860',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: const Text(
          'เบอร์โทรฉุกเฉิน',
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.grey[850],
            ),
          )
        ],
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
