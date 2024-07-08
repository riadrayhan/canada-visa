import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class Employment extends StatefulWidget {
  const Employment({super.key});

  @override
  State<Employment> createState() => _EmploymentState();
}

class _EmploymentState extends State<Employment> {

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
      ..loadRequest(Uri.parse('https://www.canada.ca/en/services/benefits/ei.html'));
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
            "Employment Insurance and leave",
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
//===================//

class CPP extends StatefulWidget {
  const CPP({super.key});

  @override
  State<CPP> createState() => _CPPState();
}

class _CPPState extends State<CPP> {


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
      ..loadRequest(Uri.parse('https://www.canada.ca/en/services/benefits/publicpensions.html'));
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
            "Public pensions",
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

//========start passport================//

class Passport extends StatefulWidget {
  const Passport({super.key});

  @override
  State<Passport> createState() => _PassportState();
}

class _PassportState extends State<Passport> {
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
      ..loadRequest(Uri.parse('https://www.canada.ca/en/immigration-refugees-citizenship/services/canadian-passports.html'));
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
            "Get Passport",
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
//==========end passport=============//
//==========start work permit=============//

class WorkPermit extends StatefulWidget {
  const WorkPermit({super.key});

  @override
  State<WorkPermit> createState() => _WorkPermitState();
}

class _WorkPermitState extends State<WorkPermit> {
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
      ..loadRequest(Uri.parse('https://www.canada.ca/en/immigration-refugees-citizenship/services/work-canada/permit.html'));
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
            "Get Work Permit",
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
//==========end work permit=============//
//==========start tax return=============//
class TaxReturn extends StatefulWidget {
  const TaxReturn({super.key});

  @override
  State<TaxReturn> createState() => _TaxReturnState();
}

class _TaxReturnState extends State<TaxReturn> {
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
      ..loadRequest(Uri.parse('https://www.canada.ca/en/services/taxes/income-tax/personal-income-tax/get-ready-taxes.html'));
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
            "Tax Return",
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
//==========end tax return=============//