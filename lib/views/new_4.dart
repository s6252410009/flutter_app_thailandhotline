import 'package:flutter/material.dart';
import 'package:flutter_new_app/models/foodlist.dart';

import 'listcall.dart';

class New4UI extends StatefulWidget {
  const New4UI({Key? key}) : super(key: key);

  @override
  _New4UIState createState() => _New4UIState();
}

class _New4UIState extends State<New4UI> {
  List<FoodList> foodList = [
    FoodList(
      name: 'การไฟฟ้าส่วนภูมิภาค',
      mobile: 'โทร:1129',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'การไฟฟ้านครหลวง',
      mobile: 'โทร:1130',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'การประปานครหลวง',
      mobile: 'โทร:1125',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'การประปาส่วนภูมิภาค',
      mobile: 'โทร:1662',
      image: 'f1.jpg',
      facebook: '',
      pikat: '',
      website: '',
    ),
    FoodList(
      name: 'ชลประทานบริการประชาชน',
      mobile: 'โทร:1460',
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
