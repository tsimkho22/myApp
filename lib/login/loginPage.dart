import 'package:caffe/ManageData/manageHomePage.dart';
import 'package:caffe/signup/signUp.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool showPassword = true;
  void onTextSecure() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  Widget showText() {
    return Text(
      'ຮ້ານຄາເຟ່ Neverland',
      style: TextStyle(
        fontSize: 24,
        color: Colors.amber.shade900,
        fontWeight: FontWeight.bold,
      ),
    );
  }

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
            hintText: 'ຊື່ຜູ້ໃຊ້',
            hintStyle: TextStyle(
              fontSize: 14,
            ),
            prefixIcon: Icon(
              Icons.person,
              color: Colors.amber.shade900,
            ),
            alignLabelWithHint: true,
            contentPadding: EdgeInsets.all(8)),
      ),
    );
  }

  Widget passwordText() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 48,
      child: TextField(
        obscureText: showPassword,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                24,
              ),
            ),
            hintText: 'ລະຫັດຜ່ານ',
            hintStyle: TextStyle(
              fontSize: 14,
            ),
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.amber.shade900,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                onTextSecure();
              },
              icon: showPassword
                  ? Icon(Icons.visibility)
                  : Icon(Icons.visibility_off),
            ),
            contentPadding: EdgeInsets.all(8)),
      ),
    );
  }

  Widget buttonLogin() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 48,
      child: OutlinedButton(
        onPressed: () {
          Navigator.pop(context);
          MaterialPageRoute route = MaterialPageRoute(
            builder: (_) => manageHomePage(),
          );
          Navigator.push(context, route);
        },
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.blue, width: 0),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        child: Text(
          'ເຂົ້າສູ້ລະບົບ',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget textSignUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'ຍັງບໍ່ທັນມີບັນຊີ? ',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => singUp(),
                ),
              );
            },
            child: Text(
              'ລົງທະບຽນ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16,
              ),
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.2,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: CircleAvatar(
                    backgroundColor: Colors.white10,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/icons/latte.png',
                        width: 120,
                        height: 100,
                        //fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                showText(),
                SizedBox(
                  height: 30,
                ),
                userText(),
                SizedBox(
                  height: 20,
                ),
                passwordText(),
                SizedBox(
                  height: 40,
                ),
                buttonLogin(),
                SizedBox(
                  height: 20,
                ),
                textSignUp(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
