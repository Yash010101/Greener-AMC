import 'package:flutter/material.dart';
import 'Addad.dart';
import 'package:get/get.dart';

class Sponsor_Home extends StatefulWidget {
  const Sponsor_Home({Key? key}) : super(key: key);

  @override
  State<Sponsor_Home> createState() => _Sponsor_HomeState();
}

class _Sponsor_HomeState extends State<Sponsor_Home> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    var pName = "Watch";
    var adID = 123445;
    var views = 12345;
    var clicks = 123;
    var ammount = 1234;
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Text("Greener"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Welcome",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Container(
                  height: h * 0.075,
                  width: w * 90,
                  // margin: EdgeInsets.all(20.0),
                  // padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green[200],
                  ),
                  child: Column(
                    children: [
                      // Text("Product Name: $pName \nAd ID: $adID \nViews: $views \nClicks: $clicks \nAmmount: $ammount INR",style: TextStyle(color:Colors.white,fontSize:20),),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {
                          Get.offAll(() => Addad());
                        },
                        child: Text('List a New Ad'),
                      )
                    ],
                  ),
                ),
                Text(
                  "Your Ad's",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Container(
                  height: h * 0.29,
                  width: w * 90,
                  margin: EdgeInsets.all(20.0),
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green[300],
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Product Name: $pName \nAd ID: $adID \nViews: $views \nClicks: $clicks \nAmmount: $ammount INR",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {},
                        child: Text('Remove Ad'),
                      )
                    ],
                  ),
                ),
                Container(
                  height: h * 0.29,
                  width: w * 90,
                  margin: EdgeInsets.all(20.0),
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green[300],
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Product Name: $pName \nAd ID: $adID \nViews: $views \nClicks: $clicks \nAmmount: $ammount INR",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {},
                        child: Text('Remove Ad'),
                      )
                    ],
                  ),
                ),
                Container(
                  height: h * 0.29,
                  width: w * 90,
                  margin: EdgeInsets.all(20.0),
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green[300],
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Product Name: $pName \nAd ID: $adID \nViews: $views \nClicks: $clicks \nAmmount: $ammount INR",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {},
                        child: Text('Remove Ad'),
                      )
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
