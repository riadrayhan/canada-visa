import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Jobs extends StatefulWidget {
  const Jobs({super.key});

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {

  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (request) async {
            final urlString = request.url.toString();
            final uri = Uri.parse(urlString);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.canada.ca/en/services/jobs.html'));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await _controller.canGoBack()) {
          _controller.goBack();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Canada Jobs",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFEE4248),
        ),
        body: WebViewWidget(
          controller: _controller,
        ),
      ),
    );
  }
}
//===== jobs end============//

class Citizen extends StatefulWidget {
  const Citizen({super.key});

  @override
  State<Citizen> createState() => _CitizenState();
}

class _CitizenState extends State<Citizen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (request) async {
            final urlString = request.url.toString();
            final uri = Uri.parse(urlString);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.canada.ca/en/services/immigration-citizenship.html'));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await _controller.canGoBack()) {
          _controller.goBack();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Immigration and citizenship",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFEE4248),
        ),
        body: WebViewWidget(
          controller: _controller,
        ),
      ),
    );
  }
}
//============citizen ship end==============//

class Travel extends StatefulWidget {
  const Travel({super.key});

  @override
  State<Travel> createState() => _TravelState();
}

class _TravelState extends State<Travel> {

  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (request) async {
            final urlString = request.url.toString();
            final uri = Uri.parse(urlString);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://travel.gc.ca/'));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await _controller.canGoBack()) {
          _controller.goBack();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Travel and Tourism",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFEE4248),
        ),
        body: WebViewWidget(
          controller: _controller,
        ),
      ),
    );
  }
}

//===========travel end===========//

class Health extends StatefulWidget {
  const Health({super.key});

  @override
  State<Health> createState() => _HealthState();
}

class _HealthState extends State<Health> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (request) async {
            final urlString = request.url.toString();
            final uri = Uri.parse(urlString);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.canada.ca/en/services/health.html'));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await _controller.canGoBack()) {
          _controller.goBack();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Health",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFEE4248),
        ),
        body: WebViewWidget(
          controller: _controller,
        ),
      ),
    );
  }
}
//============health end=================//

class Justice extends StatefulWidget {
  const Justice({super.key});

  @override
  State<Justice> createState() => _JusticeState();
}

class _JusticeState extends State<Justice> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (request) async {
            final urlString = request.url.toString();
            final uri = Uri.parse(urlString);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.canada.ca/en/services/policing.html'));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await _controller.canGoBack()) {
          _controller.goBack();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Policing, justice and emergencies",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFEE4248),
        ),
        body: WebViewWidget(
          controller: _controller,
        ),
      ),
    );
  }
}
//=========policing justice end===============//

class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (request) async {
            final urlString = request.url.toString();
            final uri = Uri.parse(urlString);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.canada.ca/en/services/defence.html'));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await _controller.canGoBack()) {
          _controller.goBack();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "National security and defence",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFEE4248),
        ),
        body: WebViewWidget(
          controller: _controller,
        ),
      ),
    );
  }
}