import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class StorageInfoCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final String numOfFiles;
  final String amountOfFiles;

  const StorageInfoCard({
    super.key,
    required this.svgSrc,
    required this.title,
    required this.numOfFiles,
    required this.amountOfFiles,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(defaultPadding / 2),
      padding: const EdgeInsets.all(defaultPadding / 2),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(defaultPadding / 2),
        border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svgSrc),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "$numOfFiles Files",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Text(
            "$amountOfFiles Files",
            style: const TextStyle(fontSize: 8, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
