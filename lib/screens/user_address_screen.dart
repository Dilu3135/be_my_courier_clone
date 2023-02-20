import 'package:be_my_courier/core/utils/app_assets.dart';
import 'package:be_my_courier/core/utils/app_colors.dart';
import 'package:be_my_courier/core/utils/app_text_styles.dart';
import 'package:be_my_courier/widgets/app_gradient_button.dart';
import 'package:be_my_courier/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import '../controllers/authentication_controller.dart';
import '../core/arguments/signup_arguments.dart';
import '../widgets/app_bar.dart';
import 'home_screen.dart';

class UserAddressScreen extends StatefulWidget {
  const UserAddressScreen({super.key});

  static const String route = '/user-address';

  @override
  State<UserAddressScreen> createState() => _UserAddressScreenState();
}

class _UserAddressScreenState extends State<UserAddressScreen> {
  late final TextEditingController addressController;
  late final TextEditingController cityController;
  late final TextEditingController stateController;
  late final TextEditingController zipController;
  late final TextEditingController countryController;

  @override
  void initState() {
    addressController = TextEditingController();
    cityController = TextEditingController();
    stateController = TextEditingController();
    zipController = TextEditingController();
    countryController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    addressController.dispose();
    stateController.dispose();
    zipController.dispose();
    countryController.dispose();
    cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // =======================================================================
      // App bar
      // =======================================================================
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AuthenticationAppBar(),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Street Address',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontFamily: 'Poppins-Medium.ttf'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppTextField(
                      hinttext: 'Street Address',
                      isPasword: false,
                      textEditingController: addressController,
                      keyboardType: TextInputType.text),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: AppTextField(
                            hinttext: 'City',
                            isPasword: false,
                            textEditingController: cityController,
                            keyboardType: TextInputType.text),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: AppTextField(
                            hinttext: 'State/Province',
                            isPasword: false,
                            textEditingController: stateController,
                            keyboardType: TextInputType.text),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: AppTextField(
                            hinttext: 'Zip Code',
                            isPasword: false,
                            textEditingController: zipController,
                            keyboardType: TextInputType.text),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: AppTextField(
                            hinttext: 'Country',
                            isPasword: false,
                            textEditingController: countryController,
                            keyboardType: TextInputType.text),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Phone Number',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontFamily: 'Poppins-Medium.ttf'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AppTextField(
                      hinttext: 'Phone Number',
                      isPasword: false,
                      keyboardType: TextInputType.text),
                  const SizedBox(
                    height: 30,
                  ),
                  AppGradientButton(
                    onPressed: signupUser,
                    gradient: AppColors.appGradient,
                    leadingTextStyle: AppTextStyles.kAppButton,
                    leadingtext: 'Sign Up',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void signupUser() async {
    final SignUpArguments data =
        ModalRoute.of(context)!.settings.arguments as SignUpArguments;
    AuthController authController = AuthController();
    bool isSignup = await authController.createUser(
      email: data.email,
      password: data.password,
      name: data.name,
      address: addressController.text,
      state: stateController.text,
      country: countryController.text,
      zip: zipController.text,
      city: cityController.text,
    );

    if (isSignup && mounted) {
      Navigator.pushNamed(
        context,
        HomeScreen.route,
      );
    }
  }
}
