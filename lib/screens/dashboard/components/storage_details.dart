import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';
class StorageDetails extends StatelessWidget {
  const StorageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          StorageInfoCard(
            title: 'Documents Files',
            imageSrc: 'assets/icons/Documents.svg',
            amountOfFiles: '1.3GB',
            numOfFiles: 1329,
          ),
          StorageInfoCard(
            title: 'Media Files',
            imageSrc: 'assets/icons/media.svg',
            amountOfFiles: '15.3GB',
            numOfFiles: 1329,
          ),
          StorageInfoCard(
            title: 'Other Files',
            imageSrc: 'assets/icons/folder.svg',
            amountOfFiles: '1.3GB',
            numOfFiles: 1329,
          ),
          StorageInfoCard(
            title: 'Unknown Files',
            imageSrc: 'assets/icons/unknown.svg',
            amountOfFiles: '1.3GB',
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
