import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:potteriana_ult/ui/shared/app_theme/app_colors.dart';


@RoutePage()
class SubCategoryPage extends StatelessWidget {
  const SubCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: AppColors.blue,
    title: const Text("HomeForNow"),
      ),
    );
  }
}
