# webview

## You can package an existing website as an app using Web View technology.

- Using open source packages
- Changing platform-specific native settings
- Using WebView widgets
- Opening Javascript permissions
- Opening the HTTP Protocol
- Controller Concepts
- Using External Packages
- Using pub.dev
- Semantic versioning
- Callback functions

```
appBar > centerTitle:true,
main() > WidgetsFlutterBinding.ensureInitialized(); // Wait until the Flutter framework is ready to execute.

WebViewController controller = WebViewController()..loadRequest(homeUrl); // The two dots indicate that we are not returning the result of executing this function, but what we are executing the function on. In this case, WebViewController
// final result = WebViewController().loadRequest(); looks like the following two lines.
// final controller = WebViewController();
// final result = controller.loadRequest();

// final controller2 = WebViewController()..loadRequest(); is equivalent to the following two lines.
// final controller2 = WebViewController();
// controller2.loadRequest();

WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUrl);

onPressed: () {
              controller.loadRequest(homeUrl);
            },

```

<img align="center" src="./capture.gif" width="300px">
