import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:openflutterecommerce/config/theme.dart';
import 'package:openflutterecommerce/presentation/features/home/views/main5-view.dart';
import 'package:openflutterecommerce/presentation/widgets/independent/custom_button.dart';

class Main4View extends StatefulWidget {
  const Main4View({Key key}) : super(key: key);

  @override
  State<Main4View> createState() => _Main4ViewState();
}

class _Main4ViewState extends State<Main4View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Clean Out Kit',
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/products/backgroundimage.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 156.0, left: 20),
              child: Container(
                height: 300,
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'How it works',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Its Free and seriously easy to clean out your closet with GoodOnYou',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                    Container(
                      // padding: EdgeInsets.only(
                      //     left: AppSizes.sidePadding, bottom: AppSizes.sidePadding, top: AppSizes.sidePadding),
                      width: 350,
                      child: OpenFlutterButton(
                          title: 'Next',
                          width: 350,
                          height: 48,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Main5View()));
                          }),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop(false);
                      },
                      child: Container(
                        height: 48,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                            border: Border.all(color: Colors.white)),
                        child: Center(
                            child: Text(
                          'Go to Homeoage',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        )),
                      ),
                    ),
                  ],
                ),
                //color: Colors.red,
              ),
            ),
          ),
        ));
  }
}
