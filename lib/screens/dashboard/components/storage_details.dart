import 'package:dashboard/screens/dashboard/components/storage_info_card.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      //todo: Remove height
      // height: 200,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            'Storage Details',
            style: Theme
                .of(context)
                .textTheme
                .titleMedium,
          ),
          const SizedBox(height: defaultPadding),

          /// -- Pie Chart Widget
          const Chart(),

          const StorageInfoCard(
            svgSrc: 'assets/icons/Documents.svg',
            title: 'Documents',
            numOfFiles: '1328 Files',
            amountOfFiles: '1.3 GB',
          ),
          const StorageInfoCard(
            svgSrc: 'assets/icons/media.svg',
            title: 'Media',
            numOfFiles: '1328 Files',
            amountOfFiles: '1.3 GB',
          ),
          const StorageInfoCard(
            svgSrc: 'assets/icons/folder.svg',
            title: 'Other Files',
            numOfFiles: '1328 Files',
            amountOfFiles: '1.3 GB',
          ),
          const StorageInfoCard(
            svgSrc: 'assets/icons/unknown.svg',
            title: 'Unknown',
            numOfFiles: '1328 Files',
            amountOfFiles: '1.3 GB',
          ),
        ],
      ),
    );
  }
}
