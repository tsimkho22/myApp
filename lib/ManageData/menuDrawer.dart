import 'package:flutter/material.dart';

class menuDrawer extends StatefulWidget {
  const menuDrawer({super.key});

  @override
  State<menuDrawer> createState() => _menuDrawerState();
}

class _menuDrawerState extends State<menuDrawer> {
  Widget item(String text, Icon icon) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10),
      elevation: 10,
      color: Colors.white,
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        onTap: () {
          Navigator.of(context).pop();
        },
        leading: icon,
        iconColor: Colors.amber.shade700,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amber[700],
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/s.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            accountName: Text(
              'Cafe Neverland',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 255, 13),
                fontWeight: FontWeight.bold,
                fontFamily: 'Lobster-Regular',
                fontSize: 18,
              ),
            ),
            accountEmail: Text(
              'cafeneverlnad@gmail.com',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster-Regular',
                  color: Color.fromARGB(255, 0, 255, 13)),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/icn.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                item("ຈັດການຂໍ້ມູນພື້ນຖານ", Icon(Icons.folder)),
                Divider(),
                item("ຂາຍ", Icon(Icons.shopping_bag)),
                Divider(),
                item("ສັ່ງຊື້", Icon(Icons.forward)),
                Divider(),
                item("ນຳເຂົ້າ", Icon(Icons.download)),
                Divider(),
                item("ລາຍງານ", Icon(Icons.archive)),
                Divider(),
                item('ຄົ້ນຫາສິນຄ້າ', Icon(Icons.search)),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
