import 'package:flutter/material.dart';

class BackgroundClipperHexagram extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.0325000, size.height * 0.0200000);
    path0.cubicTo(
        size.width * 0.3559375,
        size.height * -0.0112500,
        size.width * 0.2676625,
        size.height * 0.2348500,
        size.width * 0.4668750,
        size.height * 0.1231250);
    path0.cubicTo(
        size.width * 0.4092250,
        size.height * 0.0161000,
        size.width * 0.5829750,
        size.height * 0.0020375,
        size.width * 0.9909375,
        size.height * 0.0106250);
    path0.cubicTo(
        size.width * 0.8275000,
        size.height * 0.1435125,
        size.width * 1.1021875,
        size.height * 0.4483625,
        size.width * 0.8715625,
        size.height * 0.5875000);
    path0.cubicTo(
        size.width * 0.8028125,
        size.height * 0.6449250,
        size.width * 1.1184375,
        size.height * 0.5800750,
        size.width * 0.9418750,
        size.height * 0.9531250);
    path0.cubicTo(
        size.width * 0.8818750,
        size.height * 1.0456250,
        size.width * 0.6321875,
        size.height * 0.9634375,
        size.width * 0.5987500,
        size.height * 0.8637500);
    path0.cubicTo(
        size.width * 0.2350000,
        size.height * 0.7856250,
        size.width * 0.2317250,
        size.height * 0.9750750,
        size.width * 0.0578125,
        size.height * 0.9903125);
    path0.quadraticBezierTo(size.width * -0.0279625, size.height * 0.7768000,
        size.width * 0.0865625, size.height * 0.4596875);
    path0.quadraticBezierTo(size.width * -0.0312500, size.height * 0.0384375,
        size.width * 0.0325000, size.height * 0.0200000);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(oldClipper) {
    return false;
  }
}

class BackgroundClipperAppBar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width, size.height);
    path0.quadraticBezierTo(size.width * 0.3018750, size.height * 0.9925000,
        size.width * 0.5437500, size.height * 0.8862500);
    path0.quadraticBezierTo(
        size.width * 0.8821875, size.height * 0.7262500, 0, size.height);
    path0.lineTo(0, 0);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(oldClipper) {
    return false;
  }
}

class BackgroundClipperExplanation extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.0308116, size.height * 0.0269091);
    path0.cubicTo(
        size.width * 0.0110580,
        size.height * 0.0398485,
        size.width * 0.0008116,
        size.height * 0.1346364,
        size.width * 0.0130870,
        size.height * 0.2278485);
    path0.cubicTo(
        size.width * 0.1087536,
        size.height * 0.2906667,
        size.width * 0.1394058,
        size.height * 0.2268485,
        size.width * 0.1661449,
        size.height * 0.2702121);
    path0.cubicTo(
        size.width * 0.1367971,
        size.height * 0.2724848,
        size.width * 0.0860290,
        size.height * 0.2780000,
        size.width * 0.0456377,
        size.height * 0.2943333);
    path0.cubicTo(
        size.width * 0.0181884,
        size.height * 0.2991515,
        size.width * 0.0271449,
        size.height * 0.5193636,
        size.width * 0.0501594,
        size.height * 0.5176061);
    path0.cubicTo(
        size.width * 0.0861739,
        size.height * 0.5296667,
        size.width * 0.2396087,
        size.height * 0.4627576,
        size.width * 0.1850435,
        size.height * 0.5033939);
    path0.cubicTo(
        size.width * 0.1452029,
        size.height * 0.5108485,
        size.width * 0.0170725,
        size.height * 0.5386970,
        size.width * 0.0215217,
        size.height * 0.5719697);
    path0.quadraticBezierTo(size.width * -0.0063333, size.height * 0.6876667,
        size.width * 0.0318261, size.height * 0.7710606);
    path0.quadraticBezierTo(size.width * 0.2539275, size.height * 0.7081515,
        size.width * 0.1803913, size.height * 0.7468788);
    path0.cubicTo(
        size.width * 0.1408841,
        size.height * 0.7583030,
        size.width * 0.1112754,
        size.height * 0.7440606,
        size.width * 0.0758551,
        size.height * 0.7862424);
    path0.cubicTo(
        size.width * 0.0667826,
        size.height * 0.8413636,
        size.width * 0.0827681,
        size.height * 0.9408182,
        size.width * 0.0961304,
        size.height * 0.9636364);
    path0.cubicTo(
        size.width * 0.1462609,
        size.height * 1.0097576,
        size.width * 0.7912029,
        size.height * 0.9508485,
        size.width * 0.8060580,
        size.height * 0.9236364);
    path0.cubicTo(
        size.width * 0.8252029,
        size.height * 0.8670909,
        size.width * 0.8447971,
        size.height * 0.7130909,
        size.width * 0.7959275,
        size.height * 0.6974545);
    path0.cubicTo(
        size.width * 0.7719420,
        size.height * 0.6951894,
        size.width * 0.7239710,
        size.height * 0.6906591,
        size.width * 0.6999855,
        size.height * 0.6883939);
    path0.cubicTo(
        size.width * 0.6199565,
        size.height * 0.6630606,
        size.width * 0.8739094,
        size.height * 0.6707348,
        size.width * 0.9318841,
        size.height * 0.6648485);
    path0.cubicTo(
        size.width * 0.9730435,
        size.height * 0.6682424,
        size.width * 0.9318696,
        size.height * 0.4920000,
        size.width * 0.8978986,
        size.height * 0.4588485);
    path0.cubicTo(
        size.width * 0.8613043,
        size.height * 0.4580909,
        size.width * 0.7229420,
        size.height * 0.4662727,
        size.width * 0.7855072,
        size.height * 0.4515152);
    path0.cubicTo(
        size.width * 0.8353804,
        size.height * 0.4391818,
        size.width * 0.9956087,
        size.height * 0.4506061,
        size.width * 0.9860290,
        size.height * 0.4129394);
    path0.cubicTo(
        size.width * 0.9684928,
        size.height * 0.3055455,
        size.width * 1.0037681,
        size.height * 0.2368485,
        size.width * 0.9698406,
        size.height * 0.2240606);
    path0.cubicTo(
        size.width * 0.9107138,
        size.height * 0.2225909,
        size.width * 0.7924601,
        size.height * 0.2196515,
        size.width * 0.7333333,
        size.height * 0.2181818);
    path0.cubicTo(
        size.width * 0.6839855,
        size.height * 0.2057879,
        size.width * 0.8447681,
        size.height * 0.2197576,
        size.width * 0.8777971,
        size.height * 0.2030303);
    path0.quadraticBezierTo(size.width * 0.9638406, size.height * 0.1170303,
        size.width * 0.8822899, size.height * 0.0291212);
    path0.quadraticBezierTo(size.width * 0.2466522, size.height * -0.0263939,
        size.width * 0.0308116, size.height * 0.0269091);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(oldClipper) {
    return false;
  }
}

class BackgroundClipperLineTitle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.05025126, size.height * 0.02702703);
    path0.cubicTo(
        size.width * 0.05025126,
        size.height * 0.02702703,
        size.width * 0.06783920,
        size.height * 0.04504505,
        size.width * 0.06783920,
        size.height * 0.04504505);
    path0.cubicTo(
        size.width * 0.07253769,
        size.height * 0.08864865,
        size.width * 0.1129397,
        size.height * 0.08684685,
        size.width * 0.1256281,
        size.height * 0.09405405);
    path0.cubicTo(
        size.width * 0.1451508,
        size.height * 0.1050450,
        size.width * 0.1635930,
        size.height * 0.1282883,
        size.width * 0.1834171,
        size.height * 0.1298198);
    path0.cubicTo(
        size.width * 0.1834171,
        size.height * 0.1298198,
        size.width * 0.2236181,
        size.height * 0.1395495,
        size.width * 0.2236181,
        size.height * 0.1395495);
    path0.cubicTo(
        size.width * 0.2236181,
        size.height * 0.1395495,
        size.width * 0.2989950,
        size.height * 0.1441441,
        size.width * 0.2989950,
        size.height * 0.1441441);
    path0.cubicTo(
        size.width * 0.2989950,
        size.height * 0.1441441,
        size.width * 0.3592965,
        size.height * 0.1590991,
        size.width * 0.3592965,
        size.height * 0.1590991);
    path0.cubicTo(
        size.width * 0.3592965,
        size.height * 0.1590991,
        size.width * 0.4195980,
        size.height * 0.1434234,
        size.width * 0.4195980,
        size.height * 0.1434234);
    path0.cubicTo(
        size.width * 0.4195980,
        size.height * 0.1434234,
        size.width * 0.4547739,
        size.height * 0.1434234,
        size.width * 0.4547739,
        size.height * 0.1434234);
    path0.cubicTo(
        size.width * 0.4547739,
        size.height * 0.1434234,
        size.width * 0.4773869,
        size.height * 0.1359459,
        size.width * 0.4773869,
        size.height * 0.1359459);
    path0.cubicTo(
        size.width * 0.4773869,
        size.height * 0.1359459,
        size.width * 0.5075377,
        size.height * 0.1441441,
        size.width * 0.5075377,
        size.height * 0.1441441);
    path0.cubicTo(
        size.width * 0.5075377,
        size.height * 0.1441441,
        size.width * 0.7035176,
        size.height * 0.1441441,
        size.width * 0.7035176,
        size.height * 0.1441441);
    path0.cubicTo(
        size.width * 0.7035176,
        size.height * 0.1441441,
        size.width * 0.7286432,
        size.height * 0.1367568,
        size.width * 0.7286432,
        size.height * 0.1367568);
    path0.cubicTo(
        size.width * 0.7286432,
        size.height * 0.1367568,
        size.width * 0.7663317,
        size.height * 0.1441441,
        size.width * 0.7663317,
        size.height * 0.1441441);
    path0.cubicTo(
        size.width * 0.7663317,
        size.height * 0.1441441,
        size.width * 0.8189950,
        size.height * 0.1281982,
        size.width * 0.8189950,
        size.height * 0.1281982);
    path0.cubicTo(
        size.width * 0.8536935,
        size.height * 0.1309009,
        size.width * 0.8455276,
        size.height * 0.1054054,
        size.width * 0.8894472,
        size.height * 0.1281982);
    path0.cubicTo(
        size.width * 0.9009548,
        size.height * 0.1330631,
        size.width * 0.9098744,
        size.height * 0.1276577,
        size.width * 0.9170854,
        size.height * 0.1621622);
    path0.cubicTo(
        size.width * 0.9170854,
        size.height * 0.1621622,
        size.width * 0.9296482,
        size.height * 0.1171171,
        size.width * 0.9296482,
        size.height * 0.1171171);
    path0.cubicTo(
        size.width * 0.9297487,
        size.height * 0.1542342,
        size.width * 0.9395226,
        size.height * 0.2481081,
        size.width * 0.9426131,
        size.height * 0.2882883);
    path0.cubicTo(
        size.width * 0.9503015,
        size.height * 0.3885586,
        size.width * 0.9699246,
        size.height * 0.6459459,
        size.width * 0.9670101,
        size.height * 0.7387387);
    path0.cubicTo(
        size.width * 0.9670101,
        size.height * 0.7387387,
        size.width * 0.9597990,
        size.height * 0.8378378,
        size.width * 0.9597990,
        size.height * 0.8378378);
    path0.cubicTo(
        size.width * 0.9436181,
        size.height * 0.8437838,
        size.width * 0.9470603,
        size.height * 0.8730631,
        size.width * 0.9346734,
        size.height * 0.9009009);
    path0.cubicTo(
        size.width * 0.9346734,
        size.height * 0.9009009,
        size.width * 0.9224372,
        size.height * 0.8456757,
        size.width * 0.9224372,
        size.height * 0.8456757);
    path0.cubicTo(
        size.width * 0.9145980,
        size.height * 0.7988288,
        size.width * 0.9203769,
        size.height * 0.7799099,
        size.width * 0.9020101,
        size.height * 0.7477477);
    path0.cubicTo(
        size.width * 0.8998241,
        size.height * 0.7208108,
        size.width * 0.8996985,
        size.height * 0.7223423,
        size.width * 0.8919598,
        size.height * 0.7207207);
    path0.cubicTo(
        size.width * 0.8919598,
        size.height * 0.7207207,
        size.width * 0.8969849,
        size.height * 0.7387387,
        size.width * 0.8969849,
        size.height * 0.7387387);
    path0.cubicTo(
        size.width * 0.8969849,
        size.height * 0.7387387,
        size.width * 0.8844221,
        size.height * 0.7567568,
        size.width * 0.8844221,
        size.height * 0.7567568);
    path0.cubicTo(
        size.width * 0.8844221,
        size.height * 0.7567568,
        size.width * 0.8894472,
        size.height * 0.7747748,
        size.width * 0.8894472,
        size.height * 0.7747748);
    path0.cubicTo(
        size.width * 0.8894472,
        size.height * 0.7747748,
        size.width * 0.8743719,
        size.height * 0.7747748,
        size.width * 0.8743719,
        size.height * 0.7747748);
    path0.cubicTo(
        size.width * 0.8743719,
        size.height * 0.7747748,
        size.width * 0.8819095,
        size.height * 0.8018018,
        size.width * 0.8819095,
        size.height * 0.8018018);
    path0.cubicTo(
        size.width * 0.8819095,
        size.height * 0.8018018,
        size.width * 0.8718593,
        size.height * 0.8288288,
        size.width * 0.8718593,
        size.height * 0.8288288);
    path0.cubicTo(
        size.width * 0.8718593,
        size.height * 0.8288288,
        size.width * 0.8793970,
        size.height * 0.8378378,
        size.width * 0.8793970,
        size.height * 0.8378378);
    path0.cubicTo(
        size.width * 0.8793970,
        size.height * 0.8378378,
        size.width * 0.8768844,
        size.height * 0.8918919,
        size.width * 0.8768844,
        size.height * 0.8918919);
    path0.cubicTo(
        size.width * 0.8768844,
        size.height * 0.8918919,
        size.width * 0.8266332,
        size.height * 0.9099099,
        size.width * 0.8266332,
        size.height * 0.9099099);
    path0.cubicTo(
        size.width * 0.8266332,
        size.height * 0.9099099,
        size.width * 0.8266332,
        size.height * 0.8828829,
        size.width * 0.8266332,
        size.height * 0.8828829);
    path0.cubicTo(
        size.width * 0.8266332,
        size.height * 0.8828829,
        size.width * 0.7663317,
        size.height * 0.8738739,
        size.width * 0.7663317,
        size.height * 0.8738739);
    path0.cubicTo(
        size.width * 0.7663317,
        size.height * 0.8738739,
        size.width * 0.7085427,
        size.height * 0.8521622,
        size.width * 0.7085427,
        size.height * 0.8521622);
    path0.cubicTo(
        size.width * 0.7085427,
        size.height * 0.8521622,
        size.width * 0.6783920,
        size.height * 0.8683784,
        size.width * 0.6783920,
        size.height * 0.8683784);
    path0.cubicTo(
        size.width * 0.6783920,
        size.height * 0.8683784,
        size.width * 0.6507538,
        size.height * 0.8602703,
        size.width * 0.6507538,
        size.height * 0.8602703);
    path0.cubicTo(
        size.width * 0.6507538,
        size.height * 0.8602703,
        size.width * 0.6169347,
        size.height * 0.8602703,
        size.width * 0.6169347,
        size.height * 0.8602703);
    path0.cubicTo(
        size.width * 0.6169347,
        size.height * 0.8602703,
        size.width * 0.6130653,
        size.height * 0.8468468,
        size.width * 0.6130653,
        size.height * 0.8468468);
    path0.cubicTo(
        size.width * 0.6130653,
        size.height * 0.8468468,
        size.width * 0.5829146,
        size.height * 0.8682883,
        size.width * 0.5829146,
        size.height * 0.8682883);
    path0.cubicTo(
        size.width * 0.5829146,
        size.height * 0.8682883,
        size.width * 0.5653266,
        size.height * 0.8682883,
        size.width * 0.5653266,
        size.height * 0.8682883);
    path0.cubicTo(
        size.width * 0.5653266,
        size.height * 0.8682883,
        size.width * 0.5226131,
        size.height * 0.8682883,
        size.width * 0.5226131,
        size.height * 0.8682883);
    path0.cubicTo(
        size.width * 0.5226131,
        size.height * 0.8682883,
        size.width * 0.4924623,
        size.height * 0.8887387,
        size.width * 0.4924623,
        size.height * 0.8887387);
    path0.cubicTo(
        size.width * 0.4924623,
        size.height * 0.8887387,
        size.width * 0.4371859,
        size.height * 0.8738739,
        size.width * 0.4371859,
        size.height * 0.8738739);
    path0.cubicTo(
        size.width * 0.4347739,
        size.height * 0.8423423,
        size.width * 0.4333920,
        size.height * 0.8432432,
        size.width * 0.4246231,
        size.height * 0.8378378);
    path0.cubicTo(
        size.width * 0.4246231,
        size.height * 0.8378378,
        size.width * 0.4346734,
        size.height * 0.8648649,
        size.width * 0.4346734,
        size.height * 0.8648649);
    path0.cubicTo(
        size.width * 0.4346734,
        size.height * 0.8648649,
        size.width * 0.4346734,
        size.height * 0.8834234,
        size.width * 0.4346734,
        size.height * 0.8834234);
    path0.cubicTo(
        size.width * 0.4125126,
        size.height * 0.9021622,
        size.width * 0.3936432,
        size.height * 0.8863063,
        size.width * 0.3718593,
        size.height * 0.8834234);
    path0.cubicTo(
        size.width * 0.3718593,
        size.height * 0.8834234,
        size.width * 0.3542714,
        size.height * 0.8834234,
        size.width * 0.3542714,
        size.height * 0.8834234);
    path0.cubicTo(
        size.width * 0.3542714,
        size.height * 0.8834234,
        size.width * 0.3216080,
        size.height * 0.8834234,
        size.width * 0.3216080,
        size.height * 0.8834234);
    path0.cubicTo(
        size.width * 0.3216080,
        size.height * 0.8834234,
        size.width * 0.2989950,
        size.height * 0.8888288,
        size.width * 0.2989950,
        size.height * 0.8888288);
    path0.cubicTo(
        size.width * 0.2989950,
        size.height * 0.8888288,
        size.width * 0.2713568,
        size.height * 0.8824324,
        size.width * 0.2713568,
        size.height * 0.8824324);
    path0.cubicTo(
        size.width * 0.2713568,
        size.height * 0.8824324,
        size.width * 0.2462312,
        size.height * 0.8896396,
        size.width * 0.2462312,
        size.height * 0.8896396);
    path0.cubicTo(
        size.width * 0.2462312,
        size.height * 0.8896396,
        size.width * 0.2035176,
        size.height * 0.8663964,
        size.width * 0.2035176,
        size.height * 0.8663964);
    path0.cubicTo(
        size.width * 0.2035176,
        size.height * 0.8663964,
        size.width * 0.1331658,
        size.height * 0.8429730,
        size.width * 0.1331658,
        size.height * 0.8429730);
    path0.cubicTo(
        size.width * 0.1331658,
        size.height * 0.8429730,
        size.width * 0.1059548,
        size.height * 0.8202703,
        size.width * 0.1059548,
        size.height * 0.8202703);
    path0.cubicTo(
        size.width * 0.08987437,
        size.height * 0.8099099,
        size.width * 0.08414573,
        size.height * 0.8383784,
        size.width * 0.06532663,
        size.height * 0.8202703);
    path0.cubicTo(
        size.width * 0.06108040,
        size.height * 0.8538739,
        size.width * 0.05331658,
        size.height * 0.8803604,
        size.width * 0.04562814,
        size.height * 0.8364865);
    path0.cubicTo(
        size.width * 0.04562814,
        size.height * 0.8364865,
        size.width * 0.03555276,
        size.height * 0.7117117,
        size.width * 0.03555276,
        size.height * 0.7117117);
    path0.cubicTo(
        size.width * 0.03133166,
        size.height * 0.6529730,
        size.width * 0.03268844,
        size.height * 0.5916216,
        size.width * 0.03266332,
        size.height * 0.5315315);
    path0.cubicTo(
        size.width * 0.03266332,
        size.height * 0.5315315,
        size.width * 0.03050251,
        size.height * 0.4234234,
        size.width * 0.03050251,
        size.height * 0.4234234);
    path0.cubicTo(
        size.width * 0.03050251,
        size.height * 0.4234234,
        size.width * 0.03050251,
        size.height * 0.1891892,
        size.width * 0.03050251,
        size.height * 0.1891892);
    path0.cubicTo(
        size.width * 0.03017588,
        size.height * 0.1481081,
        size.width * 0.02788945,
        size.height * 0.1072973,
        size.width * 0.04020101,
        size.height * 0.09009009);
    path0.cubicTo(
        size.width * 0.04020101,
        size.height * 0.09009009,
        size.width * 0.04020101,
        size.height * 0.05405405,
        size.width * 0.04020101,
        size.height * 0.05405405);
    path0.cubicTo(
        size.width * 0.04020101,
        size.height * 0.05405405,
        size.width * 0.05025126,
        size.height * 0.02702703,
        size.width * 0.05025126,
        size.height * 0.02702703);
    path0.close();
    path0.moveTo(size.width * 0.8190955, size.height * 0.1621622);
    path0.cubicTo(
        size.width * 0.8190955,
        size.height * 0.1621622,
        size.width * 0.8165829,
        size.height * 0.1621622,
        size.width * 0.8165829,
        size.height * 0.1621622);
    path0.cubicTo(
        size.width * 0.8165829,
        size.height * 0.1621622,
        size.width * 0.8190955,
        size.height * 0.1711712,
        size.width * 0.8190955,
        size.height * 0.1711712);
    path0.cubicTo(
        size.width * 0.8190955,
        size.height * 0.1711712,
        size.width * 0.8190955,
        size.height * 0.1621622,
        size.width * 0.8190955,
        size.height * 0.1621622);
    path0.close();
    path0.moveTo(size.width * 0.1005025, size.height * 0.4324324);
    path0.cubicTo(
        size.width * 0.09356784,
        size.height * 0.4576577,
        size.width * 0.09376884,
        size.height * 0.4605405,
        size.width * 0.09296482,
        size.height * 0.4954955);
    path0.cubicTo(
        size.width * 0.1051005,
        size.height * 0.5058559,
        size.width * 0.1103769,
        size.height * 0.5226126,
        size.width * 0.1231156,
        size.height * 0.5045045);
    path0.cubicTo(
        size.width * 0.1231156,
        size.height * 0.5045045,
        size.width * 0.1105528,
        size.height * 0.4864865,
        size.width * 0.1105528,
        size.height * 0.4864865);
    path0.cubicTo(
        size.width * 0.1105528,
        size.height * 0.4864865,
        size.width * 0.1130653,
        size.height * 0.4684685,
        size.width * 0.1130653,
        size.height * 0.4684685);
    path0.cubicTo(
        size.width * 0.1130653,
        size.height * 0.4684685,
        size.width * 0.1005025,
        size.height * 0.4324324,
        size.width * 0.1005025,
        size.height * 0.4324324);
    path0.close();
    path0.moveTo(size.width * 0.3743719, size.height * 0.5405405);
    path0.cubicTo(
        size.width * 0.3743719,
        size.height * 0.5405405,
        size.width * 0.3643216,
        size.height * 0.5495495,
        size.width * 0.3643216,
        size.height * 0.5495495);
    path0.cubicTo(
        size.width * 0.3643216,
        size.height * 0.5495495,
        size.width * 0.3743719,
        size.height * 0.5405405,
        size.width * 0.3743719,
        size.height * 0.5405405);
    path0.close();
    path0.moveTo(size.width * 0.4221106, size.height * 0.5495495);
    path0.cubicTo(
        size.width * 0.4096231,
        size.height * 0.5436036,
        size.width * 0.3965075,
        size.height * 0.5323423,
        size.width * 0.3844221,
        size.height * 0.5495495);
    path0.cubicTo(
        size.width * 0.3959548,
        size.height * 0.5596396,
        size.width * 0.4109045,
        size.height * 0.5654955,
        size.width * 0.4221106,
        size.height * 0.5495495);
    path0.close();
    path0.moveTo(size.width * 0.9070352, size.height * 0.6756757);
    path0.cubicTo(
        size.width * 0.9070352,
        size.height * 0.6756757,
        size.width * 0.8994975,
        size.height * 0.6666667,
        size.width * 0.8994975,
        size.height * 0.6666667);
    path0.cubicTo(
        size.width * 0.8994975,
        size.height * 0.6666667,
        size.width * 0.8994975,
        size.height * 0.6936937,
        size.width * 0.8994975,
        size.height * 0.6936937);
    path0.cubicTo(
        size.width * 0.8994975,
        size.height * 0.6936937,
        size.width * 0.9070352,
        size.height * 0.6756757,
        size.width * 0.9070352,
        size.height * 0.6756757);
    path0.close();
    path0.moveTo(size.width * 0.7989950, size.height * 0.7567568);
    path0.cubicTo(
        size.width * 0.7989950,
        size.height * 0.7567568,
        size.width * 0.7964824,
        size.height * 0.7567568,
        size.width * 0.7964824,
        size.height * 0.7567568);
    path0.cubicTo(
        size.width * 0.7964824,
        size.height * 0.7567568,
        size.width * 0.7989950,
        size.height * 0.7657658,
        size.width * 0.7989950,
        size.height * 0.7657658);
    path0.cubicTo(
        size.width * 0.7989950,
        size.height * 0.7657658,
        size.width * 0.7989950,
        size.height * 0.7567568,
        size.width * 0.7989950,
        size.height * 0.7567568);
    path0.close();
    path0.moveTo(size.width * 0.4497487, size.height * 0.8558559);
    path0.cubicTo(
        size.width * 0.4497487,
        size.height * 0.8558559,
        size.width * 0.4472362,
        size.height * 0.8558559,
        size.width * 0.4472362,
        size.height * 0.8558559);
    path0.cubicTo(
        size.width * 0.4472362,
        size.height * 0.8558559,
        size.width * 0.4497487,
        size.height * 0.8648649,
        size.width * 0.4497487,
        size.height * 0.8648649);
    path0.cubicTo(
        size.width * 0.4497487,
        size.height * 0.8648649,
        size.width * 0.4497487,
        size.height * 0.8558559,
        size.width * 0.4497487,
        size.height * 0.8558559);
    path0.close();
    path0.moveTo(size.width * 0.7537688, size.height * 0.8558559);
    path0.cubicTo(
        size.width * 0.7537688,
        size.height * 0.8558559,
        size.width * 0.7512563,
        size.height * 0.8558559,
        size.width * 0.7512563,
        size.height * 0.8558559);
    path0.cubicTo(
        size.width * 0.7512563,
        size.height * 0.8558559,
        size.width * 0.7537688,
        size.height * 0.8648649,
        size.width * 0.7537688,
        size.height * 0.8648649);
    path0.cubicTo(
        size.width * 0.7537688,
        size.height * 0.8648649,
        size.width * 0.7537688,
        size.height * 0.8558559,
        size.width * 0.7537688,
        size.height * 0.8558559);
    path0.close();
    path0.moveTo(size.width * 0.4472362, size.height * 0.8648649);
    path0.cubicTo(
        size.width * 0.4472362,
        size.height * 0.8648649,
        size.width * 0.4447236,
        size.height * 0.8648649,
        size.width * 0.4447236,
        size.height * 0.8648649);
    path0.cubicTo(
        size.width * 0.4447236,
        size.height * 0.8648649,
        size.width * 0.4472362,
        size.height * 0.8738739,
        size.width * 0.4472362,
        size.height * 0.8738739);
    path0.cubicTo(
        size.width * 0.4472362,
        size.height * 0.8738739,
        size.width * 0.4472362,
        size.height * 0.8648649,
        size.width * 0.4472362,
        size.height * 0.8648649);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(oldClipper) {
    return false;
  }
}

class BackgroundClipperButton extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.3750000, size.height * 0.04000000);
    path0.cubicTo(size.width * 0.3750000, size.height * 0.04000000,
        size.width * 0.4662162, 0, size.width * 0.4662162, 0);
    path0.cubicTo(
        size.width * 0.4662162,
        0,
        size.width * 0.4628378,
        size.height * 0.04000000,
        size.width * 0.4628378,
        size.height * 0.04000000);
    path0.cubicTo(size.width * 0.4628378, size.height * 0.04000000,
        size.width * 0.4797297, 0, size.width * 0.4797297, 0);
    path0.cubicTo(
        size.width * 0.4797297,
        0,
        size.width * 0.4825338,
        size.height * 0.01933333,
        size.width * 0.4825338,
        size.height * 0.01933333);
    path0.cubicTo(
        size.width * 0.4825338,
        size.height * 0.01933333,
        size.width * 0.5337838,
        size.height * 0.06666667,
        size.width * 0.5337838,
        size.height * 0.06666667);
    path0.cubicTo(
        size.width * 0.5415878,
        size.height * 0.02920000,
        size.width * 0.5525676,
        size.height * 0.02600000,
        size.width * 0.5641892,
        size.height * 0.01506667);
    path0.cubicTo(
        size.width * 0.6065203,
        size.height * -0.02480000,
        size.width * 0.6272635,
        size.height * 0.02133333,
        size.width * 0.6660811,
        size.height * 0.06053333);
    path0.cubicTo(
        size.width * 0.6790541,
        size.height * 0.07360000,
        size.width * 0.6966892,
        size.height * 0.05226667,
        size.width * 0.7060811,
        size.height * 0.09333333);
    path0.cubicTo(
        size.width * 0.7422297,
        size.height * 0.03333333,
        size.width * 0.7413176,
        size.height * 0.05120000,
        size.width * 0.7770270,
        size.height * 0.05093333);
    path0.cubicTo(
        size.width * 0.7770270,
        size.height * 0.05093333,
        size.width * 0.8006757,
        size.height * 0.04120000,
        size.width * 0.8006757,
        size.height * 0.04120000);
    path0.cubicTo(
        size.width * 0.8330405,
        size.height * 0.03240000,
        size.width * 0.8363514,
        size.height * 0.04746667,
        size.width * 0.8648649,
        size.height * 0.08680000);
    path0.cubicTo(
        size.width * 0.8648649,
        size.height * 0.08680000,
        size.width * 0.9061824,
        size.height * 0.1221333,
        size.width * 0.9061824,
        size.height * 0.1221333);
    path0.cubicTo(
        size.width * 0.9094595,
        size.height * 0.1326667,
        size.width * 0.9082095,
        size.height * 0.1389333,
        size.width * 0.9087838,
        size.height * 0.1466667);
    path0.cubicTo(
        size.width * 0.9087838,
        size.height * 0.1466667,
        size.width * 0.9493243,
        size.height * 0.1466667,
        size.width * 0.9493243,
        size.height * 0.1466667);
    path0.cubicTo(
        size.width * 0.9493243,
        size.height * 0.1466667,
        size.width * 0.9425676,
        size.height * 0.1866667,
        size.width * 0.9425676,
        size.height * 0.1866667);
    path0.cubicTo(
        size.width * 0.9539865,
        size.height * 0.1888000,
        size.width * 0.9662500,
        size.height * 0.1912000,
        size.width * 0.9756081,
        size.height * 0.2208000);
    path0.cubicTo(
        size.width * 1.009020,
        size.height * 0.3266667,
        size.width * 1.006318,
        size.height * 0.6480000,
        size.width * 0.9795946,
        size.height * 0.7697333);
    path0.cubicTo(
        size.width * 0.9686486,
        size.height * 0.8194667,
        size.width * 0.9255743,
        size.height * 0.8218667,
        size.width * 0.9085135,
        size.height * 0.8221333);
    path0.cubicTo(
        size.width * 0.9085135,
        size.height * 0.8221333,
        size.width * 0.7972973,
        size.height * 0.8762667,
        size.width * 0.7972973,
        size.height * 0.8762667);
    path0.cubicTo(
        size.width * 0.7693243,
        size.height * 0.8902667,
        size.width * 0.7509459,
        size.height * 0.8928000,
        size.width * 0.7229730,
        size.height * 0.8933333);
    path0.cubicTo(
        size.width * 0.7229730,
        size.height * 0.8933333,
        size.width * 0.6689189,
        size.height * 0.9094667,
        size.width * 0.6689189,
        size.height * 0.9094667);
    path0.cubicTo(
        size.width * 0.6689189,
        size.height * 0.9094667,
        size.width * 0.6438514,
        size.height * 0.9290667,
        size.width * 0.6438514,
        size.height * 0.9290667);
    path0.cubicTo(
        size.width * 0.6438514,
        size.height * 0.9290667,
        size.width * 0.6081081,
        size.height * 0.9205333,
        size.width * 0.6081081,
        size.height * 0.9205333);
    path0.cubicTo(
        size.width * 0.6081081,
        size.height * 0.9205333,
        size.width * 0.5777027,
        size.height * 0.9330667,
        size.width * 0.5777027,
        size.height * 0.9330667);
    path0.cubicTo(
        size.width * 0.5777027,
        size.height * 0.9330667,
        size.width * 0.5202703,
        size.height * 0.9330667,
        size.width * 0.5202703,
        size.height * 0.9330667);
    path0.cubicTo(
        size.width * 0.5202703,
        size.height * 0.9330667,
        size.width * 0.4797297,
        size.height * 0.9454667,
        size.width * 0.4797297,
        size.height * 0.9454667);
    path0.cubicTo(
        size.width * 0.4797297,
        size.height * 0.9454667,
        size.width * 0.4222973,
        size.height * 0.9605333,
        size.width * 0.4222973,
        size.height * 0.9605333);
    path0.cubicTo(
        size.width * 0.4072297,
        size.height * 0.9660000,
        size.width * 0.4039865,
        size.height * 0.9821333,
        size.width * 0.3885135,
        size.height * 0.9782667);
    path0.cubicTo(
        size.width * 0.3885135,
        size.height * 0.9782667,
        size.width * 0.2567568,
        size.height * 0.9906667,
        size.width * 0.2567568,
        size.height * 0.9906667);
    path0.cubicTo(
        size.width * 0.2451014,
        size.height * 0.9990667,
        size.width * 0.2404730,
        size.height * 0.9902667,
        size.width * 0.2297297,
        size.height * 0.9906667);
    path0.cubicTo(
        size.width * 0.2297297,
        size.height * 0.9906667,
        size.width * 0.2027027,
        size.height * 0.9906667,
        size.width * 0.2027027,
        size.height * 0.9906667);
    path0.cubicTo(
        size.width * 0.2027027,
        size.height * 0.9906667,
        size.width * 0.1621622,
        size.height * 0.9906667,
        size.width * 0.1621622,
        size.height * 0.9906667);
    path0.cubicTo(
        size.width * 0.1621622,
        size.height * 0.9906667,
        size.width * 0.1385135,
        size.height * 0.9906667,
        size.width * 0.1385135,
        size.height * 0.9906667);
    path0.cubicTo(
        size.width * 0.1385135,
        size.height * 0.9906667,
        size.width * 0.08108108,
        size.height * 0.9600000,
        size.width * 0.08108108,
        size.height * 0.9600000);
    path0.cubicTo(
        size.width * 0.08108108,
        size.height * 0.9600000,
        size.width * 0.1385135,
        size.height * 0.9600000,
        size.width * 0.1385135,
        size.height * 0.9600000);
    path0.cubicTo(
        size.width * 0.1653041,
        size.height * 0.9601333,
        size.width * 0.1883446,
        size.height * 1.004133,
        size.width * 0.2094595,
        size.height * 0.9200000);
    path0.cubicTo(
        size.width * 0.2094595,
        size.height * 0.9200000,
        size.width * 0.1114865,
        size.height * 0.9200000,
        size.width * 0.1114865,
        size.height * 0.9200000);
    path0.cubicTo(
        size.width * 0.1114865,
        size.height * 0.9200000,
        size.width * 0.06756757,
        size.height * 0.9072000,
        size.width * 0.06756757,
        size.height * 0.9072000);
    path0.cubicTo(
        size.width * 0.04489865,
        size.height * 0.9033333,
        size.width * 0.02148649,
        size.height * 0.9296000,
        0,
        size.height * 0.8933333);
    path0.cubicTo(
        0,
        size.height * 0.8933333,
        size.width * 0.04084459,
        size.height * 0.8466667,
        size.width * 0.04084459,
        size.height * 0.8466667);
    path0.cubicTo(
        size.width * 0.04084459,
        size.height * 0.8466667,
        size.width * 0.05712838,
        size.height * 0.8466667,
        size.width * 0.05712838,
        size.height * 0.8466667);
    path0.cubicTo(
        size.width * 0.05712838,
        size.height * 0.8466667,
        size.width * 0.07800676,
        size.height * 0.8073333,
        size.width * 0.07800676,
        size.height * 0.8073333);
    path0.cubicTo(
        size.width * 0.07800676,
        size.height * 0.8073333,
        size.width * 0.1148649,
        size.height * 0.7733333,
        size.width * 0.1148649,
        size.height * 0.7733333);
    path0.cubicTo(
        size.width * 0.1148649,
        size.height * 0.7733333,
        size.width * 0.1047297,
        size.height * 0.7600000,
        size.width * 0.1047297,
        size.height * 0.7600000);
    path0.cubicTo(
        size.width * 0.09706081,
        size.height * 0.7884000,
        size.width * 0.09101351,
        size.height * 0.7741333,
        size.width * 0.08108108,
        size.height * 0.7708000);
    path0.cubicTo(
        size.width * 0.06462838,
        size.height * 0.7654667,
        size.width * 0.04939189,
        size.height * 0.7729333,
        size.width * 0.03378378,
        size.height * 0.7466667);
    path0.cubicTo(
        size.width * 0.03378378,
        size.height * 0.7466667,
        size.width * 0.06756757,
        size.height * 0.7066667,
        size.width * 0.06756757,
        size.height * 0.7066667);
    path0.cubicTo(
        size.width * 0.06756757,
        size.height * 0.7066667,
        size.width * 0.05067568,
        size.height * 0.7066667,
        size.width * 0.05067568,
        size.height * 0.7066667);
    path0.cubicTo(
        size.width * 0.05067568,
        size.height * 0.7066667,
        size.width * 0.05067568,
        size.height * 0.6666667,
        size.width * 0.05067568,
        size.height * 0.6666667);
    path0.cubicTo(
        size.width * 0.03716216,
        size.height * 0.6634667,
        size.width * 0.03195946,
        size.height * 0.6672000,
        size.width * 0.02702703,
        size.height * 0.6133333);
    path0.cubicTo(
        size.width * -0.007128378,
        size.height * 0.5908000,
        size.width * 0.002432432,
        size.height * 0.4584000,
        0,
        size.height * 0.3600000);
    path0.cubicTo(
        size.width * 0.02489865,
        size.height * 0.2661333,
        size.width * 0.006283784,
        size.height * 0.2650667,
        size.width * 0.04729730,
        size.height * 0.2133333);
    path0.cubicTo(
        size.width * 0.04729730,
        size.height * 0.2133333,
        size.width * 0.03716216,
        size.height * 0.1866667,
        size.width * 0.03716216,
        size.height * 0.1866667);
    path0.cubicTo(
        size.width * 0.05469595,
        size.height * 0.1698667,
        size.width * 0.1033446,
        size.height * 0.1685333,
        size.width * 0.1216216,
        size.height * 0.1798667);
    path0.cubicTo(
        size.width * 0.1406419,
        size.height * 0.1917333,
        size.width * 0.1595946,
        size.height * 0.2092000,
        size.width * 0.1790541,
        size.height * 0.2088000);
    path0.cubicTo(
        size.width * 0.2000000,
        size.height * 0.2084000,
        size.width * 0.2084122,
        size.height * 0.1776000,
        size.width * 0.2235473,
        size.height * 0.1620000);
    path0.cubicTo(
        size.width * 0.2235473,
        size.height * 0.1620000,
        size.width * 0.2500000,
        size.height * 0.1449333,
        size.width * 0.2500000,
        size.height * 0.1449333);
    path0.cubicTo(
        size.width * 0.2643581,
        size.height * 0.1370667,
        size.width * 0.3089527,
        size.height * 0.1068000,
        size.width * 0.3141892,
        size.height * 0.1733333);
    path0.cubicTo(
        size.width * 0.3141892,
        size.height * 0.1733333,
        size.width * 0.3310811,
        size.height * 0.1733333,
        size.width * 0.3310811,
        size.height * 0.1733333);
    path0.cubicTo(
        size.width * 0.3385473,
        size.height * 0.08653333,
        size.width * 0.3655068,
        size.height * 0.08626667,
        size.width * 0.3851351,
        size.height * 0.06666667);
    path0.cubicTo(
        size.width * 0.3851351,
        size.height * 0.06666667,
        size.width * 0.3750000,
        size.height * 0.04000000,
        size.width * 0.3750000,
        size.height * 0.04000000);
    path0.close();
    path0.moveTo(size.width * 0.9358108, size.height * 0.5200000);
    path0.cubicTo(
        size.width * 0.9358108,
        size.height * 0.5200000,
        size.width * 0.9324324,
        size.height * 0.5200000,
        size.width * 0.9324324,
        size.height * 0.5200000);
    path0.cubicTo(
        size.width * 0.9324324,
        size.height * 0.5200000,
        size.width * 0.9358108,
        size.height * 0.5333333,
        size.width * 0.9358108,
        size.height * 0.5333333);
    path0.cubicTo(
        size.width * 0.9358108,
        size.height * 0.5333333,
        size.width * 0.9358108,
        size.height * 0.5200000,
        size.width * 0.9358108,
        size.height * 0.5200000);
    path0.close();
    path0.moveTo(size.width * 0.9189189, size.height * 0.5733333);
    path0.cubicTo(
        size.width * 0.9089189,
        size.height * 0.5241333,
        size.width * 0.8967230,
        size.height * 0.5390667,
        size.width * 0.8851351,
        size.height * 0.5733333);
    path0.cubicTo(
        size.width * 0.8851351,
        size.height * 0.5733333,
        size.width * 0.9189189,
        size.height * 0.5733333,
        size.width * 0.9189189,
        size.height * 0.5733333);
    path0.close();
    path0.moveTo(size.width * 0.9256757, size.height * 0.5333333);
    path0.cubicTo(
        size.width * 0.9256757,
        size.height * 0.5333333,
        size.width * 0.9222973,
        size.height * 0.5333333,
        size.width * 0.9222973,
        size.height * 0.5333333);
    path0.cubicTo(
        size.width * 0.9222973,
        size.height * 0.5333333,
        size.width * 0.9256757,
        size.height * 0.5466667,
        size.width * 0.9256757,
        size.height * 0.5466667);
    path0.cubicTo(
        size.width * 0.9256757,
        size.height * 0.5466667,
        size.width * 0.9256757,
        size.height * 0.5333333,
        size.width * 0.9256757,
        size.height * 0.5333333);
    path0.close();
    path0.moveTo(size.width * 0.9290541, size.height * 0.5466667);
    path0.cubicTo(
        size.width * 0.9290541,
        size.height * 0.5466667,
        size.width * 0.9256757,
        size.height * 0.5466667,
        size.width * 0.9256757,
        size.height * 0.5466667);
    path0.cubicTo(
        size.width * 0.9256757,
        size.height * 0.5466667,
        size.width * 0.9290541,
        size.height * 0.5600000,
        size.width * 0.9290541,
        size.height * 0.5600000);
    path0.cubicTo(
        size.width * 0.9290541,
        size.height * 0.5600000,
        size.width * 0.9290541,
        size.height * 0.5466667,
        size.width * 0.9290541,
        size.height * 0.5466667);
    path0.close();
    path0.moveTo(size.width * 0.9391892, size.height * 0.6666667);
    path0.cubicTo(
        size.width * 0.9391892,
        size.height * 0.6666667,
        size.width * 0.9358108,
        size.height * 0.6666667,
        size.width * 0.9358108,
        size.height * 0.6666667);
    path0.cubicTo(
        size.width * 0.9358108,
        size.height * 0.6666667,
        size.width * 0.9391892,
        size.height * 0.6800000,
        size.width * 0.9391892,
        size.height * 0.6800000);
    path0.cubicTo(
        size.width * 0.9391892,
        size.height * 0.6800000,
        size.width * 0.9391892,
        size.height * 0.6666667,
        size.width * 0.9391892,
        size.height * 0.6666667);
    path0.close();
    path0.moveTo(size.width * 0.1182432, size.height * 0.7600000);
    path0.cubicTo(
        size.width * 0.1182432,
        size.height * 0.7600000,
        size.width * 0.1148649,
        size.height * 0.7600000,
        size.width * 0.1148649,
        size.height * 0.7600000);
    path0.cubicTo(
        size.width * 0.1148649,
        size.height * 0.7600000,
        size.width * 0.1182432,
        size.height * 0.7733333,
        size.width * 0.1182432,
        size.height * 0.7733333);
    path0.cubicTo(
        size.width * 0.1182432,
        size.height * 0.7733333,
        size.width * 0.1182432,
        size.height * 0.7600000,
        size.width * 0.1182432,
        size.height * 0.7600000);
    path0.close();
    path0.moveTo(size.width * 0.3716216, size.height * 0.8933333);
    path0.cubicTo(
        size.width * 0.3716216,
        size.height * 0.8933333,
        size.width * 0.3479730,
        size.height * 0.9066667,
        size.width * 0.3479730,
        size.height * 0.9066667);
    path0.cubicTo(
        size.width * 0.3479730,
        size.height * 0.9066667,
        size.width * 0.3716216,
        size.height * 0.8933333,
        size.width * 0.3716216,
        size.height * 0.8933333);
    path0.close();
    path0.moveTo(size.width * 0.2770270, size.height * 0.9466667);
    path0.cubicTo(
        size.width * 0.2770270,
        size.height * 0.9466667,
        size.width * 0.2668919,
        size.height * 0.9066667,
        size.width * 0.2668919,
        size.height * 0.9066667);
    path0.cubicTo(
        size.width * 0.2668919,
        size.height * 0.9066667,
        size.width * 0.2770270,
        size.height * 0.9466667,
        size.width * 0.2770270,
        size.height * 0.9466667);
    path0.close();
    path0.moveTo(size.width * 0.3952703, size.height * 0.9600000);
    path0.cubicTo(
        size.width * 0.3952703,
        size.height * 0.9600000,
        size.width * 0.3918919,
        size.height * 0.9600000,
        size.width * 0.3918919,
        size.height * 0.9600000);
    path0.cubicTo(
        size.width * 0.3918919,
        size.height * 0.9600000,
        size.width * 0.3952703,
        size.height * 0.9733333,
        size.width * 0.3952703,
        size.height * 0.9733333);
    path0.cubicTo(
        size.width * 0.3952703,
        size.height * 0.9733333,
        size.width * 0.3952703,
        size.height * 0.9600000,
        size.width * 0.3952703,
        size.height * 0.9600000);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(oldClipper) {
    return false;
  }
}
