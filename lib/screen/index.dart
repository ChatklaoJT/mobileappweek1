import 'package:flutter/material.dart';

class index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //dynamic screen ดึงขนาดหน้าจอมากำหนดใช้
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          // ใช้ / ไม่ใช่ \
          children: [
            Column(
              children: [
                Image.asset(
                  "asset/image/LOGO-KMUTNB--300x300.png",
                  //ขนาดภาพ 0.4 ของหน้าจอ = ใหญ่ 40%
                  width: screenSize.width * 0.4,
                ),
                SizedBox(height: 13),
                Text("Welcome to KMUTNB",
                    style: TextStyle(color: Colors.orange, fontSize: 30)),

                Image.asset(
                  "asset/image/undraw_mobile_development_8gyo.png",
                  //ขนาดภาพ 0.4 ของหน้าจอ = ใหญ่ 40%
                  width: screenSize.width * 0.98,
                ),

                //button
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                      print("LOGIN");
                    },
                    child: Text("LOGIN"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                      shape: StadiumBorder(),
                    )),

                SizedBox(height: 10),

                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'register');
                      print("SIGN UP");
                    },
                    child: Text("SIGN UP"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      padding: EdgeInsets.fromLTRB(114, 15, 114, 15),
                      shape: StadiumBorder(),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
