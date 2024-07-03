import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Positioned(
          //   top: 0, // ini akan menempatkan gambar di bagian atas layar
          //   left: 0, // ini akan menempatkan gambar di sebelah kiri layar
          //   right: 0,
          //   child: SvgPicture.string(svgString, fit: BoxFit.fill),
          // ),
          ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo/amanah.png',
                    height: MediaQuery.of(context).size.width / 5,
                  ),
                  const Padding(padding: EdgeInsets.all(7.0)),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'MBtech',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: const Color.fromARGB(255, 239, 239, 239),
                                fontSize: 32,
                                height: 0.8,
                                fontFamily: 'Montserrat',
                                fontWeight:
                                    FontWeight.bold, // MBtech menggunakan bold
                              ),
                        ),
                        TextSpan(
                          text: '\nMerchant',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: const Color.fromARGB(255, 239, 239, 239),
                                fontSize: 32,
                                height: 0.8,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight
                                    .normal, // Merchant menggunakan regular
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.width / 2.9),
              Padding(
                padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0), // Menentukan padding kiri dan kanan
                child: Text(
                  // 'Login Merchant'.toUpperCase(),
                  'Login Merchant',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFE27D)),
                ),
              ),
              const SizedBox(height: 4),
              Padding(
                padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0), // Menentukan padding kiri dan kanan
                child: Text(
                  'Enter your phone number to continue\nwe will send you OTP to verify',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: const Color(0xffffffff),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                      ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                // child: IntlPhoneField(
                //   keyboardType: TextInputType.phone,
                //   controller: noHp,
                //   decoration: const InputDecoration(
                //     labelText: 'Phone Number',
                //     border: OutlineInputBorder(
                //       borderSide: BorderSide(color: Colors.white),
                //     ),
                //   ),
                //   initialCountryCode: 'ID',
                //   onChanged: (phone) {
                //     print(phone.completeNumber.toString());
                //     if (!phone.completeNumber.startsWith('+628')) {
                //       // Set the error message and clear the text
                //       setState(() {
                //         errorMessage =
                //             'Number must start with 8 Example 821xxx';
                //         noHp.clear();
                //       });
                //     } else {
                //       // Clear the error message
                //       // setState(() {
                //       //   errorMessage = '';
                //       // });
                //     }
                //   },
                // ),
              ),
              // if (errorMessage.isNotEmpty)
              //   Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 20.0),
              //     child: Text(
              //       errorMessage,
              //       style: TextStyle(color: Colors.red),
              //     ),
              //   ),
              const SizedBox(height: 100),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xffCEB155),
                  borderRadius: BorderRadius.circular(5),
                ),
                // child: ButtonTheme(
                // height: 50,
                // child: TextButton(
                //   onPressed: () async {
                //     prefs.remove('noHpBefore');
                //     prefs.remove('user_id');
                //     prefs.remove('otp');
                //     prefs.remove('expired');
                //     await prefs.write('noHpBefore', noHp.text);
                //     controller.progressDaftar = true;
                //     controller.progressDaftar
                //         ? SmartDialog.showLoading(
                //             animationType: SmartAnimationType.scale,
                //             builder: (_) => const CustomLoading(),
                //           )
                //         : controller.progressDaftar = false;
                //     print('b');
                //     await Future.delayed(const Duration(seconds: 2));
                //     SmartDialog.dismiss();
                //     await controller.checkNoHp();
                //   },
                //   child: Center(
                //     child: Text(
                //       "Send OTP Via Whatsapp".toUpperCase(),
                //       style: const TextStyle(
                //         color: Color(0xff252525),
                //         fontSize: 16,
                //         fontWeight: FontWeight.w500,
                //       ),
                //     ),
                //   ),
                // ),
                // ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
