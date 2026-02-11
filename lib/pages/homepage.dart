import 'package:flutter/material.dart';
import 'package:perplexity_clone/widgets/sidebar.dart';

class Homepage extends StatelessWidget{
  const Homepage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Sidebar(),
          Column(
            children: [
              //search
            ],
          )
        ],
      ),
    );
  }

}