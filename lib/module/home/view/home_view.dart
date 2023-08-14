// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_landing_page/core.dart';

import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;
    // Ctrl+Alt+Shift+1
    // Ctrl+S
    // Alt+Shift+ENTER
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              // con
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.developer_board,
                      size: 24.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      "SEO Solutions",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    MenuWidget(text: "About"),
                    SizedBox(width: 20.0),
                    MenuWidget(text: "Tutor"),
                    SizedBox(width: 20.0),
                    MenuWidget(text: "Program"),
                    SizedBox(width: 20.0),
                    MenuWidget(text: "Location"),
                    SizedBox(width: 20.0),
                    MenuWidget(text: "Our Agency"),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              // Alt+Shift+C
              // Alt+P
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discover new data analytics tools",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              Text(
                                "Data science for SEO",
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        CircleAvatar(
                          radius: 90.0,
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/p3y5t4s/rocket-icon.png",
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    // row => bikin Row()
                    // col => bikin Column()
                    // Alt+E => wrap with Expanded
                    // Alt+C => wrap with Container
                    // Alt+Shift+Enter => delete "const"
                    Container(
                      // clipAnti
                      clipBehavior: Clip.antiAlias,
                      // decortion
                      decoration: BoxDecoration(
                        // cgrey300
                        color: Colors.grey[300],
                        // radius
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            const DetailWidget(
                              text1: "20-22",
                              text2: "September",
                              text3: "3 days of intense practice",
                            ),
                            VerticalDivider(
                              color: Colors.grey[400],
                              thickness: 2.0,
                              indent: 16.0,
                              endIndent: 16.0,
                            ),
                            const DetailWidget(
                              text1: "24",
                              text2: "Hours",
                              text3: "10.00 AM - 6:00 PM",
                            ),
                            VerticalDivider(
                              color: Colors.grey[400],
                              thickness: 2.0,
                              indent: 16.0,
                              endIndent: 16.0,
                            ),
                            const DetailWidget(
                              text1: "20",
                              text2: "Seats",
                              text3: "Limited number of seats",
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.blue[300],
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Price",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "\$245",
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue[900],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 12.0,
                                      ),
                                      const Text(
                                        "Best offer",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}

class DetailWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  const DetailWidget({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              text2,
              style: const TextStyle(
                fontSize: 12.0,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              text3,
              style: const TextStyle(
                fontSize: 11.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  final String text;
  const MenuWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
