import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/size_config.dart';

class FaceScanningContainer extends StatelessWidget {
  const FaceScanningContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 1,
      height: SizeConfig.screenHeight * 0.3,
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.only(left: 20,bottom: 40),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(14)
      ),
      child: SizedBox(
          width: SizeConfig.screenWidth * 0.4,
          child: Text('Scan Your Face and Get Solutions',style: TextStyle(fontSize: SizeConfig.textMultiplier * 2, fontWeight: FontWeight.w600,color: secondaryColor),)),
    );
  }
}
