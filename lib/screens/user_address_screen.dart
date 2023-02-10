import 'package:be_my_courier/utils/app_assets.dart';
import 'package:be_my_courier/widgets/app_text_field.dart';
import 'package:be_my_courier/widgets/rich_text.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // =======================================================================
      // App bar
      // =======================================================================
      appBar: AppBar(
        title: const AppRichText(
          leadingText: 'Welcome to ',
          trailingText: 'BemyCourier',
          leadingTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          trailingTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.blue,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Align(
            alignment: Alignment.bottomCenter,
            child: Image(
              image: AssetImage(AppAssets.bottomLeftDesign),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Street Address'),
                  const SizedBox(
                    height: 10,
                  ),
                  const AppTextField(
                      hinttext: 'Street Address',
                      isPasword: false,
                      keyboardType: TextInputType.text),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: AppTextField(
                            hinttext: 'City',
                            isPasword: false,
                            keyboardType: TextInputType.text),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Expanded(
                    child: AppTextField(
                        hinttext: 'State/Province',
                        isPasword: false,
                        keyboardType: TextInputType.text),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
