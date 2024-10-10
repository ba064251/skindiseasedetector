import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:skindiseasedetector/constants/colors.dart';
import 'package:skindiseasedetector/constants/size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 14),
          width: SizeConfig.screenWidth * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                width: SizeConfig.screenWidth * 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    IconButton(onPressed: (){}, icon: const Icon(Iconsax.category)),


                    Row(
                      children: [

                        IconButton(onPressed: (){}, icon: const Icon(Iconsax.search_normal)),
                        SizedBox(
                          width: SizeConfig.blockSizeVertical * 0.02,
                        ),
                        IconButton(onPressed: (){}, icon: const Icon(Iconsax.message)),

                      ],
                    )
                  ],
                ),
              ),


              Container(
                width: SizeConfig.screenWidth * 1,
                height: SizeConfig.screenHeight * 0.45,
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.only(left: 20,bottom: 40),
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(14)
                ),
                child: SizedBox(
                    width: SizeConfig.screenWidth * 0.4,
                    child: Text('Scan Your Face and Get Solutions',style: TextStyle(fontSize: SizeConfig.textMultiplier * 2, fontWeight: FontWeight.w600,color: secondaryColor),)),
              ),

              SizedBox(
                height: SizeConfig.blockSizeVertical * 0.6,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Top Selling',style: TextStyle(fontSize: SizeConfig.textMultiplier * 2, fontWeight: FontWeight.w600,color: primaryColor),),
                Text('see more',style: TextStyle(fontSize: SizeConfig.textMultiplier * 1.5, fontWeight: FontWeight.w400,color: primaryColor),),
                ],
              ),

              SizedBox(
                height: SizeConfig.blockSizeVertical * 0.6,
              ),


              


            ],
          ),
        ),
      ),
    );
  }
}
