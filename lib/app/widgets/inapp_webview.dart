part of '../index.dart';

class InappWebview extends StatefulWidget {
  const InappWebview({super.key});

  @override
  State<InappWebview> createState() => _InappWebviewState();
}

class _InappWebviewState extends State<InappWebview> {
  late InAppWebViewController _webViewController;
  late PullToRefreshController _pullToRefreshController;

  @override
  void initState() {
    super.initState();
    _pullToRefreshController = PullToRefreshController(
      onRefresh: () async {
        // Implement pull to refresh behavior
        _webViewController.reload();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 2)),  // Check if platform is initialized
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          return Scaffold(
            appBar: AppBar(title: Text('WebView Example')),
            body: InAppWebView(
              initialUrlRequest: URLRequest(url: WebUri("https://www.example.com")),
              pullToRefreshController: _pullToRefreshController,
              onWebViewCreated: (controller) {
                _webViewController = controller;
              },
              onLoadStart: (controller, url) {
                print("Page started loading: $url");
              },
              onLoadStop: (controller, url) async {
                print("Page finished loading: $url");
                _pullToRefreshController.endRefreshing();
              },
            ),
          );
        }
      },
    );
  }
}
