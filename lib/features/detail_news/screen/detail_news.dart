import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app_clean_architecture/features/new/domain/entity/news_model.dart';
import 'package:webview_flutter/webview_flutter.dart';
// Import for Android features.
import 'package:webview_flutter_android/webview_flutter_android.dart';
// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class DetailNewsScreen extends StatelessWidget {
  const DetailNewsScreen({super.key, required this.model});
  final NewsModel model;

  @override
  Widget build(BuildContext context) {
    WebViewController controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('${model.url}'));
    return SafeArea(
        child: Scaffold(body: WebViewWidget(controller: controller)));
    //  return Scaffold(
    //   body: Column(children: [
    //     CachedNetworkImage(
    //       imageUrl: model.urlToImage ?? '',
    //       // width: double.infinity,
    //       // height: double.infinity,
    //       fit: BoxFit.cover,
    //       placeholder: (context, url) => const Center(
    //         child: CircularProgressIndicator(),
    //       ),
    //       errorWidget: (context, url, error) => const Center(
    //         child: Text(
    //           "No Image",
    //           style: TextStyle(
    //             color: Colors.white,
    //           ),
    //         ),
    //       ),
    //     ),
    //     Container(
    //       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
    //       child: Column(
    //         children: [
    //           Text(model.title?.trim() ?? '',
    //               textAlign: TextAlign.start,
    //               style: TextStyle(
    //                 color: Colors.grey[100],
    //                 fontSize: 16,
    //                 fontWeight: FontWeight.w600,
    //                 // overflow: TextOverflow.ellipsis,
    //               )),
    //           const SizedBox(
    //             height: 5,
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               const SizedBox(),
    //               Container(
    //                 padding:
    //                     const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    //                 decoration: BoxDecoration(
    //                     color: Colors.black,
    //                     borderRadius: BorderRadius.circular(999)),
    //                 child: Text(
    //                     model.publishedAt == null
    //                         ? ''
    //                         : DateFormat('yyyy-MM-dd')
    //                             .format(model.publishedAt!),
    //                     style: const TextStyle(
    //                       color: Colors.white,
    //                       fontSize: 12,
    //                       fontWeight: FontWeight.w600,
    //                     )),
    //               )
    //             ],
    //           ),
    //           const SizedBox(
    //             height: 15,
    //           ),
    //           Text(
    //             model.description!.trim(),
    //             textAlign: TextAlign.start,
    //             style: TextStyle(
    //               color: Colors.grey[400],
    //             ),
    //           ),
    //         ],
    //       ),
    //     )
    //   ]),
    // );
  }
}
