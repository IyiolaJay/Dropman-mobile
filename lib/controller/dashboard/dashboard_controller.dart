import 'package:flutter/material.dart';

class DashboardController extends StatelessWidget {
  const DashboardController({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: const [
              Text("👋  Hi, Iyiola"),
              Spacer(),
              CircleAvatar(
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 220,
          child: Stack(
            children: [
             
     
              Container(
                height: 180,
                 width: double.infinity,
                color: Colors.amber,
              ),
              Positioned(
                right: 20,
                left: 20,
                bottom:30,
                child: Container(
                  width: double.infinity,
                  height: 65,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
