import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(
  deferredLoading: true,
)
class GroupsPage extends StatelessWidget {
  const GroupsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
    );
  }
}
