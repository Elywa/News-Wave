import 'package:flutter/material.dart';
import 'package:news_app2/models/article_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewConatiner extends StatefulWidget {
  final ArticleModel model;
  const WebViewConatiner({super.key, required this.model});

  @override
  State<WebViewConatiner> createState() => _WebViewConatinerState();
}

class _WebViewConatinerState extends State<WebViewConatiner> {
     WebViewController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(widget.model.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: _controller!),
    );
  }
}
