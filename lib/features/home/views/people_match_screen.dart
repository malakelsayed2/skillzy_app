import 'package:flutter/material.dart';
import 'package:skillzy_app/core/widgets/custom_matched_user_card.dart';

class PeopleMatchScreen extends StatelessWidget {
  const PeopleMatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 10),
        title: Text('Matched People'),
        centerTitle: true,
        actions: [Icon(Icons.search), Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Best Matches For You!', style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              ListView.separated(
                shrinkWrap: true, // Important!
                physics: NeverScrollableScrollPhysics(), // Disable inner scrolling
                itemBuilder: (context, index) {
                  return CustomMatchedUserCard();
                },
                itemCount: 6,
                separatorBuilder: (context, index) => SizedBox(height: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
