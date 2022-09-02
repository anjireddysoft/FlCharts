import 'package:flutter/material.dart';
import 'package:flutter_charts/custom_button.dart';
import 'package:flutter_charts/text_widgets/custom_test.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  DashBoardState createState() => DashBoardState();
}

class DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DashBoard"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            onTap: () {},
            buttonText: "First Button",
            buttonColor: Colors.blue,
            borderRadius: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  onTap: () {},
                  buttonText: "Second Button",
                  borderColor: Colors.black,
                ),
              ),
              Expanded(
                child: CustomButton(
                  onTap: () {},
                  borderRadius: 15,
                  buttonText: "third Button",
                  borderColor: Colors.black,
                  buttonColor: Colors.orange,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            onTap: () {},
            buttonText: "Last Button",
            buttonColor: Colors.orange.shade200,
            borderRadius: 30,
            textColor: Colors.green,
          ),
         const CustomText(
              fontWeight: FontWeight.bold,
              textColor: Colors.green,
              text: "Custom Button",
              fontSize: 50),
          const CustomText(
              fontWeight: FontWeight.normal,
              textColor: Colors.red,
              text: "Custom Button",
              fontSize: 30),
          const CustomText(
              fontWeight: FontWeight.w600,
              textColor: Colors.blue,
              text: "Custom Button",
              fontSize: 20)
        ],
      ),
    );
  }
}
