import 'package:dashboard/screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/recent_files.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              columns: const [
                DataColumn(label: Text('File Name')),
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Size')),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFilesDataRow(demoRecentFiles[index]),
              ),
            ),
          )
        ],
      ),
    );
  }
  DataRow recentFilesDataRow(RecentFile fileInfo) {
    return DataRow(cells: [
      DataCell(Row(
        children: [
          SvgPicture.asset(fileInfo.icon,height: 30,width: 30,),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(fileInfo.title),
          )
        ],
      )),
      DataCell(Text(fileInfo.date)),
      DataCell(Text(fileInfo.size)),
    ]);
  }
}