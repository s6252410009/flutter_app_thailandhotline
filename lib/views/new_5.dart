import 'package:flutter/material.dart';
import 'package:flutter_new_app/models/foodlist.dart';

import 'listcall.dart';

class New5UI extends StatefulWidget {
  const New5UI({Key? key}) : super(key: key);

  @override
  _New5UIState createState() => _New5UIState();
}

class _New5UIState extends State<New5UI> {
  List<FoodList> foodList = [
    FoodList(
      name: 'สอบถามข้อมูลอายัดบัตร ATM - บัตรเครดิต',
      mobile: 'โทร:1188',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ธนาคารออมสิน',
      mobile: 'โทร:1115',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ธนาคารพัฒนาวิสาหกิจขนาดกลางและขนาดย่อมแห่งประเทศไทย',
      mobile: 'โทร:1357',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ธนาคารกรุงเทพ	',
      mobile: 'โทร:1333',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ธนาคารกรุงไทย',
      mobile: 'โทร:1551',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ธนาคารกรุงศรีอยุธยา',
      mobile: 'โทร:1572',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ธนาคารทหารไทย',
      mobile: 'โทร:1558',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ธนาคารซิตี้แบงก์',
      mobile: 'โทร:1588',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ธนาคารสแตนดาร์ด ชาร์เตอร์ด (ไทย)	',
      mobile: 'โทร:1595',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ธนาคารธนชาต',
      mobile: 'โทร:1770',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ธนาคารไทยธนาคาร',
      mobile: 'โทร: 0-2626-7777',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ธนาคารไทยพาณิชย์',
      mobile: 'โทร: 0-2777-7777',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ธนาคารอาคารสงเคราะห์',
      mobile: 'โทร: 0-2645-9000',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ธนาคารยูโอบี จำกัด (มหาชน)	',
      mobile: 'โทร: 0-2285-1555',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ธนาคารนครหลวงไทย	',
      mobile: 'โทร: 0-2828-8000',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ธนาคารกสิกรไทย	',
      mobile: 'โทร: 0-2888-8888',
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
