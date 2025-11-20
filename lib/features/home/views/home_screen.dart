import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skillzy_app/core/constants/color_manager.dart';
import 'package:skillzy_app/core/constants/string_manager.dart';
import 'package:skillzy_app/core/widgets/custom_button.dart';
import 'package:skillzy_app/core/widgets/custom_profile_connection_card.dart';
import 'package:skillzy_app/core/widgets/custom_skill_card.dart';
import '../../../core/view_model/app_brain.dart';
import '../../../core/widgets/custom_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<AppBrain>(context, listen: false).getTopSkills();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final topSkillsList = Provider.of<AppBrain>(context).topSkillsList;
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsetsGeometry.only(right: 20),
        leadingWidth: 120,
        leading: Container(
          padding: EdgeInsets.only(left: 20), // optional padding
          width: 120, // bigger width
          height: 120, // bigger height
          child: Image.asset(StringManager.appLogo2, fit: BoxFit.contain),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.chat_bubble_text),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextfield(
                prefixIcon: 'assets/icons/person.png',
                hint: 'search',
              ),
              SizedBox(height: 35),
              Container(
                height: 136,
                width: 335,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF406C74), Color(0xFF86A3A8)],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 15,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Explore The Partner Who Match Your Needs !',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      CustomButton(
                        title: 'View Matchies',
                        titleColor: ColorManager.mainColorGreen,
                        buttonColor: ColorManager.mainColorWhite,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('Top Skills', style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CustomSkillCard(
                      skillTitle: topSkillsList[index].title,
                      image: topSkillsList[index].image,
                    );
                  },
                  separatorBuilder: (context, index) => Container(width: 10),
                  itemCount: topSkillsList.length,
                ),
              ),
              SizedBox(height: 40),
              Text('Nearby People', style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              SizedBox(
                height: 240,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CustomProfileConnectionCard();
                  },
                  separatorBuilder: (context, index) => Container(width: 10),
                  itemCount: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
