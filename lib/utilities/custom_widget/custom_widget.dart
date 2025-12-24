import 'package:attendify_lite/utilities/consents/consents.dart';
import 'package:flutter/material.dart';

class CustomWidgetButtonBlueContainer extends StatelessWidget {
  final String? text;
  final Function()? ontap;
  // final IconData? icon;
  const CustomWidgetButtonBlueContainer({
    super.key,
    required this.text,
    this.ontap,
    // this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: blue,
        ),
        width: double.infinity,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Icon(icon),
            // SizedBox(width: 10),
            Text(
              text!,
              style: TextStyle(
                color: white,
                fontFamily: 'Poppins-Medium',
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomWidgetButtonContainer extends StatelessWidget {
  final String? text;
  final Function()? ontap;

  const CustomWidgetButtonContainer({
    super.key,
    required this.text,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: black,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(15),
            color: white,
          ),
          width: double.infinity,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text!,
                style: TextStyle(
                  color: black,
                  fontFamily: 'Poppins-Medium',
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Custom_search_box extends StatelessWidget {
  final Function(String)? onchanged;
  final TextEditingController? searchController;
  const Custom_search_box({super.key, this.searchController, this.onchanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: searchController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search, color: textformfildtextcolor),
        hintText: 'Search by Student Name or ID',
        hintStyle: TextStyle(
          color: textformfildtextcolor,
          fontFamily: 'Poppins-Medium',
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: black, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: bordercolorwhitegray, width: 2),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 1, color: bordercolorwhitegray),
        ),
      ),
      cursorColor: black,
      style: TextStyle(
        color: textformfildtextcolor,
        fontFamily: 'Poppins-Medium',
      ),
      onChanged: onchanged,
    );
  }
}

class custom_text_button_image_select extends StatelessWidget {
  final Function()? ontap;
  final IconData? icons;
  final String? texts;
  const custom_text_button_image_select({
    super.key,
    required this.ontap,
    required this.icons,
    required this.texts,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: black),
          borderRadius: BorderRadius.circular(10),
          color: white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(icons),
              SizedBox(width: 5),
              Text(
                texts!,
                style: TextStyle(fontFamily: 'Poppins-Medium', color: black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class custom_Whit_Outer_Container extends StatelessWidget {
  final Widget? child;
  const custom_Whit_Outer_Container({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2, color: bordercolorwhitegrayoutline),
      ),
      child: child,
    );
  }
}

class custom_textformfield extends StatelessWidget {
  final String? hinttext;
  final TextEditingController? controller;
  final Function()? ontap;
  final Function(String)? onChanged;
  final Widget? suffix;
  final IconData? preffixicon;
  const custom_textformfield({
    super.key,
    required this.hinttext,
    this.controller,
    this.ontap,
    this.onChanged,
    this.suffix,
    this.preffixicon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        suffix: suffix,
        prefixIcon: Icon(preffixicon),
        hintText: hinttext,
        hintStyle: TextStyle(
          color: textformfildtextcolor,
          fontFamily: 'Poppins-Medium',
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: black, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: bordercolorwhitegray, width: 2),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 1, color: bordercolorwhitegray),
        ),
      ),
      cursorColor: black,
      style: TextStyle(
        color: textformfildtextcolor,
        fontFamily: 'Poppins-Medium',
      ),
      onTap: ontap,
      onChanged: onChanged,
    );
  }
}

class CustomDropdownmenu extends StatelessWidget {
  final List<DropdownMenuItem<dynamic>>? items;
  final Function(dynamic)? onChange;
  final Function()? ontap;
  final String? hinttext;

  const CustomDropdownmenu({
    super.key,
    required this.items,
    this.onChange,
    this.ontap,
    this.hinttext,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DropdownButtonFormField(
        elevation: 0,
        decoration: InputDecoration(
          hintText: hinttext,

          hintStyle: TextStyle(fontFamily: 'Poppins-Medium'),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(width: 1, style: BorderStyle.solid),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: black, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: dropdownbordercolorwhitegray,
              width: 2,
            ),
          ),
        ),

        dropdownColor: const Color.fromARGB(162, 148, 148, 148),
        style: TextStyle(color: black, fontFamily: 'Poppins-Medium'),
        borderRadius: BorderRadius.circular(10),
        focusColor: white,
        itemHeight: 50,
        items: items,
        onChanged: onChange,
        onTap: ontap,
      ),
    );
  }
}

class custom_container_for_data_controll extends StatelessWidget {
  final Function()? ontap;
  final Color? containercolor;
  final String? text;
  final Color? textcolor;
  const custom_container_for_data_controll({
    super.key,
    this.ontap,
    this.containercolor,
    this.text,
    this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,

      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: containercolor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              text!,
              style: TextStyle(fontFamily: 'Poppins-Bold', color: textcolor),
            ),
          ),
        ),
      ),
    );
  }
}

class custom_Whit_Outer_Container_small extends StatelessWidget {
  final Widget? child;
  const custom_Whit_Outer_Container_small({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2, color: bordercolorwhitegrayoutline),
      ),
      child: child,
    );
  }
}

class custom_settings_tag extends StatelessWidget {
  final IconData? icon;
  final Color? iconcolor;
  final String? title;
  final String? description_text;
  bool switchvalue;
  final Function(bool)? onChanged;
  custom_settings_tag({
    super.key,
    this.icon,
    this.iconcolor,
    required this.title,
    required this.description_text,
    required this.onChanged,
    this.switchvalue = false,
  });

  @override
  Widget build(BuildContext context) {
    return custom_Whit_Outer_Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flex(
              direction: Axis.horizontal,
              children: [
                Icon(icon, color: iconcolor, size: 40),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      maxLines: 2,

                      title!,
                      style: TextStyle(
                        fontFamily: 'Poppins-Bold',
                        fontSize: 20,
                        color: black,
                      ),
                    ),
                    SizedBox(
                      width: 150,

                      child: Text(
                        maxLines: 1,

                        description_text!,
                        style: TextStyle(
                          fontFamily: 'Poppins-Regular',
                          // fontSize: 25,
                          color: textformfildtextcolor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Switch(value: switchvalue, onChanged: onChanged),
          ],
        ),
      ),
    );
  }
}
