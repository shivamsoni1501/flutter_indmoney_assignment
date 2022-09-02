import 'package:flutter/material.dart';
import 'package:flutter_indmoney_assignment/helper/constant.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: XColors.black3,
      ),
    );
  }
}
