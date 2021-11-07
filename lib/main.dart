import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(App());

class WebViewContainer extends StatefulWidget {
  final url;
  final title;
  WebViewContainer(this.url, this.title);
  @override
  createState() => _WebViewContainerState(this.url, this.title);
}

class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  var _title;
  final _key = UniqueKey();
  _WebViewContainerState(this._url, this._title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Column(
        children: [
          Expanded(
            child: WebView(
              key: _key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: _url,
            ),
          ),
        ],
      ),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WebViewContainer('https://nikinet.online/d/', 'nikinet'),
    );
  }
}



// void main() => runApp(MyApp());

/* class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: WebView(
          initialUrl: "https://nikinet.online/d/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
*/