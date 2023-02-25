import 'package:flutter/material.dart';

class SearchTextTitle extends StatelessWidget {
  const SearchTextTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Top Searches",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}