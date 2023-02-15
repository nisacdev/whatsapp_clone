import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_whatsapp_clone/common/utils/colors.dart';
import 'package:flutter_whatsapp_clone/features/auth/controller/auth_controller.dart';

class OTPScreen extends ConsumerWidget {
  static const String routeName = '/otp-screen';
  final String verificationId;
  const OTPScreen({
    Key? key,
    required this.verificationId,
  }) : super(key: key);

  void verifyOTP(BuildContext context, WidgetRef ref, String userOTP) {
    ref
        .read(authControllerProvider)
        .verifyOTP(context, verificationId, userOTP);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verifying your number'),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text('We have sent and SMS with a code'),
            SizedBox(
              width: size.width * 0.5,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                    hintText: '- - - - - -',
                    hintStyle: TextStyle(
                      fontSize: 30,
                    )),
                keyboardType: TextInputType.number,
                onChanged: (val) {
                  if (val.length == 6) {
                    verifyOTP(context, ref, val.trim());
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
