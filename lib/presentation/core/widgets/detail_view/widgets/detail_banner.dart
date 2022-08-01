import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailBanner extends StatelessWidget {
  const DetailBanner({
    Key? key,
    required this.height,
    required this.imageUrl,
  }) : super(key: key);

  final double height;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (_, __) => const Center(
        child: CircularProgressIndicator(),
      ),
      fit: BoxFit.fitWidth,
      width: double.infinity,
      height: height,
      fadeInDuration: const Duration(milliseconds: 100),
      fadeOutDuration: const Duration(milliseconds: 100),
      placeholderFadeInDuration: const Duration(milliseconds: 100),
      alignment: Alignment.topCenter,
    );
  }
}
