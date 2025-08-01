// import 'dart:typed_data';
// import 'dart:ui' as ui;
//
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:image_gallery_saver/image_gallery_saver.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Save image to gallery',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final GlobalKey _globalKey = GlobalKey();
//
//   @override
//   void initState() {
//     super.initState();
//     PermissionUtil.requestAll(); // Make sure you implement this or handle permissions.
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Save image to gallery"),
//         ),
//         body: Center(
//           child: Column(
//             children: <Widget>[
//               const SizedBox(height: 15),
//               RepaintBoundary(
//                 key: _globalKey,
//                 child: Container(
//                   alignment: Alignment.center,
//                   width: 300,
//                   height: 300,
//                   color: Colors.blue,
//                   child: const Text(
//                     "This is a blue box",
//                     style: TextStyle(color: Colors.white, fontSize: 24),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 15),
//               SizedBox(
//                 width: 300,
//                 height: 44,
//                 child: ElevatedButton(
//                   onPressed: _saveLocalImage,
//                   child: const Text("Save Local Image"),
//                 ),
//               ),
//               const SizedBox(height: 15),
//               SizedBox(
//                 width: 300,
//                 height: 44,
//                 child: ElevatedButton(
//                   onPressed: _saveNetworkImage,
//                   child: const Text("Save Network Image"),
//                 ),
//               ),
//               const SizedBox(height: 15),
//               SizedBox(
//                 width: 300,
//                 height: 44,
//                 child: ElevatedButton(
//                   onPressed: _saveNetworkGifFile,
//                   child: const Text("Save Network Gif Image"),
//                 ),
//               ),
//               const SizedBox(height: 15),
//               SizedBox(
//                 width: 300,
//                 height: 44,
//                 child: ElevatedButton(
//                   onPressed: _saveNetworkVideoFile,
//                   child: const Text("Save Network Video"),
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
//
//   Future<void> _saveLocalImage() async {
//     try {
//       RenderRepaintBoundary boundary =
//       _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
//       ui.Image image = await boundary.toImage(pixelRatio: ui.window.devicePixelRatio);
//       ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
//       if (byteData != null) {
//         final Uint8List pngBytes = byteData.buffer.asUint8List();
//         final result = await ImageGallerySaver.saveImage(pngBytes);
//         print(result);
//         Utils.toast(result.toString());
//       } else {
//         Utils.toast("Failed to capture image bytes.");
//       }
//     } catch (e) {
//       Utils.toast("Error saving local image: $e");
//     }
//   }
//
//   Future<void> _saveNetworkImage() async {
//     try {
//       var response = await Dio().get(
//           "https://ss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=a62e824376d98d1069d40a31113eb807/838ba61ea8d3fd1fc9c7b6853a4e251f94ca5f46.jpg",
//           options: Options(responseType: ResponseType.bytes));
//       final result = await ImageGallerySaver.saveImage(
//           Uint8List.fromList(response.data),
//           quality: 60,
//           name: "network_image_${DateTime.now().millisecondsSinceEpoch}");
//       print(result);
//       Utils.toast("Image saved: $result");
//     } catch (e) {
//       Utils.toast("Error saving network image: $e");
//     }
//   }
//
//   Future<void> _saveNetworkGifFile() async {
//     try {
//       var appDocDir = await getTemporaryDirectory();
//       String savePath = '${appDocDir.path}/temp.gif';
//       String fileUrl =
//           "https://hyjdoc.oss-cn-beijing.aliyuncs.com/hyj-doc-flutter-demo-run.gif";
//       await Dio().download(fileUrl, savePath);
//       final result =
//       await ImageGallerySaver.saveFile(savePath, isReturnPathOfIOS: true);
//       print(result);
//       Utils.toast("GIF saved: $result");
//     } catch (e) {
//       Utils.toast("Error saving GIF: $e");
//     }
//   }
//
//   Future<void> _saveNetworkVideoFile() async {
//     try {
//       var appDocDir = await getTemporaryDirectory();
//       String savePath = '${appDocDir.path}/temp.mp4';
//       String fileUrl =
//           "https://s3.cn-north-1.amazonaws.com.cn/mtab.kezaihui.com/video/ForBiggerBlazes.mp4";
//       await Dio().download(fileUrl, savePath, onReceiveProgress: (count, total) {
//         print((count / total * 100).toStringAsFixed(0) + "%");
//       });
//       final result = await ImageGallerySaver.saveFile(savePath);
//       print(result);
//       Utils.toast("Video saved: $result");
//     } catch (e) {
//       Utils.toast("Error saving video: $e");
//     }
//   }
// }
//
// /// Simple Utils class to show Toast messages using fluttertoast
// class Utils {
//   static void toast(String message) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//       fontSize: 16,
//       backgroundColor: Colors.black54,
//       textColor: Colors.white,
//     );
//   }
// }
//
// /// Dummy PermissionUtil for requesting permissions - you need to implement this
// class PermissionUtil {
//   static Future<void> requestAll() async {
//     // Example: Use permission_handler package here to request storage permission
//     // For example:
//     // var status = await Permission.storage.status;
//     // if (!status.isGranted) await Permission.storage.request();
//
//     // This is just a placeholder:
//     print("Requesting storage permissions...");
//   }
// }
