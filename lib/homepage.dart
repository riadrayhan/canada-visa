import 'dart:io';

import 'package:admob_flutter/admob_flutter.dart';
import 'package:canada_visa/webpage.dart';
import 'package:canada_visa/webpage2.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  AdmobBannerSize? bannerSize;
  late AdmobInterstitial interstitialAd;

  @override
  void initState() {
    super.initState();

    bannerSize = AdmobBannerSize.BANNER;
    interstitialAd = AdmobInterstitial(
      adUnitId: getInterstitialAdUnitId()!,
      listener: (AdmobAdEvent event, Map<String, dynamic>? args) {
        if (event == AdmobAdEvent.closed) interstitialAd.load();
        handleEvent(event, args, 'Interstitial');
      },
    );
  }
  @override
  void dispose() {
    interstitialAd.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        title: Text("Canadian Visa",style: TextStyle(fontWeight: FontWeight.bold,color: Color(
            0xDDB70404)),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
                    CarouselSlider(
                      items: [
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage("https://thumbs.dreamstime.com/b/toronto-pearson-international-airport-near-empty-safety-precautions-place-covid-pandemic-toronto-ontario-186222864.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //2nd Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI84-1-BCuUv9WqCp7wlb4lFiTMq70S4xbfw&s"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //3rd Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFMuivUE_rQUEUuE18B-PSTRWdqfArbUoPPw&s"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //4th Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage("https://imageio.forbes.com/specials-images/imageserve/611987016/Canadian-flag-waving-with-Parliament-Buildings-hill-and-Library/960x0.jpg?format=jpg&width=960"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //5th Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7zOKjE5xFkNg7RgQ0OtGAVlT3LFXqpi8Pdg&s"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                      ],

                      //Slider Container properties
                      options: CarouselOptions(
                        height: 140.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 600),
                        viewportFraction: 0.8,
                      ),
                    ),

            //================//
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Align(
                child: Text("Most requested",style: TextStyle(color: Color(
                    0xE409052D,),fontWeight: FontWeight.bold,fontSize: 18),),
                alignment: Alignment.topLeft,
              ),
            ),
            //=============//
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                 TextButton(
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Employment(),));
                   },
                   child: Container(
                        height: 70,
                        alignment: Alignment.center,
                        child: Text(" Employment Insurance and leave ",textAlign: TextAlign.center,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color:Color(0xE4B40B0B),width: 2),
                        ),
                      ),
                 ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CPP(),));
                    },
                    child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      child: Text(" Public pensions (CPP and OAS) ",textAlign: TextAlign.center,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color:Color(0xE4B40B0B),width: 2),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: ()async {
                        final isLoaded = await interstitialAd.isLoaded;
                        if (isLoaded ?? false) {
                        interstitialAd.show();
                        } else {
                         showDialog(context: context, builder: (context) {
                           return AlertDialog(
                             actions: [
                               TextButton(onPressed: () {
                                 Navigator.pop(context);
                               }, child: Text("okay"))
                             ],
                             title: Text( 'Interstitial ad is still loading...'),
                           );
                         },);
                        }
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Passport(),));
                    },
                    child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      child: Text(" Get a passport ",textAlign: TextAlign.center,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color:Color(0xE4B40B0B),width: 2),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => WorkPermit(),));
                    },
                    child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      child: Text(" Get a work permit ",textAlign: TextAlign.center,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color:Color(0xE4B40B0B),width: 2),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TaxReturn(),));
                    },
                    child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      child: Text(" 2023 tax returns ",textAlign: TextAlign.center,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color:Color(0xE4B40B0B),width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //==========//
            SizedBox(height: 40,),
//======================== xxxxxxxxxxxxxxxxxxxx ===================================//
            Card(
              shadowColor: Colors.red,
              child: ListTile(
                title: Text("Canada Jobs"),
                leading: Image(image: AssetImage('assets/job.PNG')),
                trailing: Image(image: AssetImage('assets/flag.jpg')),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Jobs(),));
                },
              ),
            ),
            Card(
              shadowColor: Colors.red,
              child: ListTile(
                title: Text("Immigration and citizenship"),
                leading: Image(image: AssetImage('assets/citizen.PNG')),
                trailing: Image(image: AssetImage('assets/flag.jpg')),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Citizen(),));
                },
              ),
            ),
            Card(
              shadowColor: Colors.red,
              child: ListTile(
                title: Text("Travel and tourism"),
                leading: Image(image: AssetImage('assets/travel.PNG')),
                trailing: Image(image: AssetImage('assets/flag.jpg')),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Travel(),));
                },
              ),
            ),
            Card(
              shadowColor: Colors.red,
              child: ListTile(
                style: ListTileStyle.list,
                title: Text("Health"),
                leading: Image(image: AssetImage('assets/health.PNG')),
                trailing: Image(image: AssetImage('assets/flag.jpg')),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Health(),));
                },
              ),
            ),
            Card(
              shadowColor: Colors.red,
              child: ListTile(
                title: Text("Policing, justice and emergencies"),
                leading: Image(image: AssetImage('assets/justice.PNG')),
                trailing: Image(image: AssetImage('assets/flag.jpg')),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Justice(),));
                },
              ),
            ),
            Card(
              shadowColor: Colors.red,
              child: ListTile(
                title: Text("National security and defence"),
                leading: Image(image: AssetImage('assets/security.PNG')),
                trailing: Image(image: AssetImage('assets/flag.jpg')),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Security(),));
                },
              ),
            ),
            SizedBox(height: 100,)

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: () {

      },
        label: Row(
          children: [
            TextButton(onPressed: () {
              showDialog(context: context, builder: (context) {
                return AlertDialog(
                  title: Text("DISCLAIMER \nOur app doesn’t represent a government entity.\nCanada Immigrate: By this app you can Find out what immigration programs you can apply for, sponsor your family and use a representative Canadian citizenship, prepare for the citizenship test and get proof of citizenship Study Visa Guide for applying for or extend a study permit or student work permit.We are not affiliated with Govt and Local Government divisions in any manner. Directly we don't provide visa related information, We just embed all Govt websites we don't collect any information",style: TextStyle(color: Colors.red,fontSize: 12),),actions: [
                    TextButton(onPressed: () {
                      Navigator.pop(context);
                    }, child: Text("Okay"))
                ],

                );
              },);
            }, child: Text("Disclaimer")),

    ],
    ),
      ),
    );

  }

  String? getBannerAdUnitId() {
   if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111';
    }
    return null;
  }

  String? getInterstitialAdUnitId() {
 if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/1033173712';
    }
    return null;
  }

  void handleEvent(
      AdmobAdEvent event, Map<String, dynamic>? args, String adType) {
    switch (event) {
      case AdmobAdEvent.loaded:
        showSnackBar('New Admob $adType Ad loaded!');
        break;
      case AdmobAdEvent.opened:
        showSnackBar('Admob $adType Ad opened!');
        break;
      case AdmobAdEvent.closed:
        showSnackBar('Admob $adType Ad closed!');
        break;
      case AdmobAdEvent.failedToLoad:
        showSnackBar('Admob $adType failed to load. :(');
        break;
      case AdmobAdEvent.rewarded:
        showDialog(
          context: scaffoldState.currentContext!,
          builder: (BuildContext context) {
            return WillPopScope(
              onWillPop: () async {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                return true;
              },
              child: AlertDialog(
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Reward callback fired. Thanks Andrew!'),
                    Text('Type: ${args!['type']}'),
                    Text('Amount: ${args['amount']}'),
                  ],
                ),
              ),
            );
          },
        );
        break;
      default:
    }
  }

  void showSnackBar(String content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(content),
        duration: Duration(milliseconds: 1500),
      ),
    );
  }
}
