import 'package:dashboard/screens/constants.dart';
import 'package:dashboard/screens/responsive.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'components/header.dart';
import 'components/my_files.dart';
import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            /// --HEADER SECTION
            const Header(),
            const SizedBox(height: 20),

            ///--MAIN SECTION
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// --DETAILED SCREEN
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      const MyFiles(),
                      const SizedBox(height: defaultPadding),
                      const RecentFiles(),
                      // --Agar mobile ho to column ma show kara ga storage ko 
                      if (Responsive.isMobile(context)) const SizedBox(height: defaultPadding),
                      /// --STORAGE DETAILS (It will not show when the screen is less than 1400(i.e mobile))
                      if (Responsive.isMobile(context))
                        const StorageDetails(),
                    ],
                  ),
                ),

                if (!Responsive.isMobile(context)) const SizedBox(width: defaultPadding),
                /// --STORAGE DETAILS (It will not show when the screen is less than 1400(i.e mobile))
                if (!Responsive.isMobile(context))
                  const Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
