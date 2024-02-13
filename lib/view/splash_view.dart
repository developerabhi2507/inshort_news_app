// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../res/assets/assets.dart';
// import '../view_models/services/splash_services.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   SplashServices splashServices = SplashServices();

//   @override
//   void initState() {
//     super.initState();
//     splashServices.isLogin();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // backgroundColor: Colors.white,
//         body: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//       child: Center(
//         child: Container(
//           decoration: const BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage(
//             AssetConstants.splashBg,
//           ))),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: Get.height - (Get.height - 100),
//               ),
//               const CircleAvatar(
//                   maxRadius: 60, minRadius: 30, child: Placeholder()),
//               Text(
//                 'app_name'.tr,
//                 style: Theme.of(context)
//                     .textTheme
//                     .titleLarge!
//                     .copyWith(fontSize: 40),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Image.asset(AssetConstants.splash1),
//                       SizedBox(
//                         height: Get.height - (Get.height - 10),
//                       ),
//                       Text(
//                         'splash1'.tr,
//                         style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                             fontSize: 16, fontWeight: FontWeight.w400),
//                         maxLines: 2,
//                         textAlign: TextAlign.center,
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     width: Get.width - (Get.width - 20),
//                   ),
//                   Column(
//                     children: [
//                       Image.asset(AssetConstants.splash2),
//                       SizedBox(
//                         height: Get.height - (Get.height - 10),
//                       ),
//                       Text('splash2'.tr)
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Image.asset(AssetConstants.splash3),
//                       SizedBox(
//                         height: Get.height - (Get.height - 10),
//                       ),
//                       Text('splash3'.tr)
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: Get.height - (Get.height - 20),
//               )
//               // Image.asset(
//               //   AssetConstants.splashBg,
//               //   width: Get.width - (Get.width - 250),
//               //   height: Get.height - (Get.height - 250),
//               // ),
//               // Row(
//               //   mainAxisAlignment: MainAxisAlignment.center,
//               //   crossAxisAlignment: CrossAxisAlignment.center,
//               //   children: [
//               //     Image.asset(
//               //       AssetConstants.appIcon,
//               //       width: Get.width - (Get.width - 70),
//               //       height: Get.height - (Get.height - 70),
//               //     ),
//               //     Padding(
//               //       padding: const EdgeInsets.only(top: 10),
//               //       child: Text('app_name'.tr,
//               //           style: Theme.of(context).textTheme.titleLarge),
//               //     ),
//               //   ],
//               // ),
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }
