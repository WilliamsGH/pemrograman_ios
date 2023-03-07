import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TplPage extends StatefulWidget {
  const TplPage({super.key});

  @override
  State<TplPage> createState() => _TplPageState();
}

class _TplPageState extends State<TplPage> {
  WebViewController? _controller;

  @override
  void initState() {
    super.initState();
  _controller = WebViewController()
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
  ..loadRequest(Uri.parse('https://flutter.dev'));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TPL UVERS'),
      ),
      body: WebViewWidget(controller: _controller!),
    );
  }
}