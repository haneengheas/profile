import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/views/profile/department.dart';
import 'package:profile/views/profile/gender.dart';
import 'package:profile/widget/customAppBar.dart';
import 'package:profile/widget/submit.dart';
import 'package:profile/widget/textDate.dart';
import 'package:profile/widget/textString.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          customAppBar('Edit Info'),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Stack(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color:Colors.grey,
                    border: Border.all(
                      width: 2,
                      color: Colors.grey,
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/h.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 45,
                      height: 45,

                      decoration: BoxDecoration(
                        color: Colors.grey,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          )),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt_rounded,size: 20,)
                      ),
                    ))
              ],
            ),
          ),
          // SizedBox(height: 10,),
          textString('Full Name', 'Enter your name',1),
          Row(
            children: [
              Container(
                width: 250,
                  margin: EdgeInsets.only(bottom: 5),
                  //height: 140,
                  child: textString('Job', 'enter job title',1.5)),
              Container(
                // width: 130,
                 // height: 100,
                margin: EdgeInsets.only(top: 10),
                  child: department()),
            ],
          ),
          Row(
            children: [
              Container(
                width: 250,
                  margin: EdgeInsets.only(bottom: 5),
                  child: TextDate(label: 'BirthDate',height: 1,)),
              Container(
                 margin: EdgeInsets.only(top: 10),
                  child: gender()),
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 160),
              child: textString('Phone', 'enter your phone',1)),
          textString('Address', 'enter your address',1),
          SizedBox(height: 10,),
          submit(' Save '),
          SizedBox(height: 10,),
          submit('Delete'),



        ],
      ),
    );
  }
}
