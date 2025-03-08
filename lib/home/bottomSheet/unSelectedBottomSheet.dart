import 'package:flutter/material.dart';

class UnSelectedBottomSheet extends StatelessWidget {
  String unselectedItem;
   UnSelectedBottomSheet({super.key, required this.unselectedItem});

  @override
  Widget build(BuildContext context) {
    return
    
    Text(unselectedItem,style: Theme.of(context).textTheme.bodySmall);
  }
}