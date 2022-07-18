import 'package:flutter/material.dart';
import 'package:user_app_ui/widgets/custem_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(199, 72, 92, 156),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4.5,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/yaqeen-logo.png'),
                    fit: BoxFit.contain),
                color: Color.fromARGB(255, 242, 238, 247),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 17,
            color: Color.fromARGB(223, 251, 250, 252),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Recommended videos",
                      style: TextStyle(fontSize: 18),
                    ),
                    CustemButton(
                      textButton: ">",
                      onPressed: () {},
                      colors: Color.fromARGB(200, 40, 69, 163),
                      width: 0.1,
                    )
                  ]),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 4.2,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(223, 251, 250, 252),
            child: PageView.builder(
                controller: PageController(viewportFraction: 0.8),
                itemCount: 4,
                itemBuilder: (_, i) {
                  return GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      height: MediaQuery.of(context).size.height / 4.2,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: i.isEven
                              ? DecorationImage(
                                  image: AssetImage('asset/R (2).jpg'),
                                  fit: BoxFit.fill)
                              : DecorationImage(
                                  image: AssetImage('asset/OIP (2).jpg'),
                                  fit: BoxFit.fill)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Row(children: [
                            for (int i = 0; i < 2; i++)
                              Container(
                                width: MediaQuery.of(context).size.width / 7.5,
                                height: MediaQuery.of(context).size.height / 15,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: i.isEven
                                          ? DecorationImage(
                                              image:
                                                  AssetImage('asset/OIP.jpg'),
                                              fit: BoxFit.fill)
                                          : DecorationImage(
                                              image: AssetImage(
                                                  'asset/OIP (1).jpg'),
                                              fit: BoxFit.fill)),
                                ),
                              ),
                          ]),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            color: Color.fromARGB(223, 251, 250, 252),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended People",
                      style: TextStyle(fontSize: 18),
                    ),
                    CustemButton(
                      textButton: ">",
                      onPressed: () {},
                      colors: Color.fromARGB(200, 40, 69, 163),
                      width: 0.1,
                    )
                  ]),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (_, i) {
                    return Container(
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 10,
                        margin: const EdgeInsets.only(
                            left: 25, right: 25, bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(223, 251, 250, 252),
                        ),
                        child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: i.isEven
                                    ? AssetImage('asset/OIP.jpg')
                                    : AssetImage('asset/OIP (1).jpg'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Status",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 20, 20, 20),
                                        fontSize: 12,
                                        decoration: TextDecoration.none),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    width: 170,
                                    child: Text(
                                      "Text",
                                      style: TextStyle(
                                          color: Color(0xFF3b3f42),
                                          fontSize: 18,
                                          decoration: TextDecoration.none),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                width: 50,
                                height: MediaQuery.of(context).size.height / 16,
                                child: Text(
                                  "5:50",
                                  style: TextStyle(
                                      fontSize: 10,
                                      decoration: TextDecoration.none,
                                      color: Color.fromARGB(255, 23, 28, 31)),
                                ),
                              ),
                            ])));
                  }))
        ],
      ),
    );
  }
}
