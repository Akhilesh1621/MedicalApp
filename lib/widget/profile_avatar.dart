import 'package:flutter/material.dart';
import 'package:medical_app/configs/colors.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final double size;
  const ProfileAvatar({Key? key, required this.imageUrl, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: size,
        backgroundColor: Colors.grey[200],
        foregroundImage: CachedNetworkImageProvider(imageUrl));
  }
}
