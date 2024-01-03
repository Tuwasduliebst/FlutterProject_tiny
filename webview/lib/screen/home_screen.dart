import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://nomadcoders.co/');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUrl);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text(
          'Nomad Coders',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              controller.loadRequest(homeUrl);
            },
            icon: const Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
