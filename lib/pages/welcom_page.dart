// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_app_ui/pages/home_page.dart';
import 'package:user_app_ui/widgets/custem_button.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Spacer(flex: 4),
            Text(
              "YAQEEN",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationThickness: 0.2,
                  letterSpacing: 5,
                  fontWeight: FontWeight.bold,
                  shadows: const [
                    Shadow(
                      blurRadius: 50,
                      color: Colors.black,
                    )
                  ],
                  fontSize: MediaQuery.of(context).size.width / 7.2,
                  color: const Color.fromARGB(255, 255, 253, 253)),
            ),
            Text(
              "Instityte For Islamic Research ",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationThickness: 0.2,
                  letterSpacing: 3,
                  fontWeight: FontWeight.bold,
                  shadows: const [
                    Shadow(
                      blurRadius: 40,
                      color: Colors.black,
                    )
                  ],
                  fontSize: MediaQuery.of(context).size.width / 25,
                  color: const Color.fromARGB(172, 252, 252, 252)),
            ),
            Spacer(flex: 2),
            CustemButton(
              colors: Color.fromARGB(88, 10, 10, 10),
              onPressed: () {
                Get.off(() => HomePage());
              },
              textButton: 'Join Now',
            ),
            Spacer(
              flex: 1,
            )
          ]),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.3), BlendMode.dstOut),
                fit: BoxFit.fill,
                image: const AssetImage(
                    'asset/0def1c3a1f5dfe62f60e83fe09b44ad6.jpg'))),
      ),
    );
  }
}
