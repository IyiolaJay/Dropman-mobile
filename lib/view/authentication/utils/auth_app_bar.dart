import 'package:dropman/styles/colors.dart';
import 'package:flutter/material.dart';

 AppBar buildAuthAppBar (String title, BuildContext context) => AppBar(
        automaticallyImplyLeading: false,
        leading:  Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            child: const Icon(Icons.arrow_back_ios,),
            onTap: () => Navigator.pop(context),
            ),
        ),
        title:  Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: kPrimaryColorWhite,
      );