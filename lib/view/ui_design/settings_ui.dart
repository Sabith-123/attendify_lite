import 'package:attendify_lite/utilities/consents/consents.dart';
import 'package:attendify_lite/utilities/custom_widget/custom_widget.dart';
import 'package:flutter/material.dart';

class SettingsUi extends StatelessWidget {
  const SettingsUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        title: Center(
          child: Text(
            'Monthly Report',
            style: TextStyle(fontFamily: 'Poppins-Bold'),
          ),
        ),
        shape: Border(
          bottom: BorderSide(width: 2, color: bordercolorwhitegray),
        ),
      ),
      backgroundColor: white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              custom_Whit_Outer_Container_small(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 50,
                    bottom: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Students',
                        style: TextStyle(fontFamily: 'Poppins-Medium'),
                      ),
                      Text(
                        '50',
                        style: TextStyle(
                          fontFamily: 'Poppins-Bold',
                          fontSize: 25,
                          color: blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              custom_settings_tag(
                title: 'Mark Holiday',
                description_text: "Set school holiday or special days.",
                icon: Icons.date_range_outlined,
                iconcolor: orange,
                switchvalue: false,
                onChanged: (p1) {},
              ),
              SizedBox(height: 20),
              custom_settings_tag(
                title: 'Theme Settings',
                description_text: "Switch between light and dark modes.",
                icon: Icons.color_lens_outlined,
                iconcolor: blue,
                switchvalue: false,
                onChanged: (p2) {},
              ),
              SizedBox(height: 20),
              custom_Whit_Outer_Container(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.info_outline, color: blue),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'App Info',
                            style: TextStyle(
                              fontFamily: 'Poppins-Medium',
                              fontSize: 18,
                              color: black,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 130),
              CustomWidgetButtonBlueContainer(text: 'Logout'),
            ],
          ),
        ),
      ),
    );
  }
}
