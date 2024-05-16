import 'package:flutter/material.dart';
import 'package:sample/theme.dart';

class signIn extends StatelessWidget {
  const signIn({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Panah kembali di sisi kiri
                IconButton(
                  padding: EdgeInsets.only(left: 0),
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context)
                        .pop(); // Aksi untuk kembali ke halaman sebelumnya
                  },
                ),
                Spacer(), // Spacer untuk memisahkan ikon dari teks dan memastikan teks berada di tengah
                Text(
                  "Log In",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: salmonColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Spacer(),
                Opacity(
                  opacity: 0.0,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: null,
                  ),
                )
              ],
            ),
          ),
        ],
      );
    }

    Widget welcome() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome',
              style: primaryTextStyle.copyWith(
                  color: blackColor, fontSize: 20, fontWeight: semiBold),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Please enter your details to proceed.',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Username or Email",
              style: TextStyle(
                color: Colors.black, // Use black color for text
                fontWeight: FontWeight.bold, // Use bold font weight
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 17,
              ),
              decoration: BoxDecoration(
                color: rosyColor, // Custom rosy color
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                      color: Colors.grey, // Hint text color
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.black, // Input text color
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: beigeColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              welcome(),
              emailInput(),
            ],
          ),
        ),
      ),
    );
  }
}
