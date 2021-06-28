import 'dart:io';
//ignore: avoid_web_libraries_in_flutter
import 'dart:html' as WebHtml;
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Detail();
  }
}

class DetailArguments {
  final String title;
  final String url;
  DetailArguments(this.title, this.url);
}

class _Detail extends State<Detail> {
  final _iFrameElement = WebHtml.IFrameElement();
  Widget _iframeWidget = HtmlElementView(
    viewType: 'iframeElement',
  );

  @override
  void initState() {
    super.initState();
    if (!kIsWeb && Platform.isAndroid)
      WebView.platform = SurfaceAndroidWebView();

    if (kIsWeb) {
      // ignore: undefined_prefixed_name
      ui.platformViewRegistry.registerViewFactory(
        'iframeElement',
        (int viewId) => _iFrameElement,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as DetailArguments;

    if (kIsWeb) {
      _iFrameElement.src = args.url;
      _iFrameElement.style.border = 'none';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: kIsWeb
          ? _iframeWidget
          : WebView(
              initialUrl: args.url,
            ),
    );
  }
}
