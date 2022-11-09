import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:openflutterecommerce/presentation/features/home/views/main5-view.dart';
import 'package:openflutterecommerce/presentation/widgets/independent/custom_button.dart';

class Main6View extends StatefulWidget {
  const Main6View({Key key}) : super(key: key);

  @override
  State<Main6View> createState() => _Main6ViewState();
}

class _Main6ViewState extends State<Main6View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Clean Out Kit Form',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(top: 18.0, left: 10, right: 10),
        child: Column(
          children: [
            textformfield(context, 'Name'),
            SizedBox(height: 10,),
            textformfield(context, 'Address Line 2'),
            SizedBox(height: 10,),
            textformfield(context, 'Address Line 2'),
            SizedBox(height: 10,),
            textformfield(context, 'City'),
            SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:150,
                  child: textformfield2(context, 'State'),
                ),
                  Container(
                  width:150,
                  child: textformfield2(context, 'Zip Code'),
                ),
              ],
            ),
            SizedBox(height: 10,),
            content(context, 'Review Quality Standards','  1.  No Signs of Wear \n \n 2.  No Damage \n \n 3.  No Alteration ', 'assets/images/products/content2.png'),
             SizedBox(height: 10,),
             Container(
                      // padding: EdgeInsets.only(
                      //     left: AppSizes.sidePadding, bottom: AppSizes.sidePadding, top: AppSizes.sidePadding),
                      width: 350,
                      child: OpenFlutterButton(
                          title:'Submit',
                          width: 350,
                          height: 48,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Main6View()));
                          }),
                    ),SizedBox(height: 10,)
            
          ],
        ),
      )),
    );
  }
}

Widget textformfield(BuildContext context, String label) {
  return TextFormField(
    decoration: InputDecoration(
      fillColor: Colors.white,
      filled: true,
      errorStyle: const TextStyle(
        height: 0,
      ),
      hintText: label,
      hintStyle: TextStyle(color: Colors.grey.shade300, fontSize: 11, fontWeight: FontWeight.bold),
      contentPadding: const EdgeInsets.symmetric(vertical: 35,horizontal: 10),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
              color:
                  const Color.fromARGB(255, 161, 155, 155).withOpacity(0.13))),
      border: OutlineInputBorder(
          borderSide: BorderSide(
              color:
                  const Color.fromARGB(255, 161, 155, 155).withOpacity(0.13))),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
              color:
                  const Color.fromARGB(255, 161, 155, 155).withOpacity(0.13))),
    ),
  );
}

Widget textformfield2(BuildContext context, String label) {
  return TextFormField(
    decoration: InputDecoration(
      suffixIcon: IconButton(
      icon: Icon(Icons.keyboard_arrow_down_outlined),
      onPressed: () {}                 
    ),
      fillColor: Colors.white,
      filled: true,
      errorStyle: const TextStyle(
        height: 0,
      ),
      hintText: label,
      hintStyle: TextStyle(color: Colors.grey.shade300, fontSize: 11, fontWeight: FontWeight.bold),
      contentPadding: const EdgeInsets.symmetric(vertical: 35,horizontal: 5),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
              color:
                  const Color.fromARGB(255, 161, 155, 155).withOpacity(0.13))),
      border: OutlineInputBorder(
          borderSide: BorderSide(
              color:
                  const Color.fromARGB(255, 161, 155, 155).withOpacity(0.13))),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
              color:
                  const Color.fromARGB(255, 161, 155, 155).withOpacity(0.13))),
    ),
  );
}
