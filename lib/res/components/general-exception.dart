import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/res/color/color.dart';

class GeneralExceptionWidgetState extends StatefulWidget {
  const GeneralExceptionWidgetState({super.key});

  @override
  State<GeneralExceptionWidgetState> createState() =>
      _GeneralExceptionWidgetStateState();
}

class _GeneralExceptionWidgetStateState
    extends State<GeneralExceptionWidgetState> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
         const   SizedBox(
            height: 20,
          ),
          const  Icon(Icons.cloud_off, color: AppColor.redColor, size: 50),
          Padding(
            padding: const  EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                'general_exception'.tr,
                textAlign: TextAlign.center,
              ),
            ),
          ),
         const   SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
              height: 44,
              width: 160,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(50),
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
          )
        ],
      ),
    );
  }
}
