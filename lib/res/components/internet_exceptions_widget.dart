import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/res/color/color.dart';
import 'package:getxmvvm/res/components/round_button.dart';

class InternetExceptionsWidget extends StatefulWidget {
  const InternetExceptionsWidget({super.key});

  @override
  State<InternetExceptionsWidget> createState() =>
      _InternetExceptionsWidgetState();
}

class _InternetExceptionsWidgetState extends State<InternetExceptionsWidget> {
  void _retry() {
    print("Retry pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Icon(
            Icons.cloud_off,
            color: AppColor.redColor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                'internet_exception'.tr,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: _retry,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Retry',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),

        const    SizedBox(
            height: 10,
          ),
          Container(
            child: const  RoundButton(
              text: Text(
                'submit',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600,color: Colors.white),
              ),
              height: 50,
              width: 100,
              buttonColor: AppColor.primaryColor,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
