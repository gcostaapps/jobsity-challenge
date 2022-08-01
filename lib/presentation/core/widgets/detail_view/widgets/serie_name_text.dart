import 'package:flutter/material.dart';

import '../../../spacing/spacing.dart';
import '../../../theme/theme.dart';

class DetailNameText extends StatelessWidget {
  const DetailNameText({
    Key? key,
    required this.serieName,
    required this.imageHeight,
  }) : super(key: key);

  final String serieName;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double textHeight = (context.textTheme.headline5!.fontSize! *
            context.textTheme.headline5!.height!) *
        2;

    return Positioned(
      top: imageHeight - textHeight - Space.small,
      left: Space.medium,
      right: Space.medium,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: textHeight,
            width: screenWidth - Space.extraLarge2,
            alignment: Alignment.bottomLeft,
            child: Text(
              serieName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // const Padding(
          //   padding: EdgeInsets.only(bottom: Space.extraSmall),
          //   child: Icon(
          //     Icons.favorite_border,
          //   ),
          // ),
        ],
      ),
    );
  }
}
