import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:openflutterecommerce/presentation/features/home/views/main6_view.dart';
import 'package:openflutterecommerce/presentation/widgets/independent/custom_button.dart';

class Main5View extends StatefulWidget {
  const Main5View({Key key}) : super(key: key);

  @override
  State<Main5View> createState() => _Main5ViewState();
}

class _Main5ViewState extends State<Main5View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Clean Out Kit',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:38.0),
          child: Column(
            children: [
              content(context, '1.  Fill up Your Kit','Free up space in your closet by filling your kit with gently used items you no longer wear, need or love','assets/images/products/content2.png'),
              SizedBox(height: 20,),
              content(context, '2. Send us your stuff','We Provide the shipping label, just drop your kit off with DHL','assets/images/products/content3.png'),
              SizedBox(height: 20,),
              content(context, '3. We do the Rest','We Provide the shipping label, just drop your kit off with DHL','assets/images/products/content1.png'),
               SizedBox(height: 40,),
               Container(
                      // padding: EdgeInsets.only(
                      //     left: AppSizes.sidePadding, bottom: AppSizes.sidePadding, top: AppSizes.sidePadding),
                      width: 350,
                      child: OpenFlutterButton(
                          title: 'Get a Cleaning Kit',
                          width: 350,
                          height: 48,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Main6View()));
                          }),
                    ),
            ],
          )
        )),
    );

  }
}

Widget content(BuildContext context,String title, String subtitle, String imagepath){
  return Column(children: [
            Center(
              child: Container(
                 height: 150,
                width: 350,
                decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
            Radius.circular(10.0)),
            boxShadow: [
            BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 12,
            color: Color.fromRGBO(0, 0, 0, 0.16),
            )
            ]
            ),
            child: Row(
              children: [
                Container(
                  color: Colors.transparent,
                  width: 175,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.only(top:23.0, left: 11),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                        style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w500),),
                        SizedBox(height: 30,),
                        Text(subtitle, style: TextStyle(fontSize: 8, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                ),

                  Container(
                    decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagepath),
              fit: BoxFit.cover,
            ),
          ),
                  width: 175,
                  height: 150,
                ),
              ],
            ),),
            )
          ],);
}