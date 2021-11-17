import 'package:flutter/material.dart';
import 'package:flutter_new_app/views/listfood_detail.dart';
import 'package:flutter_new_app/views/new_1.dart';
import 'package:flutter_new_app/views/new_2.dart';
import 'package:flutter_new_app/views/new_3.dart';
import 'package:flutter_new_app/views/new_4.dart';
import 'package:flutter_new_app/views/new_5.dart';
import 'package:flutter_new_app/views/new_6.dart';

class NewUI extends StatefulWidget {
  const NewUI({Key? key, name, website, facebook, mobile, image, pikat})
      : super(key: key);

  get website => null;

  get mobile => null;

  @override
  _NewUIState createState() => _NewUIState();
}

class _NewUIState extends State<NewUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'สายด่วนของประเทศไทย',
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/logo.png'),
              ),
              accountName: Text(
                '',
              ),
              accountEmail: Text(
                '',
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/flash.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              otherAccountsPictures: [
                Image.asset(
                  'assets/images/flashlogo.jpg',
                ),
              ],
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'หมวดหมู่',
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewUI()),
                );
              },
              title: Text(
                'ร้านอาหาร',
              ),
              leading: Icon(
                Icons.food_bank,
                color: Colors.red,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewUI()),
                );
              },
              title: Text(
                'ที่ท่องเที่ยว',
              ),
              leading: Icon(
                Icons.gps_fixed_sharp,
                color: Colors.red,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewUI()),
                );
              },
              title: Text('เบอร์ฉุกเฉิน'),
              leading: Icon(
                Icons.warning,
                color: Colors.yellow,
              ),
              trailing: Text(
                '!!!',
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'Logout',
              ),
              trailing: Icon(
                Icons.exit_to_app,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.3,
            child: Image.asset(
              'assets/images/food.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Card(
            child: ListTile(
              title: const Text(
                'หมวดหมู่: ร้านอาหารใกล้ตัวเเนะนำ',
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListfoodDetailUI(
                    facebook: 'vietnamese.hotpot',
                    mobile: ' 0944649451',
                    pikat:
                        'https://www.google.com/maps/place/%E0%B9%80%E0%B8%9D%E0%B8%AD%E0%B8%A2%E0%B8%81%E0%B8%AB%E0%B8%A1%E0%B9%89%E0%B8%AD+%E0%B9%80%E0%B8%9E%E0%B8%8A%E0%B8%A3%E0%B9%80%E0%B8%81%E0%B8%A9%E0%B8%A1110/@13.7124926,100.3433631,17z/data=!3m1!4b1!4m5!3m4!1s0x30e295e3bff10aa9:0x729600b972e07478!8m2!3d13.7124926!4d100.3455518',
                    image: '1.jpg',
                    name: 'เฝอยกหม้อ เพชรเกษม110',
                    website: 'https://www.facebook.com/vietnamese.hotpot/',
                  ),
                ),
              );
            },
            title: const Text(
              'เฝอยกหม้อ เพชรเกษม110',
            ),
            leading: const Icon(
              Icons.food_bank,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ListfoodDetailUI(
                          image: '2.jpg',
                          facebook: 'miitoshabu',
                          mobile: '0642426628',
                          name: 'Mito Shabu',
                          pikat:
                              'https://www.google.com/maps/place/MIITO+Shabu/@13.6846892,100.3430738,15z/data=!4m2!3m1!1s0x0:0x1980c444d492b76?sa=X&ved=2ahUKEwjj5-2k44_0AhXpxzgGHaYGDg0Q_BJ6BAg8EAU',
                          website:
                              'https://miito-shabu-shabu-donburi.business.site/?utm_source=gmb&utm_medium=referral',
                        )),
              );
            },
            title: const Text(
              'Mito Shabu',
            ),
            leading: const Icon(
              Icons.food_bank,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ListfoodDetailUI(
                          image: '3.jpg',
                          facebook: 'foodnongkam',
                          mobile: '081 761 6355',
                          name: 'ก๋วยจั๊บมาเจริญ',
                          pikat:
                              'https://www.google.com/maps/place/%E0%B8%81%E0%B9%8B%E0%B8%A7%E0%B8%A2%E0%B8%88%E0%B8%B1%E0%B9%8A%E0%B8%9A%E0%B8%A1%E0%B8%B2%E0%B9%80%E0%B8%88%E0%B8%A3%E0%B8%B4%E0%B8%8D/@13.7124926,100.3433631,17z/data=!4m5!3m4!1s0x30e295fb8ff291f7:0x380f41425d3e53a4!8m2!3d13.7046967!4d100.3435163',
                          website: 'https://www.facebook.com/foodnongkam/',
                        )),
              );
            },
            title: const Text(
              'ก๋วยจั๊บมาเจริญ',
            ),
            leading: const Icon(
              Icons.food_bank,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ListfoodDetailUI(
                          image: '4.jpg',
                          facebook: 'bnkd.restaurant',
                          mobile: '09-2554-1630',
                          name: ' บ้านน้ำเคียงดิน',
                          pikat:
                              'https://www.google.com/maps/place/Ban+Nam+Kieng+Din/@13.7772843,100.3556008,17z/data=!4m5!3m4!1s0x30e297ec80d80327:0x9543ac9a48a16a04!8m2!3d13.7772843!4d100.3577895',
                          website: 'https://www.facebook.com/bnkd.restaurant',
                        )),
              );
            },
            title: const Text(
              'บ้านน้ำเคียงดิน',
            ),
            leading: const Icon(
              Icons.food_bank,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ListfoodDetailUI(
                          image: '5.jpg',
                          facebook: 'hydehaus.hh/',
                          mobile: '08-9415-4488',
                          name: 'Hyde Haus HH (ไฮด์เฮ้าส์)',
                          pikat:
                              'https://www.google.co.th/maps/place/Hyde+Haus+HH+(%E0%B9%84%E0%B8%AE%E0%B8%94%E0%B9%8C%E0%B9%80%E0%B8%AE%E0%B9%89%E0%B8%B2%E0%B8%AA%E0%B9%8C)/@13.7615366,100.3699612,17z/data=!3m1!4b1!4m5!3m4!1s0x30e29727cecfef51:0xef41b5c5e8fd2780!8m2!3d13.7615366!4d100.3721499?hl=en',
                          website: 'https://www.facebook.com/hydehaus.hh',
                        )),
              );
            },
            title: const Text(
              'Hyde Haus HH (ไฮด์เฮ้าส์)',
            ),
            leading: const Icon(
              Icons.food_bank,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListfoodDetailUI(
                    image: '6.png',
                    facebook: 'yuiigyoza',
                    mobile: '082 897 5356',
                    name: 'YUii GYOZA ยูอิ เกี๊ยวซ่า (เพชรเกษม 81)',
                    pikat:
                        'https://www.google.co.th/maps/place/YUii+GYOZA+%E0%B8%A2%E0%B8%B9%E0%B8%AD%E0%B8%B4+%E0%B9%80%E0%B8%81%E0%B8%B5%E0%B9%8A%E0%B8%A2%E0%B8%A7%E0%B8%8B%E0%B9%88%E0%B8%B2+(%E0%B9%80%E0%B8%9E%E0%B8%8A%E0%B8%A3%E0%B9%80%E0%B8%81%E0%B8%A9%E0%B8%A1+81)/@13.7036169,100.3412968,17z/data=!3m1!4b1!4m5!3m4!1s0x30e29700a8fcd6f9:0xef16d79ed77407cd!8m2!3d13.7036169!4d100.3434855?hl=en',
                    website: 'https://www.facebook.com/yuiigyoza/',
                  ),
                ),
              );
            },
            title: const Text(
              'YUii GYOZA ยูอิ เกี๊ยวซ่า (เพชรเกษม 81)',
            ),
            leading: const Icon(
              Icons.food_bank,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.3,
            child: Image.asset(
              'assets/images/travel.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Card(
            child: ListTile(
              title: const Text(
                'หมวดหมู่: สถานที่่ท่องเที่ยวใกล้ตัวเเนะนำ',
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListfoodDetailUI(
                    facebook: 'ErawanMuseumSamutprakan',
                    mobile: '0237131356',
                    pikat:
                        'https://www.google.com/maps/place/The+Erawan+Museum/@13.6287474,100.5873017,17z/data=!3m1!4b1!4m5!3m4!1s0x30e2a0ee2f78efa3:0x18a7ce67d7ff9293!8m2!3d13.6285771!4d100.5889193',
                    image: '7.jpg',
                    name: 'พิพิธภัณฑ์ช้างเอราวัณ',
                    website:
                        'https://www.facebook.com/ErawanMuseumSamutprakan/',
                  ),
                ),
              );
            },
            title: const Text(
              'พิพิธภัณฑ์ช้างเอราวัณ',
            ),
            leading: const Icon(
              Icons.gps_fixed,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ListfoodDetailUI(
                          image: '8.jpg',
                          facebook: 'muangborantheancientcity',
                          mobile: '023234095',
                          name: 'เมืองโบราณ',
                          pikat:
                              'https://www.google.com/maps/place/Ancient+City/@13.539215,100.623042,15z/data=!4m5!3m4!1s0x0:0x2e55b55dfe4082c7!8m2!3d13.540073!4d100.623031',
                          website:
                              'https://www.facebook.com/muangborantheancientcity/',
                        )),
              );
            },
            title: const Text(
              'เมืองโบราณ',
            ),
            leading: const Icon(
              Icons.gps_fixed,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ListfoodDetailUI(
                          image: '9.jpg',
                          facebook: 'bangpu10280',
                          mobile: '02-323-9911',
                          name: 'สถานตากอากาศบางปู',
                          pikat:
                              'https://www.google.com/maps/place/Bang+Pu+Recreation+Centre/@13.5172594,100.6527381,17z/data=!3m1!4b1!4m5!3m4!1s0x311d5837aa3a2c21:0xe4ca91b86533299!8m2!3d13.5172594!4d100.6549268',
                          website: 'https://www.facebook.com/bangpu10280/',
                        )),
              );
            },
            title: const Text(
              'สถานตากอากาศบางปู',
            ),
            leading: const Icon(
              Icons.gps_fixed,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ListfoodDetailUI(
                          image: '10.jpg',
                          facebook: 'Robotdessertcafe',
                          mobile: '0802390849',
                          name: ' Robot dessert cafe',
                          pikat:
                              'https://www.google.com/maps/place/Robot+dessert+cafe+thailand/@13.5666087,100.606852,17z/data=!3m1!4b1!4m5!3m4!1s0x30e2a70c544a3221:0xc57e95243d96ef62!8m2!3d13.5666298!4d100.6090799',
                          website:
                              'https://www.wongnai.com/restaurants/393433zx-robot-dessert-cafe-thailand',
                        )),
              );
            },
            title: const Text(
              'Robot dessert cafe',
            ),
            leading: const Icon(
              Icons.gps_fixed,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ListfoodDetailUI(
                          image: '11.jpg',
                          facebook: 'sailombangpu',
                          mobile: '0616820892',
                          name: 'Sailom Gallery(สายลม แกลลอรี่)',
                          pikat:
                              'https://www.google.com/maps/place/SAILOM+GALLERY/@13.6961507,100.1052981,10z/data=!4m5!3m4!1s0x30e2a785b5ef6307:0xaddb8c6e6f4ca42c!8m2!3d13.5395241!4d100.6125591',
                          website:
                              'https://www.wongnai.com/restaurants/267736HH-sailom-gallery',
                        )),
              );
            },
            title: const Text(
              'Sailom Gallery(สายลม แกลลอรี่)',
            ),
            leading: const Icon(
              Icons.gps_fixed,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListfoodDetailUI(
                    image: '12.jpg',
                    facebook: 'facebook-ตลาดน้ำบางผึ้ง',
                    mobile: '080-162-7354',
                    name: 'ตลาดน้ำบางน้ำผึ้ง',
                    pikat:
                        'https://www.google.com/maps/place/Bang+Nam+Phueng+Floating+Market/@13.6797692,100.5717321,17z/data=!3m1!4b1!4m5!3m4!1s0x30e2a1e32af64143:0xf98116934000a04f!8m2!3d13.6797692!4d100.5739208',
                    website:
                        'https://www.facebook.com/%E0%B8%95%E0%B8%A5%E0%B8%B2%E0%B8%94%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B8%9A%E0%B8%B2%E0%B8%87%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B8%9C%E0%B8%B6%E0%B9%89%E0%B8%87-228912290601842/',
                  ),
                ),
              );
            },
            title: const Text(
              'ตลาดน้ำบางน้ำผึ้ง',
            ),
            leading: const Icon(
              Icons.gps_fixed,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.3,
            child: Image.asset(
              'assets/images/emergency01.png',
              fit: BoxFit.cover,
            ),
          ),
          const Card(
            child: Expanded(
              child: ListTile(
                title: Text(
                  'หมวดหมู่: ฉุกเฉิน',
                ),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => New1UI(),
                ),
              );
            },
            title: const Text(
              'สายด่วนสำหรับแจ้งเหตุด่วนเหตุร้าย',
            ),
            leading: const Icon(
              Icons.call,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => New2UI(),
                ),
              );
            },
            title: const Text(
              'สายด่วนสำหรับแจ้งเหตุฉุกเฉิน/กู้ภัย',
            ),
            leading: const Icon(
              Icons.call,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const New3UI(),
                ),
              );
            },
            title: const Text(
              'สายด่วนสำหรับบริการทางการแพทย์',
            ),
            leading: const Icon(
              Icons.call,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const New4UI(),
                ),
              );
            },
            title: const Text(
              'สายด่วนสำหรับแจ้งเหตุไฟดับ/น้ำไม่ไหล',
            ),
            leading: const Icon(
              Icons.call,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const New5UI(),
                ),
              );
            },
            title: const Text(
              'สายด่วนสำหรับติดต่อธนาคาร/สถาบันการเงิน',
            ),
            leading: const Icon(
              Icons.call,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const New6UI(),
                ),
              );
            },
            title: const Text(
              'สายด่วนสำหรับแจ้งเหตุหรือสอบถามบริการ',
            ),
            leading: const Icon(
              Icons.call,
              color: Colors.green,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
