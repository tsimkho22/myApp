import 'package:caffe/login/loginPage.dart';
import 'package:flutter/material.dart';

class singUp extends StatefulWidget {
  const singUp({super.key});

  @override
  State<singUp> createState() => _singUpState();
}

class _singUpState extends State<singUp> {
  Widget userText() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 48,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              24,
            ),
          ),
          hintText: 'ປ້ອນຊື້ຜູ້ໃຊ້',
          hintStyle: TextStyle(
            fontSize: 14,
          ),
          prefixIcon: Icon(
            Icons.person,
            color: Colors.amber[900],
          ),
          contentPadding: EdgeInsets.all(8),
        ),
      ),
    );
  }

  Widget phoneNumber() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 48,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                24,
              ),
            ),
            hintText: '020XXXXXXXX',
            hintStyle: TextStyle(
              fontSize: 14,
            ),
            prefixIcon: Icon(
              Icons.contact_phone,
              color: Colors.amber[900],
            ),
            contentPadding: EdgeInsets.all(8)),
      ),
    );
  }

  Widget passwordText() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 48,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                24,
              ),
            ),
            hintText: 'ສ້າງລະຫັດຜ່ານ',
            hintStyle: TextStyle(
              fontSize: 14,
            ),
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.amber[900],
            ),
            contentPadding: EdgeInsets.all(8)),
      ),
    );
  }

  Widget confirmPassword() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 48,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              24,
            ),
          ),
          hintText: 'ຢືນຍັນລະຫັດຜ່ານ',
          hintStyle: TextStyle(
            fontSize: 14,
          ),
          contentPadding: EdgeInsets.all(8),
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.amber[900],
          ),
        ),
      ),
    );
  }

  Widget signUpButton() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 48,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.green, width: 0),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        child: Text(
          'ລົງທະບຽນ',
        ),
      ),
    );
  }

  Widget loginWihtGoogle() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 48,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.amber.shade900, width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/google.png",
              width: 24,
              height: 24,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'ເຂົ້າສູ້ລະບົບດ້ວຍ Google',
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            MaterialPageRoute(
              builder: (context) => loginPage(),
            );
          },
          icon: Image.asset(
            "assets/icons/back.png",
            width: 24,
            height: 24,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'ລົງທະບຽນ',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.amber[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              userText(),
              SizedBox(
                height: 20,
              ),
              phoneNumber(),
              SizedBox(
                height: 20,
              ),
              passwordText(),
              SizedBox(
                height: 20,
              ),
              confirmPassword(),
              SizedBox(
                height: 30,
              ),
              signUpButton(),
              SizedBox(
                height: 10,
              ),
              Text(
                '________ຫຼື________',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              loginWihtGoogle(),
            ],
          ),
        ),
      ),
    );
  }
}
