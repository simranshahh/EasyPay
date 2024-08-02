import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:flutter/material.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'assets/loginimg.png',
          scale: 0.01,
          width: displayWidth(context),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 45, 0, 0),
          child: Text(
            'Add Product Page',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.w400, color: ColorConstant.white,
              
                    fontFamily: 'Montserrat',
                  
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 150, 18, 18),
          child: Container(
            height: displayHeight(context) * 0.07,
            width: displayWidth(context),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstant.white),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: displayHeight(context) * 0.04,
                    )),
              ],
            ),
          ),
        )
      ]),
    );
  }
}










































// // ignore_for_file: prefer_const_constructors, file_names, avoid_unnecessary_containers

// import 'package:easypay/components/imagepicker.dart';
// import 'package:easypay/utils/size_config.dart';
// import 'package:flutter/material.dart';

// class AddProductPage extends StatefulWidget {
//   const AddProductPage({super.key});

//   @override
//   State<AddProductPage> createState() => _AddProductPageState();
// }

// class _AddProductPageState extends State<AddProductPage> {
//   TextEditingController bannerctrl = TextEditingController();

//   String? banner;
//   int? bannernumber;

//   var items = [
//     "Top of the Page",
//     "Store",
//     "Product Detail",
//     "Banner Left",
//     "Banner Right",
//     "Contact Page",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: SingleChildScrollView(
//             child: Column(
//               // mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Add Image',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: displayHeight(context) * 0.015,
//                 ),
//                 Container(
//                   height: displayHeight(context) * 0.2,
//                   width: displayWidth(context),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: ColorConstant.white,
//                       border: Border.all(color: ColorConstant.grey)),
//                   child: IconButton(
//                       onPressed: () {
//                         ImagePickerTemplate();
//                       },
//                       icon: Icon(Icons.camera)),
//                 ),
//                 TextFormField(
//                   readOnly: true,
//                   onSaved: (input) => banner = input,
//                   controller: bannerctrl,
//                   decoration: InputDecoration(
//                     labelStyle:
//                         TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     suffixIcon: PopupMenuButton<String>(
//                       icon: const Icon(
//                         Icons.arrow_drop_down,
//                         color: ColorConstant.grey,
//                       ),
//                       onSelected: (String value) {
//                         setState(() {
//                           bannerctrl.text = value;
//                           if (value == "Top of the Page") {
//                             bannernumber = 1;
//                           } else if (value == "Store") {
//                             bannernumber = 2;
//                           } else if (value == "Product Detail") {
//                             bannernumber = 3;
//                           } else if (value == "Banner Left") {
//                             bannernumber = 4;
//                           } else if (value == "Banner Right") {
//                             bannernumber = 5;
//                           } else if (value == "Contact Page") {
//                             bannernumber = 6;
//                           } else {
//                             bannernumber = 0;
//                           }
//                         });
//                       },
//                       itemBuilder: (BuildContext context) {
//                         return items.map<PopupMenuItem<String>>((String value) {
//                           return PopupMenuItem(
//                               value: value, child: Text(value));
//                         }).toList();
//                       },
//                     ),
//                     fillColor: ColorConstant.grey.shade300,
//                     // filled: true,
//                     labelText: 'Banner Position',

//                     floatingLabelBehavior: FloatingLabelBehavior.never,
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12.0),
//                         borderSide: BorderSide.none),
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                   validator: (value) {
//                     if (value!.isEmpty) return 'banner';
//                     return null;
//                   },
//                 ),
//                 Container(
//                   child: TextFormField(
//                     style: TextStyle(
//                       fontSize: 24,
//                       color: ColorConstant.black,
//                       fontWeight: FontWeight.w600,
//                     ),
//                     onChanged: (value) {
//                       setState(() {});
//                     },
//                     decoration: InputDecoration(
//                       focusColor: ColorConstant.white,
//                       prefixIcon: Icon(
//                         Icons.text_fields,
//                         color: ColorConstant.grey,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide:
//                             const BorderSide(color: Colorconstant.primary, width: 1.0),
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       fillColor: ColorConstant.grey,
//                       hintText: "Your Title",
//                       hintStyle: TextStyle(
//                         color: ColorConstant.grey,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w400,
//                       ),
//                       labelText: 'Your Title',
//                       labelStyle: TextStyle(
//                         color: ColorConstant.grey,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: displayHeight(context) * 0.02,
//                 ),
//                 Container(
//                   child: TextFormField(
//                     style: TextStyle(
//                       fontSize: 24,
//                       color: ColorConstant.black,
//                       fontWeight: FontWeight.w600,
//                     ),
//                     onChanged: (value) {
//                       setState(() {});
//                     },
//                     decoration: InputDecoration(
//                       focusColor: ColorConstant.white,
//                       prefixIcon: Icon(
//                         Icons.text_fields,
//                         color: ColorConstant.grey,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide:
//                             const BorderSide(color: Colorconstant.primary, width: 1.0),
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       fillColor: ColorConstant.grey,
//                       hintText: "Sub Title",
//                       hintStyle: TextStyle(
//                         color: ColorConstant.grey,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w400,
//                       ),
//                       labelText: 'Sub Title',
//                       labelStyle: TextStyle(
//                         color: ColorConstant.grey,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: displayHeight(context) * 0.02,
//                 ),
//                 Center(
//                   child: SizedBox(
//                     height: displayHeight(context) * 0.06,
//                     width: displayWidth(context) * 0.2,
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       child: Text('Save'),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
