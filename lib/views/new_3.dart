import 'package:flutter/material.dart';
import 'package:flutter_new_app/models/foodlist.dart';

import 'listcall.dart';

class New3UI extends StatefulWidget {
  const New3UI({Key? key}) : super(key: key);

  @override
  _New3UIState createState() => _New3UIState();
}

class _New3UIState extends State<New3UI> {
  List<FoodList> foodList = [
    FoodList(
      name: 'สายด่วนยาเสพติด กรมการแพทย์',
      mobile: 'โทร:1165',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'สายด่วนกรมสุขภาพจิต',
      mobile: 'โทร:1323',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'สำนักงานหลักประกันสุขภาพแห่งชาติ',
      mobile: 'โทร:1330',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ศูนย์พิษวิทยา โรงพยาบาลรามาธิบดี	',
      mobile: 'โทร:1367',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'สายด่วนองค์การอาหารและยา(อย.)',
      mobile: 'โทร:1556',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'สำนักงานอาสากาชาด สภากาชาดไทย	',
      mobile: 'โทร:1665',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'สายด่วนศูนย์รับบริจาคอวัยวะ สภากาชาดไทย	',
      mobile: 'โทร:1666',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'สายด่วนมะเร็ง สถาบันมะเร็งแห่งชาติ กรมการแพทย์	',
      mobile: 'โทร:1668',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ศูนย์บริการ Call Center โรงพยาบาลพญาไท	',
      mobile: 'โทร:1772',
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
