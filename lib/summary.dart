import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learning/widgets/common_widget.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Summary",
          style: TextStyle(
            color: Colors.brown,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.brown[50],
        elevation: 0,
        toolbarHeight: 100,
      ),
      body: content(),
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            child: Image.asset('assets/image.png'),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                "Order :",
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Latte",
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "x1",
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "---------------------------------------------",
                style: TextStyle(color: Colors.brown),
              ),
              SizedBox(
                height: 20,
              ),
              summaryDisplay("Total", "XXX.XX"),
              SizedBox(
                height: 20,
              ),
              summaryDisplay("Tax", "XX.XX"),
              SizedBox(
                height: 20,
              ),
              summaryDisplay("Discount", "X.XX"),
              SizedBox(
                height: 100,
              ),
              submitButton("Pay")
            ],
          )
        ],
      ),
    );
  }
}
