import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/uihelper.dart';

class MassageScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContent = [
    {
      "img": "assets/images/Oval (1).png",
      "name": "joshua_l",
      "last msg": "Have a nice day, bro!",
    },
    {
      "img": "assets/images/Oval (2).png",
      "name": "karennne",
      "last msg": "I heard this is a good movie, s…"
    },
    {
      "img": "assets/images/Oval (3).png",
      "name": "martini_rond",
      "last msg": "See you on the next meeting!"
    },
    {
      "img": "assets/images/Oval (4).png",
      "name": "andrewww_",
      "last msg": "Sounds good 😂😂😂",
    },
    {
      "img": "assets/images/Oval (5).png",
      "name": "kiero_d",
      "last msg": "The new design looks cool, b…",
    },
    {
      "img": "assets/images/Oval (6).png",
      "name": "maxjacobson",
      "last msg": "Thank you, bro!",
    },
    {
      "img": "assets/images/Oval (7).png",
      "name": "jamie",
      "last msg": "Yeap, I'm going to travel in To…",
    },
    {
      "img": "assets/images/Oval (8).png",
      "name": "m_humphrey",
      "last msg": "Instagram UI is pretty good",
    },
    {
      "img": "assets/images/Oval (5).png",
      "name": "kiero_d",
      "last msg": "The new design looks cool, b…",
    },
    {
      "img": "assets/images/Oval (6).png",
      "name": "maxjacobson",
      "last msg": "Thank you, bro!",
    },
    {
      "img": "assets/images/Oval (7).png",
      "name": "jamie",
      "last msg": "Yeap, I'm going to travel in To…",
    },
    {
      "img": "assets/images/Oval (8).png",
      "name": "m_humphrey",
      "last msg": "Instagram UI is pretty good",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.back),
        ),
        title: Text(
          "Royal_thakur.sahb",
          style: TextStyle(
            fontSize: 16,
            color: Color(0XFFF9F9F9),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.add, color: Colors.white, size: 28))
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              Container(
                height: 36,
                width: 450,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                      prefixIcon: UiHelper.customImage(
                          imgurl: "assets/images/Search Icon.png"),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                          "assets/images/${arrContent[index]["img"].toString()}"),
                    ),
                    title: Text(arrContent[index]["name"].toString(),
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
                    subtitle: Text(arrContent[index]["last msg"].toString(),
                        style: TextStyle(fontSize: 13, color: Colors.grey)),
                    trailing: UiHelper.customImage(
                        imgurl: "assets/images/Picture.png"));
              },
              itemCount: arrContent.length,
            ),
          )
        ],
      ),
      floatingActionButton: SizedBox(
        height: 79,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Color(0XFF121212)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.customImage(imgurl: "assets/images/Icon (10).png"),
              SizedBox(
                width: 5,
              ),
              Text(
                "Camera",
                style: TextStyle(fontSize: 13, color: Color(0XFF3897f0)),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
