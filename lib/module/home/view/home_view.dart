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
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                    )
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
