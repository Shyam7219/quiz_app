import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    const Color bgColor = Colors.blueAccent;
    const Color bgColor3 = Color.fromARGB(255, 121, 167, 245);
    return  Scaffold(
      backgroundColor: bgColor3,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 80,left: 15,right: 15),
          child: ListView(
            children: [
              Container(
              
                height: 120,
                width: 40,
                decoration: BoxDecoration(
                  color: bgColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.24),
                      blurRadius: 20.0,
                      offset: Offset(0.0, 10.0),
                      spreadRadius: -10,
                      blurStyle: BlurStyle.outer
                    )
                  ]
                ),
                child: Image.asset('assets/dash.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Flutter ",
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontSize: 21,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                      ),
                      for (var i = 0; i < "Riddles!!!".length; i++) ...[
                        TextSpan(
                          text: "Riddles!!!"[i],
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontSize: 21 + i.toDouble(),
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}