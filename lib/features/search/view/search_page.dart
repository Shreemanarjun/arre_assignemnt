import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(
  deferredLoading: true,
)
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
