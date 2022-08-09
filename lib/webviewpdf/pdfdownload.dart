import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../infrastructure/core/common_functions.dart';

class PdfDownload extends StatefulWidget {
  int pdfId;
  PdfDownload(this.pdfId, {Key? key}) : super(key: key);

  @override
  State<PdfDownload> createState() => _PdfDownloadState();
}

class _PdfDownloadState extends State<PdfDownload> {
  String finishUrl = "";
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: false,
      ),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ));
  var url;
  bool viewWeb = false;
  InAppWebViewController? webViewController;
  findUrl() async {
    url = await getBaseUrl();
  }

  String user = "";
  String pass = "";
  getData() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    user = _pref.getString("user") ?? "";
    pass = _pref.getString("pass") ?? "";
    Future.delayed(
      Duration(seconds: 1),
      () {
        setState(() {
          viewWeb = true;
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    findUrl();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.pdfId);
    return Scaffold(
      body: (!viewWeb)
          ? Center(child: CircularProgressIndicator())
          : InAppWebView(
              key: webViewKey,
              initialOptions: InAppWebViewGroupOptions(
                crossPlatform: InAppWebViewOptions(
                  javaScriptEnabled: true,
                  // debuggingEnabled: true,
                ),
              ),
              initialUrlRequest: URLRequest(
                  url: Uri.parse(
                "https://v4.amtiss.com/login_employee?login=$user&password=$pass",
              )),
              onWebViewCreated: (webCon) {
                webViewController = webCon;
              },
              androidOnPermissionRequest: (InAppWebViewController controller,
                  String origin, List<String> resources) async {
                return PermissionRequestResponse(
                    resources: resources,
                    action: PermissionRequestResponseAction.GRANT);
              },
              onDownloadStart: (controller, url) async {
                final taskId = await FlutterDownloader.enqueue(
                  url: url.toString(),
                  savedDir: (await getExternalStorageDirectory())!.path,
                  showNotification:
                      true, // show download progress in status bar (for Android)
                  openFileFromNotification:
                      true, // click on notification to open downloaded file (for Android)
                );
              },
              onLoadStop: (controller, url) async {
                setState(() {
                  if (url.toString().contains(
                      "https://v4.amtiss.com/web#action=contacts.action_contacts")) {
                    webViewController!.loadUrl(
                      urlRequest: URLRequest(
                        url: Uri.parse(
                            "https://v4.amtiss.com/web#id=${widget.pdfId}&menu_id=110&action=522&model=survey.user_input&view_type=form"),
                      ),
                    );
                  }
                });
              },
            ),
    );
  }
}
