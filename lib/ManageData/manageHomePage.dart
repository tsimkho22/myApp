import 'package:caffe/ManageData/menuDrawer.dart';
import 'package:caffe/home/HomePages.dart';
import 'package:caffe/home/messagePage.dart';
import 'package:caffe/home/service.dart';
import 'package:caffe/login/loginPage.dart';
import 'package:flutter/material.dart';

class manageHomePage extends StatefulWidget {
  const manageHomePage({super.key});

  @override
  State<manageHomePage> createState() => _manageHomePageState();
}

final List<Widget> _pages = [HomePages(), loginPage(), messagePage(), service()];

class _manageHomePageState extends State<manageHomePage> {
  int _index = 0;
  void onTapped(int ind) {
    setState(() {
      _index = ind;
    });
  }

  Widget bottomBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.amber.shade700,
      selectedIconTheme: IconThemeData(
        color: Colors.blue.shade700,
        size: 20,
      ),
      selectedLabelStyle: TextStyle(
        color: Colors.blue,
      ),
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 18,
      currentIndex: _index,
      onTap: onTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: 'ໜ້າຫຼັກ',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.forward,
            color: Colors.white,
          ),
          label: 'ເຂົ້າສູ້ລະບົບ',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.message,
            color: Colors.white,
          ),
          label: 'ຂໍ້ຄວາມ',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          label: 'ບໍລິການ',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade700,
        title: Text(
          'ຮ້ານຂາຍເຄື່ອງ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: menuDrawer(),
      body: _pages.isEmpty ? CircularProgressIndicator() : _pages[_index],
      bottomNavigationBar: bottomBar(),
    );
  }
}
