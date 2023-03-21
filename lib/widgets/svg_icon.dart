import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget iconSvg(
    {required String svgIconPath, double height = 35, double width = 35}) {
  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: SvgPicture.asset(
      svgIconPath,
      color: Colors.white,
      height: height,
      width: width,
      allowDrawingOutsideViewBox: true,
    ),
  );
}
