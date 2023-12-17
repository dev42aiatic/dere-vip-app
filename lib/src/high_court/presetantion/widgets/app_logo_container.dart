import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppLogoContainer extends StatelessWidget {
  const AppLogoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      margin: const EdgeInsets.only(top: 20, bottom: 15),
      // Usa SvgPicture para mostrar un gráfico vectorial desde los assets.
      child: SvgPicture.asset(
        'assets/images/logoDereVIP.svg',
        fit: BoxFit.cover,
      ),
    );
  }
}
