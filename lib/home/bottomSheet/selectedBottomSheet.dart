import 'package:flutter/material.dart';
import 'package:islamy_project/style/appStyle.dart';

class SelectedBottomSheet extends StatelessWidget {
  String selectedItem;
  SelectedBottomSheet({super.key, required this.selectedItem});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectedItem,
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
            fontWeight: FontWeight.w300
          ),
              ),
        
        Icon(Icons.check, color: Theme.of(context).colorScheme.onPrimaryContainer)
      ],
    );
  }
}