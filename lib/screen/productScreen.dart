import 'package:caffe/screen/productDetail.dart';
import 'package:flutter/material.dart';

class productScreen extends StatefulWidget {
  const productScreen({super.key});

  @override
  State<productScreen> createState() => _productScreenState();
}

class _productScreenState extends State<productScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          radius: 1,
          backgroundColor: Colors.white10,
          child: IconButton(
            onPressed: () {},
            icon: ClipOval(
              child: Image.asset(
                "assets/images/kuv.jpg",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/placeholder.png",
              width: 20,
              height: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'ນະຄອນຫຼວງວຽງຈັນ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
            ),
          ),
        ],
      ),
      body: productDetail(),
    );
  }
}
