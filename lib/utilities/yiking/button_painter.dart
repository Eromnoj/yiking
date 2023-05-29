import 'package:flutter/material.dart';

class ButtonPainter extends CustomPainter {
  int select;

  Size containerSize;

  ButtonPainter(this.select, this.containerSize);

  @override
  void paint(Canvas canvas, Size size) {
    size = containerSize;

    switch (select) {
      case 6:
        _mYin(canvas);
        break;
      case 7:
        _yang(canvas);
        break;
      case 8:
        _yin(canvas);
        break;
      default:
        _mYang(canvas);
    }
  }

  Path _strokePath(Size size) {
    Path strokePath = Path();
    strokePath.moveTo(size.width * 0.05025126, size.height * 0.02702703);
    strokePath.cubicTo(
        size.width * 0.05025126,
        size.height * 0.02702703,
        size.width * 0.06783920,
        size.height * 0.04504505,
        size.width * 0.06783920,
        size.height * 0.04504505);
    strokePath.cubicTo(
        size.width * 0.07253769,
        size.height * 0.08864865,
        size.width * 0.1129397,
        size.height * 0.08684685,
        size.width * 0.1256281,
        size.height * 0.09405405);
    strokePath.cubicTo(
        size.width * 0.1451508,
        size.height * 0.1050450,
        size.width * 0.1635930,
        size.height * 0.1282883,
        size.width * 0.1834171,
        size.height * 0.1298198);
    strokePath.cubicTo(
        size.width * 0.1834171,
        size.height * 0.1298198,
        size.width * 0.2236181,
        size.height * 0.1395495,
        size.width * 0.2236181,
        size.height * 0.1395495);
    strokePath.cubicTo(
        size.width * 0.2236181,
        size.height * 0.1395495,
        size.width * 0.2989950,
        size.height * 0.1441441,
        size.width * 0.2989950,
        size.height * 0.1441441);
    strokePath.cubicTo(
        size.width * 0.2989950,
        size.height * 0.1441441,
        size.width * 0.3592965,
        size.height * 0.1590991,
        size.width * 0.3592965,
        size.height * 0.1590991);
    strokePath.cubicTo(
        size.width * 0.3592965,
        size.height * 0.1590991,
        size.width * 0.4195980,
        size.height * 0.1434234,
        size.width * 0.4195980,
        size.height * 0.1434234);
    strokePath.cubicTo(
        size.width * 0.4195980,
        size.height * 0.1434234,
        size.width * 0.4547739,
        size.height * 0.1434234,
        size.width * 0.4547739,
        size.height * 0.1434234);
    strokePath.cubicTo(
        size.width * 0.4547739,
        size.height * 0.1434234,
        size.width * 0.4773869,
        size.height * 0.1359459,
        size.width * 0.4773869,
        size.height * 0.1359459);
    strokePath.cubicTo(
        size.width * 0.4773869,
        size.height * 0.1359459,
        size.width * 0.5075377,
        size.height * 0.1441441,
        size.width * 0.5075377,
        size.height * 0.1441441);
    strokePath.cubicTo(
        size.width * 0.5075377,
        size.height * 0.1441441,
        size.width * 0.7035176,
        size.height * 0.1441441,
        size.width * 0.7035176,
        size.height * 0.1441441);
    strokePath.cubicTo(
        size.width * 0.7035176,
        size.height * 0.1441441,
        size.width * 0.7286432,
        size.height * 0.1367568,
        size.width * 0.7286432,
        size.height * 0.1367568);
    strokePath.cubicTo(
        size.width * 0.7286432,
        size.height * 0.1367568,
        size.width * 0.7663317,
        size.height * 0.1441441,
        size.width * 0.7663317,
        size.height * 0.1441441);
    strokePath.cubicTo(
        size.width * 0.7663317,
        size.height * 0.1441441,
        size.width * 0.8189950,
        size.height * 0.1281982,
        size.width * 0.8189950,
        size.height * 0.1281982);
    strokePath.cubicTo(
        size.width * 0.8536935,
        size.height * 0.1309009,
        size.width * 0.8455276,
        size.height * 0.1054054,
        size.width * 0.8894472,
        size.height * 0.1281982);
    strokePath.cubicTo(
        size.width * 0.9009548,
        size.height * 0.1330631,
        size.width * 0.9098744,
        size.height * 0.1276577,
        size.width * 0.9170854,
        size.height * 0.1621622);
    strokePath.cubicTo(
        size.width * 0.9170854,
        size.height * 0.1621622,
        size.width * 0.9296482,
        size.height * 0.1171171,
        size.width * 0.9296482,
        size.height * 0.1171171);
    strokePath.cubicTo(
        size.width * 0.9297487,
        size.height * 0.1542342,
        size.width * 0.9395226,
        size.height * 0.2481081,
        size.width * 0.9426131,
        size.height * 0.2882883);
    strokePath.cubicTo(
        size.width * 0.9503015,
        size.height * 0.3885586,
        size.width * 0.9699246,
        size.height * 0.6459459,
        size.width * 0.9670101,
        size.height * 0.7387387);
    strokePath.cubicTo(
        size.width * 0.9670101,
        size.height * 0.7387387,
        size.width * 0.9597990,
        size.height * 0.8378378,
        size.width * 0.9597990,
        size.height * 0.8378378);
    strokePath.cubicTo(
        size.width * 0.9436181,
        size.height * 0.8437838,
        size.width * 0.9470603,
        size.height * 0.8730631,
        size.width * 0.9346734,
        size.height * 0.9009009);
    strokePath.cubicTo(
        size.width * 0.9346734,
        size.height * 0.9009009,
        size.width * 0.9224372,
        size.height * 0.8456757,
        size.width * 0.9224372,
        size.height * 0.8456757);
    strokePath.cubicTo(
        size.width * 0.9145980,
        size.height * 0.7988288,
        size.width * 0.9203769,
        size.height * 0.7799099,
        size.width * 0.9020101,
        size.height * 0.7477477);
    strokePath.cubicTo(
        size.width * 0.8998241,
        size.height * 0.7208108,
        size.width * 0.8996985,
        size.height * 0.7223423,
        size.width * 0.8919598,
        size.height * 0.7207207);
    strokePath.cubicTo(
        size.width * 0.8919598,
        size.height * 0.7207207,
        size.width * 0.8969849,
        size.height * 0.7387387,
        size.width * 0.8969849,
        size.height * 0.7387387);
    strokePath.cubicTo(
        size.width * 0.8969849,
        size.height * 0.7387387,
        size.width * 0.8844221,
        size.height * 0.7567568,
        size.width * 0.8844221,
        size.height * 0.7567568);
    strokePath.cubicTo(
        size.width * 0.8844221,
        size.height * 0.7567568,
        size.width * 0.8894472,
        size.height * 0.7747748,
        size.width * 0.8894472,
        size.height * 0.7747748);
    strokePath.cubicTo(
        size.width * 0.8894472,
        size.height * 0.7747748,
        size.width * 0.8743719,
        size.height * 0.7747748,
        size.width * 0.8743719,
        size.height * 0.7747748);
    strokePath.cubicTo(
        size.width * 0.8743719,
        size.height * 0.7747748,
        size.width * 0.8819095,
        size.height * 0.8018018,
        size.width * 0.8819095,
        size.height * 0.8018018);
    strokePath.cubicTo(
        size.width * 0.8819095,
        size.height * 0.8018018,
        size.width * 0.8718593,
        size.height * 0.8288288,
        size.width * 0.8718593,
        size.height * 0.8288288);
    strokePath.cubicTo(
        size.width * 0.8718593,
        size.height * 0.8288288,
        size.width * 0.8793970,
        size.height * 0.8378378,
        size.width * 0.8793970,
        size.height * 0.8378378);
    strokePath.cubicTo(
        size.width * 0.8793970,
        size.height * 0.8378378,
        size.width * 0.8768844,
        size.height * 0.8918919,
        size.width * 0.8768844,
        size.height * 0.8918919);
    strokePath.cubicTo(
        size.width * 0.8768844,
        size.height * 0.8918919,
        size.width * 0.8266332,
        size.height * 0.9099099,
        size.width * 0.8266332,
        size.height * 0.9099099);
    strokePath.cubicTo(
        size.width * 0.8266332,
        size.height * 0.9099099,
        size.width * 0.8266332,
        size.height * 0.8828829,
        size.width * 0.8266332,
        size.height * 0.8828829);
    strokePath.cubicTo(
        size.width * 0.8266332,
        size.height * 0.8828829,
        size.width * 0.7663317,
        size.height * 0.8738739,
        size.width * 0.7663317,
        size.height * 0.8738739);
    strokePath.cubicTo(
        size.width * 0.7663317,
        size.height * 0.8738739,
        size.width * 0.7085427,
        size.height * 0.8521622,
        size.width * 0.7085427,
        size.height * 0.8521622);
    strokePath.cubicTo(
        size.width * 0.7085427,
        size.height * 0.8521622,
        size.width * 0.6783920,
        size.height * 0.8683784,
        size.width * 0.6783920,
        size.height * 0.8683784);
    strokePath.cubicTo(
        size.width * 0.6783920,
        size.height * 0.8683784,
        size.width * 0.6507538,
        size.height * 0.8602703,
        size.width * 0.6507538,
        size.height * 0.8602703);
    strokePath.cubicTo(
        size.width * 0.6507538,
        size.height * 0.8602703,
        size.width * 0.6169347,
        size.height * 0.8602703,
        size.width * 0.6169347,
        size.height * 0.8602703);
    strokePath.cubicTo(
        size.width * 0.6169347,
        size.height * 0.8602703,
        size.width * 0.6130653,
        size.height * 0.8468468,
        size.width * 0.6130653,
        size.height * 0.8468468);
    strokePath.cubicTo(
        size.width * 0.6130653,
        size.height * 0.8468468,
        size.width * 0.5829146,
        size.height * 0.8682883,
        size.width * 0.5829146,
        size.height * 0.8682883);
    strokePath.cubicTo(
        size.width * 0.5829146,
        size.height * 0.8682883,
        size.width * 0.5653266,
        size.height * 0.8682883,
        size.width * 0.5653266,
        size.height * 0.8682883);
    strokePath.cubicTo(
        size.width * 0.5653266,
        size.height * 0.8682883,
        size.width * 0.5226131,
        size.height * 0.8682883,
        size.width * 0.5226131,
        size.height * 0.8682883);
    strokePath.cubicTo(
        size.width * 0.5226131,
        size.height * 0.8682883,
        size.width * 0.4924623,
        size.height * 0.8887387,
        size.width * 0.4924623,
        size.height * 0.8887387);
    strokePath.cubicTo(
        size.width * 0.4924623,
        size.height * 0.8887387,
        size.width * 0.4371859,
        size.height * 0.8738739,
        size.width * 0.4371859,
        size.height * 0.8738739);
    strokePath.cubicTo(
        size.width * 0.4347739,
        size.height * 0.8423423,
        size.width * 0.4333920,
        size.height * 0.8432432,
        size.width * 0.4246231,
        size.height * 0.8378378);
    strokePath.cubicTo(
        size.width * 0.4246231,
        size.height * 0.8378378,
        size.width * 0.4346734,
        size.height * 0.8648649,
        size.width * 0.4346734,
        size.height * 0.8648649);
    strokePath.cubicTo(
        size.width * 0.4346734,
        size.height * 0.8648649,
        size.width * 0.4346734,
        size.height * 0.8834234,
        size.width * 0.4346734,
        size.height * 0.8834234);
    strokePath.cubicTo(
        size.width * 0.4125126,
        size.height * 0.9021622,
        size.width * 0.3936432,
        size.height * 0.8863063,
        size.width * 0.3718593,
        size.height * 0.8834234);
    strokePath.cubicTo(
        size.width * 0.3718593,
        size.height * 0.8834234,
        size.width * 0.3542714,
        size.height * 0.8834234,
        size.width * 0.3542714,
        size.height * 0.8834234);
    strokePath.cubicTo(
        size.width * 0.3542714,
        size.height * 0.8834234,
        size.width * 0.3216080,
        size.height * 0.8834234,
        size.width * 0.3216080,
        size.height * 0.8834234);
    strokePath.cubicTo(
        size.width * 0.3216080,
        size.height * 0.8834234,
        size.width * 0.2989950,
        size.height * 0.8888288,
        size.width * 0.2989950,
        size.height * 0.8888288);
    strokePath.cubicTo(
        size.width * 0.2989950,
        size.height * 0.8888288,
        size.width * 0.2713568,
        size.height * 0.8824324,
        size.width * 0.2713568,
        size.height * 0.8824324);
    strokePath.cubicTo(
        size.width * 0.2713568,
        size.height * 0.8824324,
        size.width * 0.2462312,
        size.height * 0.8896396,
        size.width * 0.2462312,
        size.height * 0.8896396);
    strokePath.cubicTo(
        size.width * 0.2462312,
        size.height * 0.8896396,
        size.width * 0.2035176,
        size.height * 0.8663964,
        size.width * 0.2035176,
        size.height * 0.8663964);
    strokePath.cubicTo(
        size.width * 0.2035176,
        size.height * 0.8663964,
        size.width * 0.1331658,
        size.height * 0.8429730,
        size.width * 0.1331658,
        size.height * 0.8429730);
    strokePath.cubicTo(
        size.width * 0.1331658,
        size.height * 0.8429730,
        size.width * 0.1059548,
        size.height * 0.8202703,
        size.width * 0.1059548,
        size.height * 0.8202703);
    strokePath.cubicTo(
        size.width * 0.08987437,
        size.height * 0.8099099,
        size.width * 0.08414573,
        size.height * 0.8383784,
        size.width * 0.06532663,
        size.height * 0.8202703);
    strokePath.cubicTo(
        size.width * 0.06108040,
        size.height * 0.8538739,
        size.width * 0.05331658,
        size.height * 0.8803604,
        size.width * 0.04562814,
        size.height * 0.8364865);
    strokePath.cubicTo(
        size.width * 0.04562814,
        size.height * 0.8364865,
        size.width * 0.03555276,
        size.height * 0.7117117,
        size.width * 0.03555276,
        size.height * 0.7117117);
    strokePath.cubicTo(
        size.width * 0.03133166,
        size.height * 0.6529730,
        size.width * 0.03268844,
        size.height * 0.5916216,
        size.width * 0.03266332,
        size.height * 0.5315315);
    strokePath.cubicTo(
        size.width * 0.03266332,
        size.height * 0.5315315,
        size.width * 0.03050251,
        size.height * 0.4234234,
        size.width * 0.03050251,
        size.height * 0.4234234);
    strokePath.cubicTo(
        size.width * 0.03050251,
        size.height * 0.4234234,
        size.width * 0.03050251,
        size.height * 0.1891892,
        size.width * 0.03050251,
        size.height * 0.1891892);
    strokePath.cubicTo(
        size.width * 0.03017588,
        size.height * 0.1481081,
        size.width * 0.02788945,
        size.height * 0.1072973,
        size.width * 0.04020101,
        size.height * 0.09009009);
    strokePath.cubicTo(
        size.width * 0.04020101,
        size.height * 0.09009009,
        size.width * 0.04020101,
        size.height * 0.05405405,
        size.width * 0.04020101,
        size.height * 0.05405405);
    strokePath.cubicTo(
        size.width * 0.04020101,
        size.height * 0.05405405,
        size.width * 0.05025126,
        size.height * 0.02702703,
        size.width * 0.05025126,
        size.height * 0.02702703);
    strokePath.close();
    strokePath.moveTo(size.width * 0.8190955, size.height * 0.1621622);
    strokePath.cubicTo(
        size.width * 0.8190955,
        size.height * 0.1621622,
        size.width * 0.8165829,
        size.height * 0.1621622,
        size.width * 0.8165829,
        size.height * 0.1621622);
    strokePath.cubicTo(
        size.width * 0.8165829,
        size.height * 0.1621622,
        size.width * 0.8190955,
        size.height * 0.1711712,
        size.width * 0.8190955,
        size.height * 0.1711712);
    strokePath.cubicTo(
        size.width * 0.8190955,
        size.height * 0.1711712,
        size.width * 0.8190955,
        size.height * 0.1621622,
        size.width * 0.8190955,
        size.height * 0.1621622);
    strokePath.close();
    strokePath.moveTo(size.width * 0.1005025, size.height * 0.4324324);
    strokePath.cubicTo(
        size.width * 0.09356784,
        size.height * 0.4576577,
        size.width * 0.09376884,
        size.height * 0.4605405,
        size.width * 0.09296482,
        size.height * 0.4954955);
    strokePath.cubicTo(
        size.width * 0.1051005,
        size.height * 0.5058559,
        size.width * 0.1103769,
        size.height * 0.5226126,
        size.width * 0.1231156,
        size.height * 0.5045045);
    strokePath.cubicTo(
        size.width * 0.1231156,
        size.height * 0.5045045,
        size.width * 0.1105528,
        size.height * 0.4864865,
        size.width * 0.1105528,
        size.height * 0.4864865);
    strokePath.cubicTo(
        size.width * 0.1105528,
        size.height * 0.4864865,
        size.width * 0.1130653,
        size.height * 0.4684685,
        size.width * 0.1130653,
        size.height * 0.4684685);
    strokePath.cubicTo(
        size.width * 0.1130653,
        size.height * 0.4684685,
        size.width * 0.1005025,
        size.height * 0.4324324,
        size.width * 0.1005025,
        size.height * 0.4324324);
    strokePath.close();
    strokePath.moveTo(size.width * 0.3743719, size.height * 0.5405405);
    strokePath.cubicTo(
        size.width * 0.3743719,
        size.height * 0.5405405,
        size.width * 0.3643216,
        size.height * 0.5495495,
        size.width * 0.3643216,
        size.height * 0.5495495);
    strokePath.cubicTo(
        size.width * 0.3643216,
        size.height * 0.5495495,
        size.width * 0.3743719,
        size.height * 0.5405405,
        size.width * 0.3743719,
        size.height * 0.5405405);
    strokePath.close();
    strokePath.moveTo(size.width * 0.4221106, size.height * 0.5495495);
    strokePath.cubicTo(
        size.width * 0.4096231,
        size.height * 0.5436036,
        size.width * 0.3965075,
        size.height * 0.5323423,
        size.width * 0.3844221,
        size.height * 0.5495495);
    strokePath.cubicTo(
        size.width * 0.3959548,
        size.height * 0.5596396,
        size.width * 0.4109045,
        size.height * 0.5654955,
        size.width * 0.4221106,
        size.height * 0.5495495);
    strokePath.close();
    strokePath.moveTo(size.width * 0.9070352, size.height * 0.6756757);
    strokePath.cubicTo(
        size.width * 0.9070352,
        size.height * 0.6756757,
        size.width * 0.8994975,
        size.height * 0.6666667,
        size.width * 0.8994975,
        size.height * 0.6666667);
    strokePath.cubicTo(
        size.width * 0.8994975,
        size.height * 0.6666667,
        size.width * 0.8994975,
        size.height * 0.6936937,
        size.width * 0.8994975,
        size.height * 0.6936937);
    strokePath.cubicTo(
        size.width * 0.8994975,
        size.height * 0.6936937,
        size.width * 0.9070352,
        size.height * 0.6756757,
        size.width * 0.9070352,
        size.height * 0.6756757);
    strokePath.close();
    strokePath.moveTo(size.width * 0.7989950, size.height * 0.7567568);
    strokePath.cubicTo(
        size.width * 0.7989950,
        size.height * 0.7567568,
        size.width * 0.7964824,
        size.height * 0.7567568,
        size.width * 0.7964824,
        size.height * 0.7567568);
    strokePath.cubicTo(
        size.width * 0.7964824,
        size.height * 0.7567568,
        size.width * 0.7989950,
        size.height * 0.7657658,
        size.width * 0.7989950,
        size.height * 0.7657658);
    strokePath.cubicTo(
        size.width * 0.7989950,
        size.height * 0.7657658,
        size.width * 0.7989950,
        size.height * 0.7567568,
        size.width * 0.7989950,
        size.height * 0.7567568);
    strokePath.close();
    strokePath.moveTo(size.width * 0.4497487, size.height * 0.8558559);
    strokePath.cubicTo(
        size.width * 0.4497487,
        size.height * 0.8558559,
        size.width * 0.4472362,
        size.height * 0.8558559,
        size.width * 0.4472362,
        size.height * 0.8558559);
    strokePath.cubicTo(
        size.width * 0.4472362,
        size.height * 0.8558559,
        size.width * 0.4497487,
        size.height * 0.8648649,
        size.width * 0.4497487,
        size.height * 0.8648649);
    strokePath.cubicTo(
        size.width * 0.4497487,
        size.height * 0.8648649,
        size.width * 0.4497487,
        size.height * 0.8558559,
        size.width * 0.4497487,
        size.height * 0.8558559);
    strokePath.close();
    strokePath.moveTo(size.width * 0.7537688, size.height * 0.8558559);
    strokePath.cubicTo(
        size.width * 0.7537688,
        size.height * 0.8558559,
        size.width * 0.7512563,
        size.height * 0.8558559,
        size.width * 0.7512563,
        size.height * 0.8558559);
    strokePath.cubicTo(
        size.width * 0.7512563,
        size.height * 0.8558559,
        size.width * 0.7537688,
        size.height * 0.8648649,
        size.width * 0.7537688,
        size.height * 0.8648649);
    strokePath.cubicTo(
        size.width * 0.7537688,
        size.height * 0.8648649,
        size.width * 0.7537688,
        size.height * 0.8558559,
        size.width * 0.7537688,
        size.height * 0.8558559);
    strokePath.close();
    strokePath.moveTo(size.width * 0.4472362, size.height * 0.8648649);
    strokePath.cubicTo(
        size.width * 0.4472362,
        size.height * 0.8648649,
        size.width * 0.4447236,
        size.height * 0.8648649,
        size.width * 0.4447236,
        size.height * 0.8648649);
    strokePath.cubicTo(
        size.width * 0.4447236,
        size.height * 0.8648649,
        size.width * 0.4472362,
        size.height * 0.8738739,
        size.width * 0.4472362,
        size.height * 0.8738739);
    strokePath.cubicTo(
        size.width * 0.4472362,
        size.height * 0.8738739,
        size.width * 0.4472362,
        size.height * 0.8648649,
        size.width * 0.4472362,
        size.height * 0.8648649);
    strokePath.close();

    return strokePath;
  }

  Path _crossPath(Size size) {
    Path crossPath = Path();
    crossPath.moveTo(size.width * 0.1041667, size.height * 0.01886792);
    crossPath.cubicTo(
        size.width * 0.1041667,
        size.height * 0.01886792,
        size.width * 0.1333333,
        size.height * 0.04905660,
        size.width * 0.1333333,
        size.height * 0.04905660);
    crossPath.cubicTo(
        size.width * 0.1740833,
        size.height * 0.04916981,
        size.width * 0.1725417,
        size.height * 0.05766038,
        size.width * 0.1875000,
        size.height * 0.04150943);
    crossPath.cubicTo(
        size.width * 0.1875000,
        size.height * 0.04150943,
        size.width * 0.2708333,
        size.height * 0.1046415,
        size.width * 0.2708333,
        size.height * 0.1046415);
    crossPath.cubicTo(
        size.width * 0.2708333,
        size.height * 0.1046415,
        size.width * 0.3541667,
        size.height * 0.1735849,
        size.width * 0.3541667,
        size.height * 0.1735849);
    crossPath.cubicTo(
        size.width * 0.3541667,
        size.height * 0.1735849,
        size.width * 0.3250000,
        size.height * 0.1660377,
        size.width * 0.3250000,
        size.height * 0.1660377);
    crossPath.cubicTo(
        size.width * 0.3365833,
        size.height * 0.1849811,
        size.width * 0.3916667,
        size.height * 0.2303396,
        size.width * 0.4125000,
        size.height * 0.2452830);
    crossPath.cubicTo(
        size.width * 0.4125000,
        size.height * 0.2452830,
        size.width * 0.4083333,
        size.height * 0.2566038,
        size.width * 0.4083333,
        size.height * 0.2566038);
    crossPath.cubicTo(
        size.width * 0.4083333,
        size.height * 0.2566038,
        size.width * 0.4375000,
        size.height * 0.2716981,
        size.width * 0.4375000,
        size.height * 0.2716981);
    crossPath.cubicTo(
        size.width * 0.4375000,
        size.height * 0.2716981,
        size.width * 0.4416667,
        size.height * 0.2905660,
        size.width * 0.4416667,
        size.height * 0.2905660);
    crossPath.cubicTo(
        size.width * 0.4416667,
        size.height * 0.2905660,
        size.width * 0.4583333,
        size.height * 0.2867925,
        size.width * 0.4583333,
        size.height * 0.2867925);
    crossPath.cubicTo(
        size.width * 0.4702500,
        size.height * 0.3068302,
        size.width * 0.4799583,
        size.height * 0.3170566,
        size.width * 0.5041667,
        size.height * 0.3245283);
    crossPath.cubicTo(
        size.width * 0.5041667,
        size.height * 0.3245283,
        size.width * 0.5083333,
        size.height * 0.3132075,
        size.width * 0.5083333,
        size.height * 0.3132075);
    crossPath.cubicTo(
        size.width * 0.5083333,
        size.height * 0.3132075,
        size.width * 0.5250000,
        size.height * 0.3207547,
        size.width * 0.5250000,
        size.height * 0.3207547);
    crossPath.cubicTo(
        size.width * 0.5250000,
        size.height * 0.3207547,
        size.width * 0.6040417,
        size.height * 0.2333208,
        size.width * 0.6040417,
        size.height * 0.2333208);
    crossPath.cubicTo(
        size.width * 0.6040417,
        size.height * 0.2333208,
        size.width * 0.6083333,
        size.height * 0.2150943,
        size.width * 0.6083333,
        size.height * 0.2150943);
    crossPath.cubicTo(
        size.width * 0.6083333,
        size.height * 0.2150943,
        size.width * 0.7333333,
        size.height * 0.1078491,
        size.width * 0.7333333,
        size.height * 0.1078491);
    crossPath.cubicTo(
        size.width * 0.7333333,
        size.height * 0.1078491,
        size.width * 0.7750000,
        size.height * 0.08400000,
        size.width * 0.7750000,
        size.height * 0.08400000);
    crossPath.cubicTo(
        size.width * 0.7750000,
        size.height * 0.08400000,
        size.width * 0.8375000,
        size.height * 0.1027170,
        size.width * 0.8375000,
        size.height * 0.1027170);
    crossPath.cubicTo(
        size.width * 0.8375000,
        size.height * 0.1027170,
        size.width * 0.8875000,
        size.height * 0.1056604,
        size.width * 0.8875000,
        size.height * 0.1056604);
    crossPath.cubicTo(
        size.width * 0.8875000,
        size.height * 0.1056604,
        size.width * 0.9166667,
        size.height * 0.07169811,
        size.width * 0.9166667,
        size.height * 0.07169811);
    crossPath.cubicTo(
        size.width * 0.9166667,
        size.height * 0.07169811,
        size.width * 0.9125000,
        size.height * 0.08679245,
        size.width * 0.9125000,
        size.height * 0.08679245);
    crossPath.cubicTo(
        size.width * 0.9125000,
        size.height * 0.08679245,
        size.width * 0.9291667,
        size.height * 0.08301887,
        size.width * 0.9291667,
        size.height * 0.08301887);
    crossPath.cubicTo(
        size.width * 0.9291667,
        size.height * 0.08301887,
        size.width * 0.9045833,
        size.height * 0.1433962,
        size.width * 0.9045833,
        size.height * 0.1433962);
    crossPath.cubicTo(
        size.width * 0.9045417,
        size.height * 0.1672830,
        size.width * 0.9402500,
        size.height * 0.1766038,
        size.width * 0.9475417,
        size.height * 0.1750189);
    crossPath.cubicTo(
        size.width * 0.9546667,
        size.height * 0.1734340,
        size.width * 0.9716250,
        size.height * 0.1565660,
        size.width * 0.9791667,
        size.height * 0.1509434);
    crossPath.cubicTo(
        size.width * 0.9791667,
        size.height * 0.1509434,
        size.width * 0.9791667,
        size.height * 0.1660377,
        size.width * 0.9791667,
        size.height * 0.1660377);
    crossPath.cubicTo(
        size.width * 0.9791667,
        size.height * 0.1660377,
        size.width * 0.9583333,
        size.height * 0.1735849,
        size.width * 0.9583333,
        size.height * 0.1735849);
    crossPath.cubicTo(
        size.width * 0.9579167,
        size.height * 0.1890189,
        size.width * 0.9522083,
        size.height * 0.1941132,
        size.width * 0.9625000,
        size.height * 0.2075472);
    crossPath.cubicTo(
        size.width * 0.9625000,
        size.height * 0.2075472,
        size.width * 0.9708333,
        size.height * 0.1962264,
        size.width * 0.9708333,
        size.height * 0.1962264);
    crossPath.cubicTo(
        size.width * 0.9651250,
        size.height * 0.2134717,
        size.width * 0.9647917,
        size.height * 0.2176604,
        size.width * 0.9833333,
        size.height * 0.2264151);
    crossPath.cubicTo(
        size.width * 0.9833333,
        size.height * 0.2264151,
        size.width * 0.9791667,
        size.height * 0.2528302,
        size.width * 0.9791667,
        size.height * 0.2528302);
    crossPath.cubicTo(
        size.width * 0.9791667,
        size.height * 0.2528302,
        size.width * 0.9513333,
        size.height * 0.2783774,
        size.width * 0.9513333,
        size.height * 0.2783774);
    crossPath.cubicTo(
        size.width * 0.9513333,
        size.height * 0.2783774,
        size.width * 0.8958333,
        size.height * 0.3169811,
        size.width * 0.8958333,
        size.height * 0.3169811);
    crossPath.cubicTo(
        size.width * 0.8958333,
        size.height * 0.3169811,
        size.width * 0.8701667,
        size.height * 0.3056604,
        size.width * 0.8701667,
        size.height * 0.3056604);
    crossPath.cubicTo(
        size.width * 0.8733750,
        size.height * 0.3189811,
        size.width * 0.8847500,
        size.height * 0.3410189,
        size.width * 0.8701667,
        size.height * 0.3503019);
    crossPath.cubicTo(
        size.width * 0.8641667,
        size.height * 0.3535472,
        size.width * 0.8454167,
        size.height * 0.3563774,
        size.width * 0.8375000,
        size.height * 0.3584906);
    crossPath.cubicTo(
        size.width * 0.8375000,
        size.height * 0.3584906,
        size.width * 0.8541667,
        size.height * 0.3622642,
        size.width * 0.8541667,
        size.height * 0.3622642);
    crossPath.cubicTo(
        size.width * 0.8541667,
        size.height * 0.3622642,
        size.width * 0.8291667,
        size.height * 0.3773585,
        size.width * 0.8291667,
        size.height * 0.3773585);
    crossPath.cubicTo(
        size.width * 0.8291667,
        size.height * 0.3773585,
        size.width * 0.8083333,
        size.height * 0.4113208,
        size.width * 0.8083333,
        size.height * 0.4113208);
    crossPath.cubicTo(
        size.width * 0.8083333,
        size.height * 0.4113208,
        size.width * 0.7875000,
        size.height * 0.4075472,
        size.width * 0.7875000,
        size.height * 0.4075472);
    crossPath.cubicTo(
        size.width * 0.7875000,
        size.height * 0.4075472,
        size.width * 0.7625000,
        size.height * 0.4490566,
        size.width * 0.7625000,
        size.height * 0.4490566);
    crossPath.cubicTo(
        size.width * 0.7625000,
        size.height * 0.4490566,
        size.width * 0.7458333,
        size.height * 0.4528302,
        size.width * 0.7458333,
        size.height * 0.4528302);
    crossPath.cubicTo(
        size.width * 0.7458333,
        size.height * 0.4528302,
        size.width * 0.7121250,
        size.height * 0.5018868,
        size.width * 0.7121250,
        size.height * 0.5018868);
    crossPath.cubicTo(
        size.width * 0.7121250,
        size.height * 0.5018868,
        size.width * 0.7208333,
        size.height * 0.5471698,
        size.width * 0.7208333,
        size.height * 0.5471698);
    crossPath.cubicTo(
        size.width * 0.7208333,
        size.height * 0.5471698,
        size.width * 0.7458333,
        size.height * 0.5660377,
        size.width * 0.7458333,
        size.height * 0.5660377);
    crossPath.cubicTo(
        size.width * 0.7458333,
        size.height * 0.5660377,
        size.width * 0.7500000,
        size.height * 0.5509434,
        size.width * 0.7500000,
        size.height * 0.5509434);
    crossPath.cubicTo(
        size.width * 0.7500000,
        size.height * 0.5509434,
        size.width * 0.8142500,
        size.height * 0.6150943,
        size.width * 0.8142500,
        size.height * 0.6150943);
    crossPath.cubicTo(
        size.width * 0.8142500,
        size.height * 0.6150943,
        size.width * 0.8833333,
        size.height * 0.6905660,
        size.width * 0.8833333,
        size.height * 0.6905660);
    crossPath.cubicTo(
        size.width * 0.8833333,
        size.height * 0.6905660,
        size.width * 0.8708333,
        size.height * 0.6905660,
        size.width * 0.8708333,
        size.height * 0.6905660);
    crossPath.cubicTo(
        size.width * 0.8827917,
        size.height * 0.7005660,
        size.width * 0.8888750,
        size.height * 0.6994340,
        size.width * 0.8996250,
        size.height * 0.7070943);
    crossPath.cubicTo(
        size.width * 0.9145833,
        size.height * 0.7177358,
        size.width * 0.9466250,
        size.height * 0.7536604,
        size.width * 0.9500000,
        size.height * 0.7698113);
    crossPath.cubicTo(
        size.width * 0.9500000,
        size.height * 0.7698113,
        size.width * 0.9625000,
        size.height * 0.7735849,
        size.width * 0.9625000,
        size.height * 0.7735849);
    crossPath.cubicTo(
        size.width * 0.9606667,
        size.height * 0.7930943,
        size.width * 0.9673750,
        size.height * 0.8010189,
        size.width * 0.9500000,
        size.height * 0.8075472);
    crossPath.cubicTo(
        size.width * 0.9703750,
        size.height * 0.8469434,
        size.width * 0.9558333,
        size.height * 0.8398868,
        size.width * 0.9607917,
        size.height * 0.8603774);
    crossPath.cubicTo(
        size.width * 0.9654583,
        size.height * 0.8795849,
        size.width * 0.9862500,
        size.height * 0.8874717,
        size.width * 0.9733333,
        size.height * 0.9169057);
    crossPath.cubicTo(
        size.width * 0.9677083,
        size.height * 0.9296604,
        size.width * 0.9643333,
        size.height * 0.9313585,
        size.width * 0.9500000,
        size.height * 0.9320755);
    crossPath.cubicTo(
        size.width * 0.9577083,
        size.height * 0.9709434,
        size.width * 0.9565000,
        size.height * 0.9687170,
        size.width * 0.9291667,
        size.height * 0.9962264);
    crossPath.cubicTo(
        size.width * 0.9077083,
        size.height * 0.9868302,
        size.width * 0.9085417,
        size.height * 0.9803019,
        size.width * 0.8951250,
        size.height * 0.9732075);
    crossPath.cubicTo(
        size.width * 0.8840000,
        size.height * 0.9673208,
        size.width * 0.8720000,
        size.height * 0.9700377,
        size.width * 0.8595417,
        size.height * 0.9647170);
    crossPath.cubicTo(
        size.width * 0.8397917,
        size.height * 0.9562264,
        size.width * 0.8232917,
        size.height * 0.9282264,
        size.width * 0.8208333,
        size.height * 0.9094340);
    crossPath.cubicTo(
        size.width * 0.7853750,
        size.height * 0.8935094,
        size.width * 0.7636667,
        size.height * 0.8424528,
        size.width * 0.7359583,
        size.height * 0.8158491);
    crossPath.cubicTo(
        size.width * 0.7204583,
        size.height * 0.8009434,
        size.width * 0.7017500,
        size.height * 0.8099245,
        size.width * 0.7000000,
        size.height * 0.7849057);
    crossPath.cubicTo(
        size.width * 0.7000000,
        size.height * 0.7849057,
        size.width * 0.6958333,
        size.height * 0.7802264,
        size.width * 0.6958333,
        size.height * 0.7802264);
    crossPath.cubicTo(
        size.width * 0.6958333,
        size.height * 0.7802264,
        size.width * 0.6862917,
        size.height * 0.7802264,
        size.width * 0.6862917,
        size.height * 0.7802264);
    crossPath.cubicTo(
        size.width * 0.6862917,
        size.height * 0.7802264,
        size.width * 0.6333333,
        size.height * 0.7245283,
        size.width * 0.6333333,
        size.height * 0.7245283);
    crossPath.cubicTo(
        size.width * 0.6333333,
        size.height * 0.7245283,
        size.width * 0.6416667,
        size.height * 0.7169811,
        size.width * 0.6416667,
        size.height * 0.7169811);
    crossPath.cubicTo(
        size.width * 0.6416667,
        size.height * 0.7169811,
        size.width * 0.5916667,
        size.height * 0.6867925,
        size.width * 0.5916667,
        size.height * 0.6867925);
    crossPath.cubicTo(
        size.width * 0.5916667,
        size.height * 0.6867925,
        size.width * 0.5875000,
        size.height * 0.6981132,
        size.width * 0.5875000,
        size.height * 0.6981132);
    crossPath.cubicTo(
        size.width * 0.5797917,
        size.height * 0.6896226,
        size.width * 0.5582917,
        size.height * 0.6680377,
        size.width * 0.5458333,
        size.height * 0.6680755);
    crossPath.cubicTo(
        size.width * 0.5366250,
        size.height * 0.6681132,
        size.width * 0.5270417,
        size.height * 0.6776604,
        size.width * 0.5208333,
        size.height * 0.6830566);
    crossPath.cubicTo(
        size.width * 0.5208333,
        size.height * 0.6830566,
        size.width * 0.4732500,
        size.height * 0.7283019,
        size.width * 0.4732500,
        size.height * 0.7283019);
    crossPath.cubicTo(
        size.width * 0.4732500,
        size.height * 0.7283019,
        size.width * 0.4066667,
        size.height * 0.7924528,
        size.width * 0.4066667,
        size.height * 0.7924528);
    crossPath.cubicTo(
        size.width * 0.4066667,
        size.height * 0.7924528,
        size.width * 0.3000000,
        size.height * 0.9132075,
        size.width * 0.3000000,
        size.height * 0.9132075);
    crossPath.cubicTo(
        size.width * 0.3000000,
        size.height * 0.9132075,
        size.width * 0.2833333,
        size.height * 0.9132075,
        size.width * 0.2833333,
        size.height * 0.9132075);
    crossPath.cubicTo(
        size.width * 0.2833333,
        size.height * 0.9132075,
        size.width * 0.2875000,
        size.height * 0.9056604,
        size.width * 0.2875000,
        size.height * 0.9056604);
    crossPath.cubicTo(
        size.width * 0.2626667,
        size.height * 0.9100755,
        size.width * 0.2497083,
        size.height * 0.9023019,
        size.width * 0.2250833,
        size.height * 0.9144906);
    crossPath.cubicTo(
        size.width * 0.1973750,
        size.height * 0.9282264,
        size.width * 0.2073750,
        size.height * 0.9430189,
        size.width * 0.1666667,
        size.height * 0.9471698);
    crossPath.cubicTo(
        size.width * 0.1666667,
        size.height * 0.9471698,
        size.width * 0.1541667,
        size.height * 0.9773585,
        size.width * 0.1541667,
        size.height * 0.9773585);
    crossPath.cubicTo(
        size.width * 0.1541667,
        size.height * 0.9773585,
        size.width * 0.1666667,
        size.height * 0.9849057,
        size.width * 0.1666667,
        size.height * 0.9849057);
    crossPath.cubicTo(
        size.width * 0.1666667,
        size.height * 0.9849057,
        size.width * 0.1458333,
        size.height * 0.9886792,
        size.width * 0.1458333,
        size.height * 0.9886792);
    crossPath.cubicTo(
        size.width * 0.1458333,
        size.height * 0.9886792,
        size.width * 0.1500000,
        size.height * 0.9962264,
        size.width * 0.1500000,
        size.height * 0.9962264);
    crossPath.cubicTo(
        size.width * 0.1500000,
        size.height * 0.9962264,
        size.width * 0.1121250,
        size.height * 0.9853208,
        size.width * 0.1121250,
        size.height * 0.9853208);
    crossPath.cubicTo(
        size.width * 0.1121250,
        size.height * 0.9853208,
        size.width * 0.07916667,
        size.height * 0.9924528,
        size.width * 0.07916667,
        size.height * 0.9924528);
    crossPath.cubicTo(
        size.width * 0.06983333,
        size.height * 0.9802264,
        size.width * 0.06525000,
        size.height * 0.9828679,
        size.width * 0.05000000,
        size.height * 0.9849057);
    crossPath.cubicTo(
        size.width * 0.05866667,
        size.height * 0.9555472,
        size.width * 0.07120833,
        size.height * 0.9372075,
        size.width * 0.09166667,
        size.height * 0.9132075);
    crossPath.cubicTo(
        size.width * 0.05145833,
        size.height * 0.9185283,
        size.width * 0.06325000,
        size.height * 0.9426038,
        size.width * 0.02916667,
        size.height * 0.9358491);
    crossPath.cubicTo(
        size.width * 0.02916667,
        size.height * 0.9358491,
        size.width * 0.05000000,
        size.height * 0.9056604,
        size.width * 0.05000000,
        size.height * 0.9056604);
    crossPath.cubicTo(
        size.width * 0.01983333,
        size.height * 0.9155472,
        size.width * 0.01800000,
        size.height * 0.9256226,
        0,
        size.height * 0.9207547);
    crossPath.cubicTo(
        size.width * 0.01254167,
        size.height * 0.9109434,
        size.width * 0.01850000,
        size.height * 0.9057736,
        size.width * 0.02083333,
        size.height * 0.8905660);
    crossPath.cubicTo(
        size.width * 0.04783333,
        size.height * 0.8686792,
        size.width * 0.03650000,
        size.height * 0.8682642,
        size.width * 0.04712500,
        size.height * 0.8496981);
    crossPath.cubicTo(
        size.width * 0.04712500,
        size.height * 0.8496981,
        size.width * 0.05908333,
        size.height * 0.8333208,
        size.width * 0.05908333,
        size.height * 0.8333208);
    crossPath.cubicTo(
        size.width * 0.07445833,
        size.height * 0.8092075,
        size.width * 0.08912500,
        size.height * 0.7769811,
        size.width * 0.1166667,
        size.height * 0.7622642);
    crossPath.cubicTo(
        size.width * 0.1166667,
        size.height * 0.7622642,
        size.width * 0.1125000,
        size.height * 0.7547170,
        size.width * 0.1125000,
        size.height * 0.7547170);
    crossPath.cubicTo(
        size.width * 0.1406667,
        size.height * 0.7363774,
        size.width * 0.1410000,
        size.height * 0.7281132,
        size.width * 0.1602083,
        size.height * 0.7072830);
    crossPath.cubicTo(
        size.width * 0.1602083,
        size.height * 0.7072830,
        size.width * 0.2101250,
        size.height * 0.6566038,
        size.width * 0.2101250,
        size.height * 0.6566038);
    crossPath.cubicTo(
        size.width * 0.2101250,
        size.height * 0.6566038,
        size.width * 0.2718333,
        size.height * 0.5973585,
        size.width * 0.2718333,
        size.height * 0.5973585);
    crossPath.cubicTo(
        size.width * 0.2718333,
        size.height * 0.5973585,
        size.width * 0.3237500,
        size.height * 0.5397736,
        size.width * 0.3237500,
        size.height * 0.5397736);
    crossPath.cubicTo(
        size.width * 0.3463750,
        size.height * 0.5131698,
        size.width * 0.3750833,
        size.height * 0.4991321,
        size.width * 0.3733333,
        size.height * 0.4610189);
    crossPath.cubicTo(
        size.width * 0.3739167,
        size.height * 0.4567925,
        size.width * 0.3742917,
        size.height * 0.4521509,
        size.width * 0.3733333,
        size.height * 0.4481132);
    crossPath.cubicTo(
        size.width * 0.3697500,
        size.height * 0.4411321,
        size.width * 0.3591667,
        size.height * 0.4320377,
        size.width * 0.3535833,
        size.height * 0.4257736);
    crossPath.cubicTo(
        size.width * 0.3535833,
        size.height * 0.4257736,
        size.width * 0.2987500,
        size.height * 0.3694717,
        size.width * 0.2987500,
        size.height * 0.3694717);
    crossPath.cubicTo(
        size.width * 0.2987500,
        size.height * 0.3694717,
        size.width * 0.2416667,
        size.height * 0.3182264,
        size.width * 0.2416667,
        size.height * 0.3182264);
    crossPath.cubicTo(
        size.width * 0.2416667,
        size.height * 0.3182264,
        size.width * 0.2090833,
        size.height * 0.2968302,
        size.width * 0.2090833,
        size.height * 0.2968302);
    crossPath.cubicTo(
        size.width * 0.2090833,
        size.height * 0.2968302,
        size.width * 0.1811667,
        size.height * 0.2715849,
        size.width * 0.1811667,
        size.height * 0.2715849);
    crossPath.cubicTo(
        size.width * 0.1811667,
        size.height * 0.2715849,
        size.width * 0.1472917,
        size.height * 0.2449811,
        size.width * 0.1472917,
        size.height * 0.2449811);
    crossPath.cubicTo(
        size.width * 0.1472917,
        size.height * 0.2449811,
        size.width * 0.1290417,
        size.height * 0.2234340,
        size.width * 0.1290417,
        size.height * 0.2234340);
    crossPath.cubicTo(
        size.width * 0.1161667,
        size.height * 0.2108679,
        size.width * 0.1018750,
        size.height * 0.2029811,
        size.width * 0.09012500,
        size.height * 0.1886415);
    crossPath.cubicTo(
        size.width * 0.07041667,
        size.height * 0.1645283,
        size.width * 0.06108333,
        size.height * 0.1405283,
        size.width * 0.03333333,
        size.height * 0.1207547);
    crossPath.cubicTo(
        size.width * 0.03333333,
        size.height * 0.1207547,
        size.width * 0.05833333,
        size.height * 0.07169811,
        size.width * 0.05833333,
        size.height * 0.07169811);
    crossPath.cubicTo(
        size.width * 0.09829167,
        size.height * 0.04256604,
        size.width * 0.09925000,
        size.height * 0.05056604,
        size.width * 0.1041667,
        size.height * 0.01886792);
    crossPath.close();
    crossPath.moveTo(size.width * 0.1750000, size.height * 0.03396226);
    crossPath.cubicTo(
        size.width * 0.1750000,
        size.height * 0.03396226,
        size.width * 0.1791667,
        size.height * 0.03396226,
        size.width * 0.1791667,
        size.height * 0.03396226);
    crossPath.cubicTo(
        size.width * 0.1791667,
        size.height * 0.03396226,
        size.width * 0.1750000,
        size.height * 0.03773585,
        size.width * 0.1750000,
        size.height * 0.03773585);
    crossPath.cubicTo(
        size.width * 0.1750000,
        size.height * 0.03773585,
        size.width * 0.1750000,
        size.height * 0.03396226,
        size.width * 0.1750000,
        size.height * 0.03396226);
    crossPath.close();
    crossPath.moveTo(size.width * 0.1250000, size.height * 0.04150943);
    crossPath.cubicTo(
        size.width * 0.1250000,
        size.height * 0.04150943,
        size.width * 0.1208333,
        size.height * 0.04150943,
        size.width * 0.1208333,
        size.height * 0.04150943);
    crossPath.cubicTo(
        size.width * 0.1208333,
        size.height * 0.04150943,
        size.width * 0.1250000,
        size.height * 0.04528302,
        size.width * 0.1250000,
        size.height * 0.04528302);
    crossPath.cubicTo(
        size.width * 0.1250000,
        size.height * 0.04528302,
        size.width * 0.1250000,
        size.height * 0.04150943,
        size.width * 0.1250000,
        size.height * 0.04150943);
    crossPath.close();
    crossPath.moveTo(size.width * 0.1291667, size.height * 0.04528302);
    crossPath.cubicTo(
        size.width * 0.1291667,
        size.height * 0.04528302,
        size.width * 0.1250000,
        size.height * 0.04528302,
        size.width * 0.1250000,
        size.height * 0.04528302);
    crossPath.cubicTo(
        size.width * 0.1250000,
        size.height * 0.04528302,
        size.width * 0.1291667,
        size.height * 0.04905660,
        size.width * 0.1291667,
        size.height * 0.04905660);
    crossPath.cubicTo(
        size.width * 0.1291667,
        size.height * 0.04905660,
        size.width * 0.1291667,
        size.height * 0.04528302,
        size.width * 0.1291667,
        size.height * 0.04528302);
    crossPath.close();
    crossPath.moveTo(size.width * 0.1541667, size.height * 0.04150943);
    crossPath.cubicTo(
        size.width * 0.1541667,
        size.height * 0.04150943,
        size.width * 0.1583333,
        size.height * 0.04150943,
        size.width * 0.1583333,
        size.height * 0.04150943);
    crossPath.cubicTo(
        size.width * 0.1583333,
        size.height * 0.04150943,
        size.width * 0.1541667,
        size.height * 0.04528302,
        size.width * 0.1541667,
        size.height * 0.04528302);
    crossPath.cubicTo(
        size.width * 0.1541667,
        size.height * 0.04528302,
        size.width * 0.1541667,
        size.height * 0.04150943,
        size.width * 0.1541667,
        size.height * 0.04150943);
    crossPath.close();
    crossPath.moveTo(size.width * 0.2166667, size.height * 0.07547170);
    crossPath.cubicTo(
        size.width * 0.2166667,
        size.height * 0.07547170,
        size.width * 0.1916667,
        size.height * 0.06415094,
        size.width * 0.1916667,
        size.height * 0.06415094);
    crossPath.cubicTo(
        size.width * 0.1916667,
        size.height * 0.06415094,
        size.width * 0.1875000,
        size.height * 0.07924528,
        size.width * 0.1875000,
        size.height * 0.07924528);
    crossPath.cubicTo(
        size.width * 0.1875000,
        size.height * 0.07924528,
        size.width * 0.2166667,
        size.height * 0.07547170,
        size.width * 0.2166667,
        size.height * 0.07547170);
    crossPath.close();
    crossPath.moveTo(size.width * 0.2125000, size.height * 0.08301887);
    crossPath.cubicTo(
        size.width * 0.2125000,
        size.height * 0.08301887,
        size.width * 0.2083333,
        size.height * 0.08301887,
        size.width * 0.2083333,
        size.height * 0.08301887);
    crossPath.cubicTo(
        size.width * 0.2083333,
        size.height * 0.08301887,
        size.width * 0.2125000,
        size.height * 0.08679245,
        size.width * 0.2125000,
        size.height * 0.08679245);
    crossPath.cubicTo(
        size.width * 0.2125000,
        size.height * 0.08679245,
        size.width * 0.2125000,
        size.height * 0.08301887,
        size.width * 0.2125000,
        size.height * 0.08301887);
    crossPath.close();
    crossPath.moveTo(size.width * 0.3208333, size.height * 0.1773585);
    crossPath.cubicTo(
        size.width * 0.3208333,
        size.height * 0.1773585,
        size.width * 0.3000000,
        size.height * 0.1735849,
        size.width * 0.3000000,
        size.height * 0.1735849);
    crossPath.cubicTo(
        size.width * 0.3076667,
        size.height * 0.1837358,
        size.width * 0.3094583,
        size.height * 0.1841132,
        size.width * 0.3208333,
        size.height * 0.1773585);
    crossPath.close();
    crossPath.moveTo(size.width * 0.9750000, size.height * 0.1811321);
    crossPath.cubicTo(
        size.width * 0.9750000,
        size.height * 0.1811321,
        size.width * 0.9791667,
        size.height * 0.1811321,
        size.width * 0.9791667,
        size.height * 0.1811321);
    crossPath.cubicTo(
        size.width * 0.9791667,
        size.height * 0.1811321,
        size.width * 0.9750000,
        size.height * 0.1849057,
        size.width * 0.9750000,
        size.height * 0.1849057);
    crossPath.cubicTo(
        size.width * 0.9750000,
        size.height * 0.1849057,
        size.width * 0.9750000,
        size.height * 0.1811321,
        size.width * 0.9750000,
        size.height * 0.1811321);
    crossPath.close();
    crossPath.moveTo(size.width * 0.3333333, size.height * 0.1886792);
    crossPath.cubicTo(
        size.width * 0.3333333,
        size.height * 0.1886792,
        size.width * 0.3291667,
        size.height * 0.1886792,
        size.width * 0.3291667,
        size.height * 0.1886792);
    crossPath.cubicTo(
        size.width * 0.3291667,
        size.height * 0.1886792,
        size.width * 0.3333333,
        size.height * 0.1924528,
        size.width * 0.3333333,
        size.height * 0.1924528);
    crossPath.cubicTo(
        size.width * 0.3333333,
        size.height * 0.1924528,
        size.width * 0.3333333,
        size.height * 0.1886792,
        size.width * 0.3333333,
        size.height * 0.1886792);
    crossPath.close();
    crossPath.moveTo(size.width * 0.9791667, size.height * 0.2075472);
    crossPath.cubicTo(
        size.width * 0.9791667,
        size.height * 0.2075472,
        size.width * 0.9875000,
        size.height * 0.2113208,
        size.width * 0.9875000,
        size.height * 0.2113208);
    crossPath.cubicTo(
        size.width * 0.9875000,
        size.height * 0.2113208,
        size.width * 0.9750000,
        size.height * 0.2226415,
        size.width * 0.9750000,
        size.height * 0.2226415);
    crossPath.cubicTo(
        size.width * 0.9750000,
        size.height * 0.2226415,
        size.width * 0.9791667,
        size.height * 0.2075472,
        size.width * 0.9791667,
        size.height * 0.2075472);
    crossPath.close();
    crossPath.moveTo(size.width * 0.3750000, size.height * 0.2301887);
    crossPath.cubicTo(
        size.width * 0.3750000,
        size.height * 0.2301887,
        size.width * 0.3833333,
        size.height * 0.2415094,
        size.width * 0.3833333,
        size.height * 0.2415094);
    crossPath.cubicTo(
        size.width * 0.3833333,
        size.height * 0.2415094,
        size.width * 0.3750000,
        size.height * 0.2301887,
        size.width * 0.3750000,
        size.height * 0.2301887);
    crossPath.close();
    crossPath.moveTo(size.width * 0.3708333, size.height * 0.2490566);
    crossPath.cubicTo(
        size.width * 0.3708333,
        size.height * 0.2490566,
        size.width * 0.3666667,
        size.height * 0.2490566,
        size.width * 0.3666667,
        size.height * 0.2490566);
    crossPath.cubicTo(
        size.width * 0.3666667,
        size.height * 0.2490566,
        size.width * 0.3708333,
        size.height * 0.2528302,
        size.width * 0.3708333,
        size.height * 0.2528302);
    crossPath.cubicTo(
        size.width * 0.3708333,
        size.height * 0.2528302,
        size.width * 0.3708333,
        size.height * 0.2490566,
        size.width * 0.3708333,
        size.height * 0.2490566);
    crossPath.close();
    crossPath.moveTo(size.width * 0.4166667, size.height * 0.2716981);
    crossPath.cubicTo(
        size.width * 0.4166667,
        size.height * 0.2716981,
        size.width * 0.4000000,
        size.height * 0.2716981,
        size.width * 0.4000000,
        size.height * 0.2716981);
    crossPath.cubicTo(
        size.width * 0.4000000,
        size.height * 0.2716981,
        size.width * 0.4041667,
        size.height * 0.2830189,
        size.width * 0.4041667,
        size.height * 0.2830189);
    crossPath.cubicTo(
        size.width * 0.4041667,
        size.height * 0.2830189,
        size.width * 0.4166667,
        size.height * 0.2716981,
        size.width * 0.4166667,
        size.height * 0.2716981);
    crossPath.close();
    crossPath.moveTo(size.width * 0.4250000, size.height * 0.2830189);
    crossPath.cubicTo(
        size.width * 0.4250000,
        size.height * 0.2830189,
        size.width * 0.4208333,
        size.height * 0.2830189,
        size.width * 0.4208333,
        size.height * 0.2830189);
    crossPath.cubicTo(
        size.width * 0.4208333,
        size.height * 0.2830189,
        size.width * 0.4250000,
        size.height * 0.2867925,
        size.width * 0.4250000,
        size.height * 0.2867925);
    crossPath.cubicTo(
        size.width * 0.4250000,
        size.height * 0.2867925,
        size.width * 0.4250000,
        size.height * 0.2830189,
        size.width * 0.4250000,
        size.height * 0.2830189);
    crossPath.close();
    crossPath.moveTo(size.width * 0.8958333, size.height * 0.2867925);
    crossPath.cubicTo(
        size.width * 0.8958333,
        size.height * 0.2867925,
        size.width * 0.8791667,
        size.height * 0.3018868,
        size.width * 0.8791667,
        size.height * 0.3018868);
    crossPath.cubicTo(
        size.width * 0.8791667,
        size.height * 0.3018868,
        size.width * 0.8958333,
        size.height * 0.3018868,
        size.width * 0.8958333,
        size.height * 0.3018868);
    crossPath.cubicTo(
        size.width * 0.8958333,
        size.height * 0.3018868,
        size.width * 0.8958333,
        size.height * 0.2867925,
        size.width * 0.8958333,
        size.height * 0.2867925);
    crossPath.close();
    crossPath.moveTo(size.width * 0.3958333, size.height * 0.2943396);
    crossPath.cubicTo(
        size.width * 0.3958333,
        size.height * 0.2943396,
        size.width * 0.3916667,
        size.height * 0.2943396,
        size.width * 0.3916667,
        size.height * 0.2943396);
    crossPath.cubicTo(
        size.width * 0.3916667,
        size.height * 0.2943396,
        size.width * 0.3958333,
        size.height * 0.2981132,
        size.width * 0.3958333,
        size.height * 0.2981132);
    crossPath.cubicTo(
        size.width * 0.3958333,
        size.height * 0.2981132,
        size.width * 0.3958333,
        size.height * 0.2943396,
        size.width * 0.3958333,
        size.height * 0.2943396);
    crossPath.close();
    crossPath.moveTo(size.width * 0.4125000, size.height * 0.3018868);
    crossPath.cubicTo(
        size.width * 0.4125000,
        size.height * 0.3018868,
        size.width * 0.4208333,
        size.height * 0.3132075,
        size.width * 0.4208333,
        size.height * 0.3132075);
    crossPath.cubicTo(
        size.width * 0.4208333,
        size.height * 0.3132075,
        size.width * 0.4125000,
        size.height * 0.3018868,
        size.width * 0.4125000,
        size.height * 0.3018868);
    crossPath.close();
    crossPath.moveTo(size.width * 0.8583333, size.height * 0.3018868);
    crossPath.cubicTo(
        size.width * 0.8583333,
        size.height * 0.3018868,
        size.width * 0.8541667,
        size.height * 0.3018868,
        size.width * 0.8541667,
        size.height * 0.3018868);
    crossPath.cubicTo(
        size.width * 0.8541667,
        size.height * 0.3018868,
        size.width * 0.8583333,
        size.height * 0.3056604,
        size.width * 0.8583333,
        size.height * 0.3056604);
    crossPath.cubicTo(
        size.width * 0.8583333,
        size.height * 0.3056604,
        size.width * 0.8583333,
        size.height * 0.3018868,
        size.width * 0.8583333,
        size.height * 0.3018868);
    crossPath.close();
    crossPath.moveTo(size.width * 0.4500000, size.height * 0.3056604);
    crossPath.cubicTo(
        size.width * 0.4500000,
        size.height * 0.3056604,
        size.width * 0.4375000,
        size.height * 0.3056604,
        size.width * 0.4375000,
        size.height * 0.3056604);
    crossPath.cubicTo(
        size.width * 0.4375000,
        size.height * 0.3056604,
        size.width * 0.4333333,
        size.height * 0.3245283,
        size.width * 0.4333333,
        size.height * 0.3245283);
    crossPath.cubicTo(
        size.width * 0.4333333,
        size.height * 0.3245283,
        size.width * 0.4500000,
        size.height * 0.3056604,
        size.width * 0.4500000,
        size.height * 0.3056604);
    crossPath.close();
    crossPath.moveTo(size.width * 0.8541667, size.height * 0.3056604);
    crossPath.cubicTo(
        size.width * 0.8541667,
        size.height * 0.3056604,
        size.width * 0.8500000,
        size.height * 0.3056604,
        size.width * 0.8500000,
        size.height * 0.3056604);
    crossPath.cubicTo(
        size.width * 0.8500000,
        size.height * 0.3056604,
        size.width * 0.8541667,
        size.height * 0.3094340,
        size.width * 0.8541667,
        size.height * 0.3094340);
    crossPath.cubicTo(
        size.width * 0.8541667,
        size.height * 0.3094340,
        size.width * 0.8541667,
        size.height * 0.3056604,
        size.width * 0.8541667,
        size.height * 0.3056604);
    crossPath.close();
    crossPath.moveTo(size.width * 0.8583333, size.height * 0.3169811);
    crossPath.cubicTo(
        size.width * 0.8585000,
        size.height * 0.3262642,
        size.width * 0.8617500,
        size.height * 0.3247170,
        size.width * 0.8708333,
        size.height * 0.3245283);
    crossPath.cubicTo(
        size.width * 0.8708333,
        size.height * 0.3245283,
        size.width * 0.8583333,
        size.height * 0.3169811,
        size.width * 0.8583333,
        size.height * 0.3169811);
    crossPath.close();
    crossPath.moveTo(size.width * 0.4666667, size.height * 0.3207547);
    crossPath.cubicTo(
        size.width * 0.4666667,
        size.height * 0.3207547,
        size.width * 0.4500000,
        size.height * 0.3245283,
        size.width * 0.4500000,
        size.height * 0.3245283);
    crossPath.cubicTo(
        size.width * 0.4500000,
        size.height * 0.3245283,
        size.width * 0.4708333,
        size.height * 0.3358491,
        size.width * 0.4708333,
        size.height * 0.3358491);
    crossPath.cubicTo(
        size.width * 0.4708333,
        size.height * 0.3358491,
        size.width * 0.4666667,
        size.height * 0.3207547,
        size.width * 0.4666667,
        size.height * 0.3207547);
    crossPath.close();
    crossPath.moveTo(size.width * 0.8375000, size.height * 0.3245283);
    crossPath.cubicTo(
        size.width * 0.8375000,
        size.height * 0.3245283,
        size.width * 0.8333333,
        size.height * 0.3245283,
        size.width * 0.8333333,
        size.height * 0.3245283);
    crossPath.cubicTo(
        size.width * 0.8333333,
        size.height * 0.3245283,
        size.width * 0.8375000,
        size.height * 0.3283019,
        size.width * 0.8375000,
        size.height * 0.3283019);
    crossPath.cubicTo(
        size.width * 0.8375000,
        size.height * 0.3283019,
        size.width * 0.8375000,
        size.height * 0.3245283,
        size.width * 0.8375000,
        size.height * 0.3245283);
    crossPath.close();
    crossPath.moveTo(size.width * 0.8416667, size.height * 0.3320755);
    crossPath.cubicTo(
        size.width * 0.8416667,
        size.height * 0.3320755,
        size.width * 0.8416667,
        size.height * 0.3471698,
        size.width * 0.8416667,
        size.height * 0.3471698);
    crossPath.cubicTo(
        size.width * 0.8416667,
        size.height * 0.3471698,
        size.width * 0.8625000,
        size.height * 0.3396226,
        size.width * 0.8625000,
        size.height * 0.3396226);
    crossPath.cubicTo(
        size.width * 0.8625000,
        size.height * 0.3396226,
        size.width * 0.8416667,
        size.height * 0.3320755,
        size.width * 0.8416667,
        size.height * 0.3320755);
    crossPath.close();
    crossPath.moveTo(size.width * 0.4916667, size.height * 0.3396226);
    crossPath.cubicTo(
        size.width * 0.4916667,
        size.height * 0.3396226,
        size.width * 0.4750000,
        size.height * 0.3471698,
        size.width * 0.4750000,
        size.height * 0.3471698);
    crossPath.cubicTo(
        size.width * 0.4750000,
        size.height * 0.3471698,
        size.width * 0.4916667,
        size.height * 0.3396226,
        size.width * 0.4916667,
        size.height * 0.3396226);
    crossPath.close();
    crossPath.moveTo(size.width * 0.5083333, size.height * 0.4301887);
    crossPath.cubicTo(
        size.width * 0.5083333,
        size.height * 0.4301887,
        size.width * 0.5041667,
        size.height * 0.4301887,
        size.width * 0.5041667,
        size.height * 0.4301887);
    crossPath.cubicTo(
        size.width * 0.5041667,
        size.height * 0.4301887,
        size.width * 0.5083333,
        size.height * 0.4339623,
        size.width * 0.5083333,
        size.height * 0.4339623);
    crossPath.cubicTo(
        size.width * 0.5083333,
        size.height * 0.4339623,
        size.width * 0.5083333,
        size.height * 0.4301887,
        size.width * 0.5083333,
        size.height * 0.4301887);
    crossPath.close();
    crossPath.moveTo(size.width * 0.7166667, size.height * 0.5132075);
    crossPath.cubicTo(
        size.width * 0.7166667,
        size.height * 0.5132075,
        size.width * 0.7375000,
        size.height * 0.5358491,
        size.width * 0.7375000,
        size.height * 0.5358491);
    crossPath.cubicTo(
        size.width * 0.7375000,
        size.height * 0.5358491,
        size.width * 0.7166667,
        size.height * 0.5283019,
        size.width * 0.7166667,
        size.height * 0.5283019);
    crossPath.cubicTo(
        size.width * 0.7166667,
        size.height * 0.5283019,
        size.width * 0.7166667,
        size.height * 0.5132075,
        size.width * 0.7166667,
        size.height * 0.5132075);
    crossPath.close();
    crossPath.moveTo(size.width * 0.7208333, size.height * 0.5396226);
    crossPath.cubicTo(
        size.width * 0.7208333,
        size.height * 0.5396226,
        size.width * 0.7166667,
        size.height * 0.5396226,
        size.width * 0.7166667,
        size.height * 0.5396226);
    crossPath.cubicTo(
        size.width * 0.7166667,
        size.height * 0.5396226,
        size.width * 0.7208333,
        size.height * 0.5433962,
        size.width * 0.7208333,
        size.height * 0.5433962);
    crossPath.cubicTo(
        size.width * 0.7208333,
        size.height * 0.5433962,
        size.width * 0.7208333,
        size.height * 0.5396226,
        size.width * 0.7208333,
        size.height * 0.5396226);
    crossPath.close();
    crossPath.moveTo(size.width * 0.7333333, size.height * 0.5396226);
    crossPath.cubicTo(
        size.width * 0.7333333,
        size.height * 0.5396226,
        size.width * 0.7375000,
        size.height * 0.5396226,
        size.width * 0.7375000,
        size.height * 0.5396226);
    crossPath.cubicTo(
        size.width * 0.7375000,
        size.height * 0.5396226,
        size.width * 0.7333333,
        size.height * 0.5433962,
        size.width * 0.7333333,
        size.height * 0.5433962);
    crossPath.cubicTo(
        size.width * 0.7333333,
        size.height * 0.5433962,
        size.width * 0.7333333,
        size.height * 0.5396226,
        size.width * 0.7333333,
        size.height * 0.5396226);
    crossPath.close();
    crossPath.moveTo(size.width * 0.7250000, size.height * 0.5924528);
    crossPath.cubicTo(
        size.width * 0.7250000,
        size.height * 0.5924528,
        size.width * 0.7208333,
        size.height * 0.5924528,
        size.width * 0.7208333,
        size.height * 0.5924528);
    crossPath.cubicTo(
        size.width * 0.7208333,
        size.height * 0.5924528,
        size.width * 0.7250000,
        size.height * 0.5962264,
        size.width * 0.7250000,
        size.height * 0.5962264);
    crossPath.cubicTo(
        size.width * 0.7250000,
        size.height * 0.5962264,
        size.width * 0.7250000,
        size.height * 0.5924528,
        size.width * 0.7250000,
        size.height * 0.5924528);
    crossPath.close();
    crossPath.moveTo(size.width * 0.8083333, size.height * 0.6226415);
    crossPath.cubicTo(
        size.width * 0.8083333,
        size.height * 0.6226415,
        size.width * 0.8000000,
        size.height * 0.6226415,
        size.width * 0.8000000,
        size.height * 0.6226415);
    crossPath.cubicTo(
        size.width * 0.8000000,
        size.height * 0.6226415,
        size.width * 0.7958333,
        size.height * 0.6339623,
        size.width * 0.7958333,
        size.height * 0.6339623);
    crossPath.cubicTo(
        size.width * 0.7958333,
        size.height * 0.6339623,
        size.width * 0.8125000,
        size.height * 0.6377358,
        size.width * 0.8125000,
        size.height * 0.6377358);
    crossPath.cubicTo(
        size.width * 0.8125000,
        size.height * 0.6377358,
        size.width * 0.8083333,
        size.height * 0.6226415,
        size.width * 0.8083333,
        size.height * 0.6226415);
    crossPath.close();
    crossPath.moveTo(size.width * 0.8166667, size.height * 0.6226415);
    crossPath.cubicTo(
        size.width * 0.8166667,
        size.height * 0.6226415,
        size.width * 0.8125000,
        size.height * 0.6226415,
        size.width * 0.8125000,
        size.height * 0.6226415);
    crossPath.cubicTo(
        size.width * 0.8125000,
        size.height * 0.6226415,
        size.width * 0.8166667,
        size.height * 0.6264151,
        size.width * 0.8166667,
        size.height * 0.6264151);
    crossPath.cubicTo(
        size.width * 0.8166667,
        size.height * 0.6264151,
        size.width * 0.8166667,
        size.height * 0.6226415,
        size.width * 0.8166667,
        size.height * 0.6226415);
    crossPath.close();
    crossPath.moveTo(size.width * 0.9166667, size.height * 0.7358491);
    crossPath.cubicTo(
        size.width * 0.9166667,
        size.height * 0.7358491,
        size.width * 0.9125000,
        size.height * 0.7358491,
        size.width * 0.9125000,
        size.height * 0.7358491);
    crossPath.cubicTo(
        size.width * 0.9125000,
        size.height * 0.7358491,
        size.width * 0.9166667,
        size.height * 0.7396226,
        size.width * 0.9166667,
        size.height * 0.7396226);
    crossPath.cubicTo(
        size.width * 0.9166667,
        size.height * 0.7396226,
        size.width * 0.9166667,
        size.height * 0.7358491,
        size.width * 0.9166667,
        size.height * 0.7358491);
    crossPath.close();
    crossPath.moveTo(size.width * 0.8791667, size.height * 0.7735849);
    crossPath.cubicTo(
        size.width * 0.8791667,
        size.height * 0.7735849,
        size.width * 0.8750000,
        size.height * 0.7735849,
        size.width * 0.8750000,
        size.height * 0.7735849);
    crossPath.cubicTo(
        size.width * 0.8750000,
        size.height * 0.7735849,
        size.width * 0.8791667,
        size.height * 0.7773585,
        size.width * 0.8791667,
        size.height * 0.7773585);
    crossPath.cubicTo(
        size.width * 0.8791667,
        size.height * 0.7773585,
        size.width * 0.8791667,
        size.height * 0.7735849,
        size.width * 0.8791667,
        size.height * 0.7735849);
    crossPath.close();
    crossPath.moveTo(size.width * 0.9125000, size.height * 0.8113208);
    crossPath.cubicTo(
        size.width * 0.9125000,
        size.height * 0.8113208,
        size.width * 0.9208333,
        size.height * 0.8226415,
        size.width * 0.9208333,
        size.height * 0.8226415);
    crossPath.cubicTo(
        size.width * 0.9208333,
        size.height * 0.8226415,
        size.width * 0.9125000,
        size.height * 0.8113208,
        size.width * 0.9125000,
        size.height * 0.8113208);
    crossPath.close();
    crossPath.moveTo(size.width * 0.9250000, size.height * 0.8226415);
    crossPath.cubicTo(
        size.width * 0.9250000,
        size.height * 0.8226415,
        size.width * 0.9208333,
        size.height * 0.8226415,
        size.width * 0.9208333,
        size.height * 0.8226415);
    crossPath.cubicTo(
        size.width * 0.9208333,
        size.height * 0.8226415,
        size.width * 0.9250000,
        size.height * 0.8264151,
        size.width * 0.9250000,
        size.height * 0.8264151);
    crossPath.cubicTo(
        size.width * 0.9250000,
        size.height * 0.8264151,
        size.width * 0.9250000,
        size.height * 0.8226415,
        size.width * 0.9250000,
        size.height * 0.8226415);
    crossPath.close();
    crossPath.moveTo(size.width * 0.1333333, size.height * 0.8716981);
    crossPath.cubicTo(
        size.width * 0.1333333,
        size.height * 0.8716981,
        size.width * 0.1291667,
        size.height * 0.8716981,
        size.width * 0.1291667,
        size.height * 0.8716981);
    crossPath.cubicTo(
        size.width * 0.1291667,
        size.height * 0.8716981,
        size.width * 0.1333333,
        size.height * 0.8754717,
        size.width * 0.1333333,
        size.height * 0.8754717);
    crossPath.cubicTo(
        size.width * 0.1333333,
        size.height * 0.8754717,
        size.width * 0.1333333,
        size.height * 0.8716981,
        size.width * 0.1333333,
        size.height * 0.8716981);
    crossPath.close();
    crossPath.moveTo(size.width * 0.06250000, size.height * 0.8981132);
    crossPath.cubicTo(
        size.width * 0.06250000,
        size.height * 0.8981132,
        size.width * 0.05833333,
        size.height * 0.8981132,
        size.width * 0.05833333,
        size.height * 0.8981132);
    crossPath.cubicTo(
        size.width * 0.05833333,
        size.height * 0.8981132,
        size.width * 0.06250000,
        size.height * 0.9018868,
        size.width * 0.06250000,
        size.height * 0.9018868);
    crossPath.cubicTo(
        size.width * 0.06250000,
        size.height * 0.9018868,
        size.width * 0.06250000,
        size.height * 0.8981132,
        size.width * 0.06250000,
        size.height * 0.8981132);
    crossPath.close();
    crossPath.moveTo(size.width * 0.9250000, size.height * 0.9735849);
    crossPath.cubicTo(
        size.width * 0.9250000,
        size.height * 0.9735849,
        size.width * 0.9208333,
        size.height * 0.9735849,
        size.width * 0.9208333,
        size.height * 0.9735849);
    crossPath.cubicTo(
        size.width * 0.9208333,
        size.height * 0.9735849,
        size.width * 0.9250000,
        size.height * 0.9773585,
        size.width * 0.9250000,
        size.height * 0.9773585);
    crossPath.cubicTo(
        size.width * 0.9250000,
        size.height * 0.9773585,
        size.width * 0.9250000,
        size.height * 0.9735849,
        size.width * 0.9250000,
        size.height * 0.9735849);
    crossPath.close();

    return crossPath;
  }

  Path _circlePath(Size size) {
    Path circlePath = Path();
    circlePath.moveTo(size.width * 0.2552301, size.height * 0.06543967);
    circlePath.cubicTo(
        size.width * 0.2694770,
        size.height * 0.06394683,
        size.width * 0.2712762,
        size.height * 0.05955010,
        size.width * 0.2782427,
        size.height * 0.05907975);
    circlePath.cubicTo(
        size.width * 0.2835983,
        size.height * 0.05822086,
        size.width * 0.2868201,
        size.height * 0.06094070,
        size.width * 0.2928870,
        size.height * 0.05907975);
    circlePath.cubicTo(
        size.width * 0.2937866,
        size.height * 0.05914110,
        size.width * 0.3234519,
        size.height * 0.04402863,
        size.width * 0.3410042,
        size.height * 0.03893661);
    circlePath.cubicTo(
        size.width * 0.3546862,
        size.height * 0.03494888,
        size.width * 0.3688075,
        size.height * 0.03435583,
        size.width * 0.3828452,
        size.height * 0.03237219);
    circlePath.cubicTo(
        size.width * 0.3828452,
        size.height * 0.03237219,
        size.width * 0.3995816,
        size.height * 0.02867076,
        size.width * 0.3995816,
        size.height * 0.02867076);
    circlePath.cubicTo(
        size.width * 0.3995816,
        size.height * 0.02867076,
        size.width * 0.4142259,
        size.height * 0.02642127,
        size.width * 0.4142259,
        size.height * 0.02642127);
    circlePath.cubicTo(
        size.width * 0.4142259,
        size.height * 0.02642127,
        size.width * 0.4539749,
        size.height * 0.01114519,
        size.width * 0.4539749,
        size.height * 0.01114519);
    circlePath.cubicTo(
        size.width * 0.4675314,
        size.height * 0.007607362,
        size.width * 0.5107322,
        size.height * 0.002024540,
        size.width * 0.5251046,
        size.height * 0.002413088);
    circlePath.cubicTo(
        size.width * 0.5387866,
        size.height * 0.002781186,
        size.width * 0.5377406,
        size.height * 0.006952965,
        size.width * 0.5475314,
        size.height * 0.008241309);
    circlePath.cubicTo(
        size.width * 0.5568410,
        size.height * 0.009468303,
        size.width * 0.5604603,
        size.height * 0.004253579,
        size.width * 0.5711297,
        size.height * 0.004785276);
    circlePath.cubicTo(
        size.width * 0.5991004,
        size.height * 0.006155419,
        size.width * 0.6238494,
        size.height * 0.01374233,
        size.width * 0.6506276,
        size.height * 0.02073620);
    circlePath.cubicTo(
        size.width * 0.6506276,
        size.height * 0.02073620,
        size.width * 0.6652720,
        size.height * 0.02390593,
        size.width * 0.6652720,
        size.height * 0.02390593);
    circlePath.cubicTo(
        size.width * 0.6652720,
        size.height * 0.02390593,
        size.width * 0.6861925,
        size.height * 0.03468303,
        size.width * 0.6861925,
        size.height * 0.03468303);
    circlePath.cubicTo(
        size.width * 0.6861925,
        size.height * 0.03468303,
        size.width * 0.7008368,
        size.height * 0.04116564,
        size.width * 0.7008368,
        size.height * 0.04116564);
    circlePath.cubicTo(
        size.width * 0.7008368,
        size.height * 0.04116564,
        size.width * 0.7133891,
        size.height * 0.05028630,
        size.width * 0.7133891,
        size.height * 0.05028630);
    circlePath.cubicTo(
        size.width * 0.7133891,
        size.height * 0.05028630,
        size.width * 0.7280335,
        size.height * 0.05905930,
        size.width * 0.7280335,
        size.height * 0.05905930);
    circlePath.cubicTo(
        size.width * 0.7280335,
        size.height * 0.05905930,
        size.width * 0.7468619,
        size.height * 0.07478528,
        size.width * 0.7468619,
        size.height * 0.07478528);
    circlePath.cubicTo(
        size.width * 0.7468619,
        size.height * 0.07478528,
        size.width * 0.7926987,
        size.height * 0.1146626,
        size.width * 0.7926987,
        size.height * 0.1146626);
    circlePath.cubicTo(
        size.width * 0.8244142,
        size.height * 0.1452556,
        size.width * 0.8570921,
        size.height * 0.1882618,
        size.width * 0.8849372,
        size.height * 0.2229039);
    circlePath.cubicTo(
        size.width * 0.9075941,
        size.height * 0.2510838,
        size.width * 0.9343724,
        size.height * 0.2897955,
        size.width * 0.9478661,
        size.height * 0.3231084);
    circlePath.cubicTo(
        size.width * 0.9478661,
        size.height * 0.3231084,
        size.width * 0.9543933,
        size.height * 0.3435583,
        size.width * 0.9543933,
        size.height * 0.3435583);
    circlePath.cubicTo(
        size.width * 0.9543933,
        size.height * 0.3435583,
        size.width * 0.9644351,
        size.height * 0.3701431,
        size.width * 0.9644351,
        size.height * 0.3701431);
    circlePath.cubicTo(
        size.width * 0.9644351,
        size.height * 0.3701431,
        size.width * 0.9816318,
        size.height * 0.4192229,
        size.width * 0.9816318,
        size.height * 0.4192229);
    circlePath.cubicTo(
        size.width * 0.9825523,
        size.height * 0.4229857,
        size.width * 0.9816527,
        size.height * 0.4276892,
        size.width * 0.9816318,
        size.height * 0.4314928);
    circlePath.cubicTo(
        size.width * 0.9816318,
        size.height * 0.4314928,
        size.width * 0.9874477,
        size.height * 0.4294479,
        size.width * 0.9874477,
        size.height * 0.4294479);
    circlePath.cubicTo(
        size.width * 0.9857741,
        size.height * 0.4425971,
        size.width * 0.9820293,
        size.height * 0.4622495,
        size.width * 0.9958159,
        size.height * 0.4703476);
    circlePath.cubicTo(
        size.width * 0.9919247,
        size.height * 0.4875665,
        size.width * 0.9987448,
        size.height * 0.4933129,
        size.width * 0.9974059,
        size.height * 0.5047648);
    circlePath.cubicTo(
        size.width * 0.9962971,
        size.height * 0.5143149,
        size.width * 0.9920921,
        size.height * 0.5244172,
        size.width * 0.9958159,
        size.height * 0.5337423);
    circlePath.cubicTo(
        size.width * 0.9958159,
        size.height * 0.5337423,
        size.width * 0.9979079,
        size.height * 0.5378323,
        size.width * 0.9979079,
        size.height * 0.5378323);
    circlePath.cubicTo(
        size.width * 0.9979079,
        size.height * 0.5378323,
        size.width * 0.9933891,
        size.height * 0.5673211,
        size.width * 0.9933891,
        size.height * 0.5673211);
    circlePath.cubicTo(
        size.width * 0.9933891,
        size.height * 0.5673211,
        size.width * 0.9919038,
        size.height * 0.5846421,
        size.width * 0.9919038,
        size.height * 0.5846421);
    circlePath.cubicTo(
        size.width * 0.9919038,
        size.height * 0.5846421,
        size.width * 0.9832636,
        size.height * 0.5910020,
        size.width * 0.9832636,
        size.height * 0.5910020);
    circlePath.cubicTo(
        size.width * 0.9832636,
        size.height * 0.5910020,
        size.width * 0.9895397,
        size.height * 0.5930470,
        size.width * 0.9895397,
        size.height * 0.5930470);
    circlePath.cubicTo(
        size.width * 0.9888494,
        size.height * 0.6010225,
        size.width * 0.9916736,
        size.height * 0.6079550,
        size.width * 0.9853556,
        size.height * 0.6134969);
    circlePath.cubicTo(
        size.width * 0.9870711,
        size.height * 0.6243354,
        size.width * 0.9830753,
        size.height * 0.6262168,
        size.width * 0.9809414,
        size.height * 0.6359918);
    circlePath.cubicTo(
        size.width * 0.9763808,
        size.height * 0.6569325,
        size.width * 0.9724686,
        size.height * 0.6897137,
        size.width * 0.9518828,
        size.height * 0.7014315);
    circlePath.cubicTo(
        size.width * 0.9548536,
        size.height * 0.7173006,
        size.width * 0.9511297,
        size.height * 0.7201636,
        size.width * 0.9449791,
        size.height * 0.7341513);
    circlePath.cubicTo(
        size.width * 0.9429289,
        size.height * 0.7387935,
        size.width * 0.9414226,
        size.height * 0.7437219,
        size.width * 0.9385983,
        size.height * 0.7479959);
    circlePath.cubicTo(
        size.width * 0.9333891,
        size.height * 0.7559100,
        size.width * 0.9330335,
        size.height * 0.7517382,
        size.width * 0.9267782,
        size.height * 0.7648262);
    circlePath.cubicTo(
        size.width * 0.9267782,
        size.height * 0.7648262,
        size.width * 0.9205021,
        size.height * 0.7668712,
        size.width * 0.9205021,
        size.height * 0.7668712);
    circlePath.cubicTo(
        size.width * 0.9205021,
        size.height * 0.7668712,
        size.width * 0.9121339,
        size.height * 0.7668712,
        size.width * 0.9121339,
        size.height * 0.7668712);
    circlePath.cubicTo(
        size.width * 0.9182636,
        size.height * 0.7764213,
        size.width * 0.9184310,
        size.height * 0.7792638,
        size.width * 0.9100418,
        size.height * 0.7873211);
    circlePath.cubicTo(
        size.width * 0.9100418,
        size.height * 0.7873211,
        size.width * 0.9121339,
        size.height * 0.7770961,
        size.width * 0.9121339,
        size.height * 0.7770961);
    circlePath.cubicTo(
        size.width * 0.9121339,
        size.height * 0.7770961,
        size.width * 0.9037657,
        size.height * 0.7750511,
        size.width * 0.9037657,
        size.height * 0.7750511);
    circlePath.cubicTo(
        size.width * 0.9053975,
        size.height * 0.7825971,
        size.width * 0.9064854,
        size.height * 0.7847853,
        size.width * 0.8995816,
        size.height * 0.7893661);
    circlePath.cubicTo(
        size.width * 0.8995816,
        size.height * 0.7893661,
        size.width * 0.9016736,
        size.height * 0.7975460,
        size.width * 0.9016736,
        size.height * 0.7975460);
    circlePath.cubicTo(
        size.width * 0.9016736,
        size.height * 0.7975460,
        size.width * 0.8933054,
        size.height * 0.7934560,
        size.width * 0.8933054,
        size.height * 0.7934560);
    circlePath.cubicTo(
        size.width * 0.8933054,
        size.height * 0.7934560,
        size.width * 0.8953975,
        size.height * 0.8016360,
        size.width * 0.8953975,
        size.height * 0.8016360);
    circlePath.cubicTo(
        size.width * 0.8953975,
        size.height * 0.8016360,
        size.width * 0.8870293,
        size.height * 0.7995910,
        size.width * 0.8870293,
        size.height * 0.7995910);
    circlePath.cubicTo(
        size.width * 0.8870293,
        size.height * 0.7995910,
        size.width * 0.8828452,
        size.height * 0.8118609,
        size.width * 0.8828452,
        size.height * 0.8118609);
    circlePath.cubicTo(
        size.width * 0.8689958,
        size.height * 0.8208384,
        size.width * 0.8837029,
        size.height * 0.8346217,
        size.width * 0.8661088,
        size.height * 0.8323108);
    circlePath.cubicTo(
        size.width * 0.8661088,
        size.height * 0.8323108,
        size.width * 0.8577406,
        size.height * 0.8425358,
        size.width * 0.8577406,
        size.height * 0.8425358);
    circlePath.cubicTo(
        size.width * 0.8577406,
        size.height * 0.8425358,
        size.width * 0.8535565,
        size.height * 0.8364008,
        size.width * 0.8535565,
        size.height * 0.8364008);
    circlePath.cubicTo(
        size.width * 0.8535565,
        size.height * 0.8364008,
        size.width * 0.8556485,
        size.height * 0.8507157,
        size.width * 0.8556485,
        size.height * 0.8507157);
    circlePath.cubicTo(
        size.width * 0.8482636,
        size.height * 0.8557669,
        size.width * 0.8459205,
        size.height * 0.8564417,
        size.width * 0.8430962,
        size.height * 0.8650307);
    circlePath.cubicTo(
        size.width * 0.8331799,
        size.height * 0.8657669,
        size.width * 0.8306067,
        size.height * 0.8679755,
        size.width * 0.8242678,
        size.height * 0.8752556);
    circlePath.cubicTo(
        size.width * 0.8242678,
        size.height * 0.8752556,
        size.width * 0.8117155,
        size.height * 0.8711656,
        size.width * 0.8117155,
        size.height * 0.8711656);
    circlePath.cubicTo(
        size.width * 0.8117155,
        size.height * 0.8711656,
        size.width * 0.8158996,
        size.height * 0.8813906,
        size.width * 0.8158996,
        size.height * 0.8813906);
    circlePath.cubicTo(
        size.width * 0.8158996,
        size.height * 0.8813906,
        size.width * 0.8096234,
        size.height * 0.8895706,
        size.width * 0.8096234,
        size.height * 0.8895706);
    circlePath.cubicTo(
        size.width * 0.8096234,
        size.height * 0.8895706,
        size.width * 0.7991632,
        size.height * 0.8854806,
        size.width * 0.7991632,
        size.height * 0.8854806);
    circlePath.cubicTo(
        size.width * 0.7991632,
        size.height * 0.8854806,
        size.width * 0.7970711,
        size.height * 0.8957055,
        size.width * 0.7970711,
        size.height * 0.8957055);
    circlePath.cubicTo(
        size.width * 0.7970711,
        size.height * 0.8957055,
        size.width * 0.7824268,
        size.height * 0.8936605,
        size.width * 0.7824268,
        size.height * 0.8936605);
    circlePath.cubicTo(
        size.width * 0.7824268,
        size.height * 0.8936605,
        size.width * 0.7845188,
        size.height * 0.9018405,
        size.width * 0.7845188,
        size.height * 0.9018405);
    circlePath.cubicTo(
        size.width * 0.7845188,
        size.height * 0.9018405,
        size.width * 0.7761506,
        size.height * 0.9038855,
        size.width * 0.7761506,
        size.height * 0.9038855);
    circlePath.cubicTo(
        size.width * 0.7761506,
        size.height * 0.9038855,
        size.width * 0.7761506,
        size.height * 0.8793456,
        size.width * 0.7761506,
        size.height * 0.8793456);
    circlePath.cubicTo(
        size.width * 0.7761506,
        size.height * 0.8793456,
        size.width * 0.7656904,
        size.height * 0.8895706,
        size.width * 0.7656904,
        size.height * 0.8895706);
    circlePath.cubicTo(
        size.width * 0.7656904,
        size.height * 0.8895706,
        size.width * 0.7698745,
        size.height * 0.8997955,
        size.width * 0.7698745,
        size.height * 0.8997955);
    circlePath.cubicTo(
        size.width * 0.7698745,
        size.height * 0.8997955,
        size.width * 0.7635983,
        size.height * 0.8936605,
        size.width * 0.7635983,
        size.height * 0.8936605);
    circlePath.cubicTo(
        size.width * 0.7635983,
        size.height * 0.8936605,
        size.width * 0.7594142,
        size.height * 0.8997955,
        size.width * 0.7594142,
        size.height * 0.8997955);
    circlePath.cubicTo(
        size.width * 0.7594142,
        size.height * 0.8997955,
        size.width * 0.7719665,
        size.height * 0.9120654,
        size.width * 0.7719665,
        size.height * 0.9120654);
    circlePath.cubicTo(
        size.width * 0.7719665,
        size.height * 0.9120654,
        size.width * 0.7635983,
        size.height * 0.9141104,
        size.width * 0.7635983,
        size.height * 0.9141104);
    circlePath.cubicTo(
        size.width * 0.7635983,
        size.height * 0.9141104,
        size.width * 0.7635983,
        size.height * 0.9079755,
        size.width * 0.7635983,
        size.height * 0.9079755);
    circlePath.cubicTo(
        size.width * 0.7635983,
        size.height * 0.9079755,
        size.width * 0.7510460,
        size.height * 0.9120654,
        size.width * 0.7510460,
        size.height * 0.9120654);
    circlePath.cubicTo(
        size.width * 0.7510460,
        size.height * 0.9120654,
        size.width * 0.7594142,
        size.height * 0.9079755,
        size.width * 0.7594142,
        size.height * 0.9079755);
    circlePath.cubicTo(
        size.width * 0.7594142,
        size.height * 0.9079755,
        size.width * 0.7573222,
        size.height * 0.8977505,
        size.width * 0.7573222,
        size.height * 0.8977505);
    circlePath.cubicTo(
        size.width * 0.7367573,
        size.height * 0.9095092,
        size.width * 0.7585356,
        size.height * 0.9233129,
        size.width * 0.7301255,
        size.height * 0.9284254);
    circlePath.cubicTo(
        size.width * 0.7301255,
        size.height * 0.9284254,
        size.width * 0.7280335,
        size.height * 0.9222904,
        size.width * 0.7280335,
        size.height * 0.9222904);
    circlePath.cubicTo(
        size.width * 0.7280335,
        size.height * 0.9222904,
        size.width * 0.7196653,
        size.height * 0.9263804,
        size.width * 0.7196653,
        size.height * 0.9263804);
    circlePath.cubicTo(
        size.width * 0.7196653,
        size.height * 0.9263804,
        size.width * 0.7217573,
        size.height * 0.9366053,
        size.width * 0.7217573,
        size.height * 0.9366053);
    circlePath.cubicTo(
        size.width * 0.7217573,
        size.height * 0.9366053,
        size.width * 0.7071130,
        size.height * 0.9427403,
        size.width * 0.7071130,
        size.height * 0.9427403);
    circlePath.cubicTo(
        size.width * 0.7071130,
        size.height * 0.9427403,
        size.width * 0.7071130,
        size.height * 0.9509202,
        size.width * 0.7071130,
        size.height * 0.9509202);
    circlePath.cubicTo(
        size.width * 0.7071130,
        size.height * 0.9509202,
        size.width * 0.7029289,
        size.height * 0.9509202,
        size.width * 0.7029289,
        size.height * 0.9509202);
    circlePath.cubicTo(
        size.width * 0.7029289,
        size.height * 0.9509202,
        size.width * 0.7029289,
        size.height * 0.9406953,
        size.width * 0.7029289,
        size.height * 0.9406953);
    circlePath.cubicTo(
        size.width * 0.7029289,
        size.height * 0.9406953,
        size.width * 0.6945607,
        size.height * 0.9386503,
        size.width * 0.6945607,
        size.height * 0.9386503);
    circlePath.cubicTo(
        size.width * 0.6945607,
        size.height * 0.9386503,
        size.width * 0.6924686,
        size.height * 0.9447853,
        size.width * 0.6924686,
        size.height * 0.9447853);
    circlePath.cubicTo(
        size.width * 0.6924686,
        size.height * 0.9447853,
        size.width * 0.6924686,
        size.height * 0.9488753,
        size.width * 0.6924686,
        size.height * 0.9488753);
    circlePath.cubicTo(
        size.width * 0.6924686,
        size.height * 0.9488753,
        size.width * 0.6966527,
        size.height * 0.9529652,
        size.width * 0.6966527,
        size.height * 0.9529652);
    circlePath.cubicTo(
        size.width * 0.6966527,
        size.height * 0.9529652,
        size.width * 0.6673640,
        size.height * 0.9488753,
        size.width * 0.6673640,
        size.height * 0.9488753);
    circlePath.cubicTo(
        size.width * 0.6644351,
        size.height * 0.9601227,
        size.width * 0.6602510,
        size.height * 0.9637423,
        size.width * 0.6485356,
        size.height * 0.9652352);
    circlePath.cubicTo(
        size.width * 0.6485356,
        size.height * 0.9652352,
        size.width * 0.6506276,
        size.height * 0.9591002,
        size.width * 0.6506276,
        size.height * 0.9591002);
    circlePath.cubicTo(
        size.width * 0.6506276,
        size.height * 0.9591002,
        size.width * 0.6485356,
        size.height * 0.9509202,
        size.width * 0.6485356,
        size.height * 0.9509202);
    circlePath.cubicTo(
        size.width * 0.6485356,
        size.height * 0.9509202,
        size.width * 0.6422594,
        size.height * 0.9509202,
        size.width * 0.6422594,
        size.height * 0.9509202);
    circlePath.cubicTo(
        size.width * 0.6422594,
        size.height * 0.9509202,
        size.width * 0.6422594,
        size.height * 0.9591002,
        size.width * 0.6422594,
        size.height * 0.9591002);
    circlePath.cubicTo(
        size.width * 0.6376569,
        size.height * 0.9562986,
        size.width * 0.6237448,
        size.height * 0.9494888,
        size.width * 0.6186611,
        size.height * 0.9495297);
    circlePath.cubicTo(
        size.width * 0.6133682,
        size.height * 0.9495910,
        size.width * 0.6034100,
        size.height * 0.9564213,
        size.width * 0.5983264,
        size.height * 0.9590184);
    circlePath.cubicTo(
        size.width * 0.5983264,
        size.height * 0.9590184,
        size.width * 0.5735774,
        size.height * 0.9692843,
        size.width * 0.5735774,
        size.height * 0.9692843);
    circlePath.cubicTo(
        size.width * 0.5683264,
        size.height * 0.9720450,
        size.width * 0.5509205,
        size.height * 0.9807157,
        size.width * 0.5481172,
        size.height * 0.9734151);
    circlePath.cubicTo(
        size.width * 0.5481172,
        size.height * 0.9734151,
        size.width * 0.5439331,
        size.height * 0.9795501,
        size.width * 0.5439331,
        size.height * 0.9795501);
    circlePath.cubicTo(
        size.width * 0.5439331,
        size.height * 0.9795501,
        size.width * 0.5230126,
        size.height * 0.9856851,
        size.width * 0.5230126,
        size.height * 0.9856851);
    circlePath.cubicTo(
        size.width * 0.5230126,
        size.height * 0.9856851,
        size.width * 0.5271967,
        size.height * 0.9775051,
        size.width * 0.5271967,
        size.height * 0.9775051);
    circlePath.cubicTo(
        size.width * 0.5271967,
        size.height * 0.9775051,
        size.width * 0.5146444,
        size.height * 0.9795501,
        size.width * 0.5146444,
        size.height * 0.9795501);
    circlePath.cubicTo(
        size.width * 0.5146444,
        size.height * 0.9795501,
        size.width * 0.5167364,
        size.height * 0.9856851,
        size.width * 0.5167364,
        size.height * 0.9856851);
    circlePath.cubicTo(
        size.width * 0.5167364,
        size.height * 0.9856851,
        size.width * 0.5104603,
        size.height * 0.9775051,
        size.width * 0.5104603,
        size.height * 0.9775051);
    circlePath.cubicTo(
        size.width * 0.5104603,
        size.height * 0.9775051,
        size.width * 0.4979079,
        size.height * 0.9795501,
        size.width * 0.4979079,
        size.height * 0.9795501);
    circlePath.cubicTo(
        size.width * 0.4979079,
        size.height * 0.9795501,
        size.width * 0.4979079,
        size.height * 0.9877301,
        size.width * 0.4979079,
        size.height * 0.9877301);
    circlePath.cubicTo(
        size.width * 0.4979079,
        size.height * 0.9877301,
        size.width * 0.4895397,
        size.height * 0.9836401,
        size.width * 0.4895397,
        size.height * 0.9836401);
    circlePath.cubicTo(
        size.width * 0.4819665,
        size.height * 0.9855828,
        size.width * 0.4792678,
        size.height * 0.9862781,
        size.width * 0.4728033,
        size.height * 0.9815951);
    circlePath.cubicTo(
        size.width * 0.4728033,
        size.height * 0.9815951,
        size.width * 0.4665272,
        size.height * 0.9856851,
        size.width * 0.4665272,
        size.height * 0.9856851);
    circlePath.cubicTo(
        size.width * 0.4665272,
        size.height * 0.9856851,
        size.width * 0.4644351,
        size.height * 0.9775051,
        size.width * 0.4644351,
        size.height * 0.9775051);
    circlePath.cubicTo(
        size.width * 0.4644351,
        size.height * 0.9775051,
        size.width * 0.4623431,
        size.height * 0.9856851,
        size.width * 0.4623431,
        size.height * 0.9856851);
    circlePath.cubicTo(
        size.width * 0.4623431,
        size.height * 0.9856851,
        size.width * 0.4372385,
        size.height * 0.9815951,
        size.width * 0.4372385,
        size.height * 0.9815951);
    circlePath.cubicTo(
        size.width * 0.4407322,
        size.height * 0.9865235,
        size.width * 0.4429079,
        size.height * 0.9878528,
        size.width * 0.4414226,
        size.height * 0.9938650);
    circlePath.cubicTo(
        size.width * 0.4311088,
        size.height * 0.9776278,
        size.width * 0.4287238,
        size.height * 0.9840286,
        size.width * 0.4184100,
        size.height * 0.9897751);
    circlePath.cubicTo(
        size.width * 0.4184100,
        size.height * 0.9897751,
        size.width * 0.4198117,
        size.height * 0.9813088,
        size.width * 0.4198117,
        size.height * 0.9813088);
    circlePath.cubicTo(
        size.width * 0.4184100,
        size.height * 0.9722904,
        size.width * 0.3976569,
        size.height * 0.9768098,
        size.width * 0.3912134,
        size.height * 0.9775051);
    circlePath.cubicTo(
        size.width * 0.3844561,
        size.height * 0.9724949,
        size.width * 0.3696444,
        size.height * 0.9717791,
        size.width * 0.3619247,
        size.height * 0.9754601);
    circlePath.cubicTo(
        size.width * 0.3594979,
        size.height * 0.9706135,
        size.width * 0.3589749,
        size.height * 0.9714928,
        size.width * 0.3535565,
        size.height * 0.9713701);
    circlePath.cubicTo(
        size.width * 0.3535565,
        size.height * 0.9713701,
        size.width * 0.3535565,
        size.height * 0.9775051,
        size.width * 0.3535565,
        size.height * 0.9775051);
    circlePath.cubicTo(
        size.width * 0.3482008,
        size.height * 0.9707157,
        size.width * 0.3476360,
        size.height * 0.9690389,
        size.width * 0.3389121,
        size.height * 0.9713701);
    circlePath.cubicTo(
        size.width * 0.3317992,
        size.height * 0.9609611,
        size.width * 0.3235983,
        size.height * 0.9568712,
        size.width * 0.3117155,
        size.height * 0.9631902);
    circlePath.cubicTo(
        size.width * 0.3117155,
        size.height * 0.9631902,
        size.width * 0.3075314,
        size.height * 0.9550102,
        size.width * 0.3075314,
        size.height * 0.9550102);
    circlePath.cubicTo(
        size.width * 0.3075314,
        size.height * 0.9550102,
        size.width * 0.3012552,
        size.height * 0.9570552,
        size.width * 0.3012552,
        size.height * 0.9570552);
    circlePath.cubicTo(
        size.width * 0.3012552,
        size.height * 0.9570552,
        size.width * 0.2991632,
        size.height * 0.9509202,
        size.width * 0.2991632,
        size.height * 0.9509202);
    circlePath.cubicTo(
        size.width * 0.2910251,
        size.height * 0.9552761,
        size.width * 0.2689121,
        size.height * 0.9621677,
        size.width * 0.2740586,
        size.height * 0.9447853);
    circlePath.cubicTo(
        size.width * 0.2740586,
        size.height * 0.9447853,
        size.width * 0.2803347,
        size.height * 0.9509202,
        size.width * 0.2803347,
        size.height * 0.9509202);
    circlePath.cubicTo(
        size.width * 0.2803347,
        size.height * 0.9509202,
        size.width * 0.2677824,
        size.height * 0.9345603,
        size.width * 0.2677824,
        size.height * 0.9345603);
    circlePath.cubicTo(
        size.width * 0.2677824,
        size.height * 0.9345603,
        size.width * 0.2573222,
        size.height * 0.9345603,
        size.width * 0.2573222,
        size.height * 0.9345603);
    circlePath.cubicTo(
        size.width * 0.2573222,
        size.height * 0.9345603,
        size.width * 0.2573222,
        size.height * 0.9447853,
        size.width * 0.2573222,
        size.height * 0.9447853);
    circlePath.cubicTo(
        size.width * 0.2573222,
        size.height * 0.9447853,
        size.width * 0.2677824,
        size.height * 0.9427403,
        size.width * 0.2677824,
        size.height * 0.9427403);
    circlePath.cubicTo(
        size.width * 0.2677824,
        size.height * 0.9427403,
        size.width * 0.2677824,
        size.height * 0.9488753,
        size.width * 0.2677824,
        size.height * 0.9488753);
    circlePath.cubicTo(
        size.width * 0.2554812,
        size.height * 0.9508998,
        size.width * 0.2557950,
        size.height * 0.9467689,
        size.width * 0.2510460,
        size.height * 0.9366053);
    circlePath.cubicTo(
        size.width * 0.2510460,
        size.height * 0.9366053,
        size.width * 0.2426778,
        size.height * 0.9447853,
        size.width * 0.2426778,
        size.height * 0.9447853);
    circlePath.cubicTo(
        size.width * 0.2426778,
        size.height * 0.9447853,
        size.width * 0.2405858,
        size.height * 0.9427403,
        size.width * 0.2405858,
        size.height * 0.9427403);
    circlePath.cubicTo(
        size.width * 0.2405858,
        size.height * 0.9427403,
        size.width * 0.2489540,
        size.height * 0.9386503,
        size.width * 0.2489540,
        size.height * 0.9386503);
    circlePath.cubicTo(
        size.width * 0.2489540,
        size.height * 0.9386503,
        size.width * 0.2447699,
        size.height * 0.9243354,
        size.width * 0.2447699,
        size.height * 0.9243354);
    circlePath.cubicTo(
        size.width * 0.2447699,
        size.height * 0.9243354,
        size.width * 0.2405858,
        size.height * 0.9243354,
        size.width * 0.2405858,
        size.height * 0.9243354);
    circlePath.cubicTo(
        size.width * 0.2405858,
        size.height * 0.9243354,
        size.width * 0.2384937,
        size.height * 0.9304703,
        size.width * 0.2384937,
        size.height * 0.9304703);
    circlePath.cubicTo(
        size.width * 0.2384937,
        size.height * 0.9304703,
        size.width * 0.2447699,
        size.height * 0.9345603,
        size.width * 0.2447699,
        size.height * 0.9345603);
    circlePath.cubicTo(
        size.width * 0.2447699,
        size.height * 0.9345603,
        size.width * 0.2259414,
        size.height * 0.9366053,
        size.width * 0.2259414,
        size.height * 0.9366053);
    circlePath.cubicTo(
        size.width * 0.2318828,
        size.height * 0.9181391,
        size.width * 0.2188703,
        size.height * 0.9150102,
        size.width * 0.2050209,
        size.height * 0.9079755);
    circlePath.cubicTo(
        size.width * 0.2050209,
        size.height * 0.9079755,
        size.width * 0.2008368,
        size.height * 0.9120654,
        size.width * 0.2008368,
        size.height * 0.9120654);
    circlePath.cubicTo(
        size.width * 0.2008368,
        size.height * 0.9120654,
        size.width * 0.2029289,
        size.height * 0.9161554,
        size.width * 0.2029289,
        size.height * 0.9161554);
    circlePath.cubicTo(
        size.width * 0.2029289,
        size.height * 0.9161554,
        size.width * 0.2008368,
        size.height * 0.9182004,
        size.width * 0.2008368,
        size.height * 0.9182004);
    circlePath.cubicTo(
        size.width * 0.2008368,
        size.height * 0.9182004,
        size.width * 0.2071130,
        size.height * 0.9202454,
        size.width * 0.2071130,
        size.height * 0.9202454);
    circlePath.cubicTo(
        size.width * 0.2071130,
        size.height * 0.9202454,
        size.width * 0.2071130,
        size.height * 0.9263804,
        size.width * 0.2071130,
        size.height * 0.9263804);
    circlePath.cubicTo(
        size.width * 0.2071130,
        size.height * 0.9263804,
        size.width * 0.2112971,
        size.height * 0.9222904,
        size.width * 0.2112971,
        size.height * 0.9222904);
    circlePath.cubicTo(
        size.width * 0.2112971,
        size.height * 0.9222904,
        size.width * 0.2112971,
        size.height * 0.9202454,
        size.width * 0.2112971,
        size.height * 0.9202454);
    circlePath.cubicTo(
        size.width * 0.2112971,
        size.height * 0.9202454,
        size.width * 0.2217573,
        size.height * 0.9182004,
        size.width * 0.2217573,
        size.height * 0.9182004);
    circlePath.cubicTo(
        size.width * 0.2217573,
        size.height * 0.9182004,
        size.width * 0.2238494,
        size.height * 0.9263804,
        size.width * 0.2238494,
        size.height * 0.9263804);
    circlePath.cubicTo(
        size.width * 0.2032845,
        size.height * 0.9307157,
        size.width * 0.2121339,
        size.height * 0.9279550,
        size.width * 0.1945607,
        size.height * 0.9222904);
    circlePath.cubicTo(
        size.width * 0.1945607,
        size.height * 0.9222904,
        size.width * 0.1966527,
        size.height * 0.9100204,
        size.width * 0.1966527,
        size.height * 0.9100204);
    circlePath.cubicTo(
        size.width * 0.1966527,
        size.height * 0.9100204,
        size.width * 0.2008368,
        size.height * 0.9038855,
        size.width * 0.2008368,
        size.height * 0.9038855);
    circlePath.cubicTo(
        size.width * 0.2008368,
        size.height * 0.9038855,
        size.width * 0.1924686,
        size.height * 0.9038855,
        size.width * 0.1924686,
        size.height * 0.9038855);
    circlePath.cubicTo(
        size.width * 0.1895816,
        size.height * 0.8970143,
        size.width * 0.1644979,
        size.height * 0.8896933,
        size.width * 0.1569038,
        size.height * 0.8895706);
    circlePath.cubicTo(
        size.width * 0.1548954,
        size.height * 0.8834151,
        size.width * 0.1527406,
        size.height * 0.8813088,
        size.width * 0.1464435,
        size.height * 0.8793456);
    circlePath.cubicTo(
        size.width * 0.1405649,
        size.height * 0.8687935,
        size.width * 0.1243933,
        size.height * 0.8574233,
        size.width * 0.1151255,
        size.height * 0.8484867);
    circlePath.cubicTo(
        size.width * 0.1027824,
        size.height * 0.8365849,
        size.width * 0.07566946,
        size.height * 0.8008180,
        size.width * 0.06893305,
        size.height * 0.7852761);
    circlePath.cubicTo(
        size.width * 0.06893305,
        size.height * 0.7852761,
        size.width * 0.06165272,
        size.height * 0.7648262,
        size.width * 0.06165272,
        size.height * 0.7648262);
    circlePath.cubicTo(
        size.width * 0.06165272,
        size.height * 0.7648262,
        size.width * 0.04884937,
        size.height * 0.7341513,
        size.width * 0.04884937,
        size.height * 0.7341513);
    circlePath.cubicTo(
        size.width * 0.04884937,
        size.height * 0.7341513,
        size.width * 0.03194561,
        size.height * 0.6707566,
        size.width * 0.03194561,
        size.height * 0.6707566);
    circlePath.cubicTo(
        size.width * 0.03194561,
        size.height * 0.6707566,
        size.width * 0.01914226,
        size.height * 0.6278119,
        size.width * 0.01914226,
        size.height * 0.6278119);
    circlePath.cubicTo(
        size.width * 0.01914226,
        size.height * 0.6278119,
        size.width * 0.004309623,
        size.height * 0.5439673,
        size.width * 0.004309623,
        size.height * 0.5439673);
    circlePath.cubicTo(
        size.width * 0.004309623,
        size.height * 0.5439673,
        size.width * 0.004309623,
        size.height * 0.5287935,
        size.width * 0.004309623,
        size.height * 0.5287935);
    circlePath.cubicTo(
        size.width * 0.004309623,
        size.height * 0.5287935,
        size.width * 0.001192469,
        size.height * 0.4887526,
        size.width * 0.001192469,
        size.height * 0.4887526);
    circlePath.cubicTo(
        size.width * 0.001192469,
        size.height * 0.4735992,
        size.width * 0.005041841,
        size.height * 0.4692843,
        size.width * 0.006485356,
        size.height * 0.4586503);
    circlePath.cubicTo(
        size.width * 0.006485356,
        size.height * 0.4586503,
        size.width * 0.007761506,
        size.height * 0.4376278,
        size.width * 0.007761506,
        size.height * 0.4376278);
    circlePath.cubicTo(
        size.width * 0.007761506,
        size.height * 0.4376278,
        size.width * 0.007761506,
        size.height * 0.4233129,
        size.width * 0.007761506,
        size.height * 0.4233129);
    circlePath.cubicTo(
        size.width * 0.008117155,
        size.height * 0.4115951,
        size.width * 0.007970711,
        size.height * 0.3997546,
        size.width * 0.01192469,
        size.height * 0.3885481);
    circlePath.cubicTo(
        size.width * 0.01192469,
        size.height * 0.3885481,
        size.width * 0.01673640,
        size.height * 0.3750920,
        size.width * 0.01673640,
        size.height * 0.3750920);
    circlePath.cubicTo(
        size.width * 0.01673640,
        size.height * 0.3750920,
        size.width * 0.02127615,
        size.height * 0.3476483,
        size.width * 0.02127615,
        size.height * 0.3476483);
    circlePath.cubicTo(
        size.width * 0.02907950,
        size.height * 0.3198569,
        size.width * 0.04581590,
        size.height * 0.3021677,
        size.width * 0.05420502,
        size.height * 0.2822086);
    circlePath.cubicTo(
        size.width * 0.05420502,
        size.height * 0.2822086,
        size.width * 0.07587866,
        size.height * 0.2290389,
        size.width * 0.07587866,
        size.height * 0.2290389);
    circlePath.cubicTo(
        size.width * 0.08656904,
        size.height * 0.2080982,
        size.width * 0.1074895,
        size.height * 0.1806339,
        size.width * 0.1221130,
        size.height * 0.1615542);
    circlePath.cubicTo(
        size.width * 0.1369665,
        size.height * 0.1422086,
        size.width * 0.1529916,
        size.height * 0.1204703,
        size.width * 0.1715481,
        size.height * 0.1045603);
    circlePath.cubicTo(
        size.width * 0.1715481,
        size.height * 0.1045603,
        size.width * 0.1854184,
        size.height * 0.09474438,
        size.width * 0.1854184,
        size.height * 0.09474438);
    circlePath.cubicTo(
        size.width * 0.1909623,
        size.height * 0.09022495,
        size.width * 0.1921339,
        size.height * 0.08607362,
        size.width * 0.2029289,
        size.height * 0.07997955);
    circlePath.cubicTo(
        size.width * 0.2029289,
        size.height * 0.07997955,
        size.width * 0.2238494,
        size.height * 0.07184049,
        size.width * 0.2238494,
        size.height * 0.07184049);
    circlePath.cubicTo(
        size.width * 0.2238494,
        size.height * 0.07184049,
        size.width * 0.2573222,
        size.height * 0.05316973,
        size.width * 0.2573222,
        size.height * 0.05316973);
    circlePath.cubicTo(
        size.width * 0.2573222,
        size.height * 0.05316973,
        size.width * 0.2552301,
        size.height * 0.06543967,
        size.width * 0.2552301,
        size.height * 0.06543967);
    circlePath.close();
    circlePath.moveTo(size.width * 0.6987448, size.height * 0.7566462);
    circlePath.cubicTo(
        size.width * 0.7155439,
        size.height * 0.7405930,
        size.width * 0.7235565,
        size.height * 0.7353374,
        size.width * 0.7387029,
        size.height * 0.7157464);
    circlePath.cubicTo(
        size.width * 0.7387029,
        size.height * 0.7157464,
        size.width * 0.7635983,
        size.height * 0.6768916,
        size.width * 0.7635983,
        size.height * 0.6768916);
    circlePath.cubicTo(
        size.width * 0.7950209,
        size.height * 0.6297751,
        size.width * 0.8214854,
        size.height * 0.5769734,
        size.width * 0.8221757,
        size.height * 0.5194274);
    circlePath.cubicTo(
        size.width * 0.8227615,
        size.height * 0.4692229,
        size.width * 0.8108159,
        size.height * 0.4123926,
        size.width * 0.7859623,
        size.height * 0.3680982);
    circlePath.cubicTo(
        size.width * 0.7717364,
        size.height * 0.3427607,
        size.width * 0.7566527,
        size.height * 0.3267894,
        size.width * 0.7389331,
        size.height * 0.3047035);
    circlePath.cubicTo(
        size.width * 0.7276987,
        size.height * 0.2906953,
        size.width * 0.7098117,
        size.height * 0.2673006,
        size.width * 0.6966527,
        size.height * 0.2558896);
    circlePath.cubicTo(
        size.width * 0.6966527,
        size.height * 0.2558896,
        size.width * 0.6778243,
        size.height * 0.2429857,
        size.width * 0.6778243,
        size.height * 0.2429857);
    circlePath.cubicTo(
        size.width * 0.6674895,
        size.height * 0.2349693,
        size.width * 0.6579707,
        size.height * 0.2259714,
        size.width * 0.6464435,
        size.height * 0.2195092);
    circlePath.cubicTo(
        size.width * 0.6197908,
        size.height * 0.2045603,
        size.width * 0.5994561,
        size.height * 0.2052761,
        size.width * 0.5711297,
        size.height * 0.1975256);
    circlePath.cubicTo(
        size.width * 0.5506695,
        size.height * 0.1919018,
        size.width * 0.5150628,
        size.height * 0.1800613,
        size.width * 0.4958159,
        size.height * 0.1782618);
    circlePath.cubicTo(
        size.width * 0.4744142,
        size.height * 0.1762577,
        size.width * 0.4614017,
        size.height * 0.1824949,
        size.width * 0.4414226,
        size.height * 0.1859305);
    circlePath.cubicTo(
        size.width * 0.4414226,
        size.height * 0.1859305,
        size.width * 0.3933054,
        size.height * 0.1927403,
        size.width * 0.3933054,
        size.height * 0.1927403);
    circlePath.cubicTo(
        size.width * 0.3933054,
        size.height * 0.1927403,
        size.width * 0.3786611,
        size.height * 0.1973211,
        size.width * 0.3786611,
        size.height * 0.1973211);
    circlePath.cubicTo(
        size.width * 0.3562552,
        size.height * 0.2036196,
        size.width * 0.3472385,
        size.height * 0.2032720,
        size.width * 0.3242678,
        size.height * 0.2150716);
    circlePath.cubicTo(
        size.width * 0.3147490,
        size.height * 0.2199591,
        size.width * 0.2880962,
        size.height * 0.2365031,
        size.width * 0.2814017,
        size.height * 0.2437219);
    circlePath.cubicTo(
        size.width * 0.2659414,
        size.height * 0.2604499,
        size.width * 0.2499791,
        size.height * 0.2965644,
        size.width * 0.2370711,
        size.height * 0.3169734);
    circlePath.cubicTo(
        size.width * 0.2264226,
        size.height * 0.3338037,
        size.width * 0.1942259,
        size.height * 0.3901431,
        size.width * 0.1879916,
        size.height * 0.4069530);
    circlePath.cubicTo(
        size.width * 0.1792259,
        size.height * 0.4306135,
        size.width * 0.1792887,
        size.height * 0.4414724,
        size.width * 0.1743515,
        size.height * 0.4642127);
    circlePath.cubicTo(
        size.width * 0.1720293,
        size.height * 0.4749284,
        size.width * 0.1651883,
        size.height * 0.5121881,
        size.width * 0.1657113,
        size.height * 0.5214724);
    circlePath.cubicTo(
        size.width * 0.1671339,
        size.height * 0.5476892,
        size.width * 0.1814017,
        size.height * 0.5859509,
        size.width * 0.1865900,
        size.height * 0.6114519);
    circlePath.cubicTo(
        size.width * 0.1865900,
        size.height * 0.6114519,
        size.width * 0.1938075,
        size.height * 0.6523517,
        size.width * 0.1938075,
        size.height * 0.6523517);
    circlePath.cubicTo(
        size.width * 0.1938075,
        size.height * 0.6523517,
        size.width * 0.2017573,
        size.height * 0.6687117,
        size.width * 0.2017573,
        size.height * 0.6687117);
    circlePath.cubicTo(
        size.width * 0.2135356,
        size.height * 0.6980777,
        size.width * 0.2376360,
        size.height * 0.7365440,
        size.width * 0.2635983,
        size.height * 0.7556646);
    circlePath.cubicTo(
        size.width * 0.2780753,
        size.height * 0.7663190,
        size.width * 0.3171757,
        size.height * 0.7837832,
        size.width * 0.3347280,
        size.height * 0.7898160);
    circlePath.cubicTo(
        size.width * 0.3347280,
        size.height * 0.7898160,
        size.width * 0.3493724,
        size.height * 0.7936810,
        size.width * 0.3493724,
        size.height * 0.7936810);
    circlePath.cubicTo(
        size.width * 0.3493724,
        size.height * 0.7936810,
        size.width * 0.3723849,
        size.height * 0.8032311,
        size.width * 0.3723849,
        size.height * 0.8032311);
    circlePath.cubicTo(
        size.width * 0.3723849,
        size.height * 0.8032311,
        size.width * 0.3891213,
        size.height * 0.8067689,
        size.width * 0.3891213,
        size.height * 0.8067689);
    circlePath.cubicTo(
        size.width * 0.4137448,
        size.height * 0.8136401,
        size.width * 0.4096234,
        size.height * 0.8218814,
        size.width * 0.4209414,
        size.height * 0.8290184);
    circlePath.cubicTo(
        size.width * 0.4326778,
        size.height * 0.8364417,
        size.width * 0.4351883,
        size.height * 0.8338446,
        size.width * 0.4441004,
        size.height * 0.8346012);
    circlePath.cubicTo(
        size.width * 0.4441004,
        size.height * 0.8346012,
        size.width * 0.4686192,
        size.height * 0.8346012,
        size.width * 0.4686192,
        size.height * 0.8346012);
    circlePath.cubicTo(
        size.width * 0.4686192,
        size.height * 0.8346012,
        size.width * 0.5146444,
        size.height * 0.8364008,
        size.width * 0.5146444,
        size.height * 0.8364008);
    circlePath.cubicTo(
        size.width * 0.5331381,
        size.height * 0.8363190,
        size.width * 0.5512343,
        size.height * 0.8320245,
        size.width * 0.5690377,
        size.height * 0.8275051);
    circlePath.cubicTo(
        size.width * 0.5690377,
        size.height * 0.8275051,
        size.width * 0.5836820,
        size.height * 0.8228834,
        size.width * 0.5836820,
        size.height * 0.8228834);
    circlePath.cubicTo(
        size.width * 0.5836820,
        size.height * 0.8228834,
        size.width * 0.6066946,
        size.height * 0.8207975,
        size.width * 0.6066946,
        size.height * 0.8207975);
    circlePath.cubicTo(
        size.width * 0.6203347,
        size.height * 0.8169939,
        size.width * 0.6378452,
        size.height * 0.8047239,
        size.width * 0.6506276,
        size.height * 0.7983640);
    circlePath.cubicTo(
        size.width * 0.6506276,
        size.height * 0.7983640,
        size.width * 0.6751464,
        size.height * 0.7892638,
        size.width * 0.6751464,
        size.height * 0.7892638);
    circlePath.cubicTo(
        size.width * 0.6886192,
        size.height * 0.7814315,
        size.width * 0.7003347,
        size.height * 0.7697342,
        size.width * 0.7154812,
        size.height * 0.7648262);
    circlePath.cubicTo(
        size.width * 0.7107113,
        size.height * 0.7573211,
        size.width * 0.7073849,
        size.height * 0.7572597,
        size.width * 0.6987448,
        size.height * 0.7566462);
    circlePath.close();
    circlePath.moveTo(size.width * 0.9832636, size.height * 0.4335378);
    circlePath.cubicTo(
        size.width * 0.9832636,
        size.height * 0.4335378,
        size.width * 0.9811715,
        size.height * 0.4335378,
        size.width * 0.9811715,
        size.height * 0.4335378);
    circlePath.cubicTo(
        size.width * 0.9811715,
        size.height * 0.4335378,
        size.width * 0.9832636,
        size.height * 0.4355828,
        size.width * 0.9832636,
        size.height * 0.4355828);
    circlePath.cubicTo(
        size.width * 0.9832636,
        size.height * 0.4355828,
        size.width * 0.9832636,
        size.height * 0.4335378,
        size.width * 0.9832636,
        size.height * 0.4335378);
    circlePath.close();
    circlePath.moveTo(size.width * 0.9686192, size.height * 0.6707566);
    circlePath.cubicTo(
        size.width * 0.9686192,
        size.height * 0.6707566,
        size.width * 0.9665272,
        size.height * 0.6707566,
        size.width * 0.9665272,
        size.height * 0.6707566);
    circlePath.cubicTo(
        size.width * 0.9665272,
        size.height * 0.6707566,
        size.width * 0.9686192,
        size.height * 0.6728016,
        size.width * 0.9686192,
        size.height * 0.6728016);
    circlePath.cubicTo(
        size.width * 0.9686192,
        size.height * 0.6728016,
        size.width * 0.9686192,
        size.height * 0.6707566,
        size.width * 0.9686192,
        size.height * 0.6707566);
    circlePath.close();
    circlePath.moveTo(size.width * 0.9016736, size.height * 0.7525562);
    circlePath.cubicTo(
        size.width * 0.9016736,
        size.height * 0.7525562,
        size.width * 0.8995816,
        size.height * 0.7525562,
        size.width * 0.8995816,
        size.height * 0.7525562);
    circlePath.cubicTo(
        size.width * 0.8995816,
        size.height * 0.7525562,
        size.width * 0.9016736,
        size.height * 0.7546012,
        size.width * 0.9016736,
        size.height * 0.7546012);
    circlePath.cubicTo(
        size.width * 0.9016736,
        size.height * 0.7546012,
        size.width * 0.9016736,
        size.height * 0.7525562,
        size.width * 0.9016736,
        size.height * 0.7525562);
    circlePath.close();
    circlePath.moveTo(size.width * 0.8912134, size.height * 0.7668712);
    circlePath.cubicTo(
        size.width * 0.8867782,
        size.height * 0.7685685,
        size.width * 0.8859414,
        size.height * 0.7682413,
        size.width * 0.8870293,
        size.height * 0.7730061);
    circlePath.cubicTo(
        size.width * 0.8870293,
        size.height * 0.7730061,
        size.width * 0.8912134,
        size.height * 0.7668712,
        size.width * 0.8912134,
        size.height * 0.7668712);
    circlePath.close();
    circlePath.moveTo(size.width * 0.9079498, size.height * 0.7730061);
    circlePath.cubicTo(
        size.width * 0.9079498,
        size.height * 0.7730061,
        size.width * 0.9058577,
        size.height * 0.7730061,
        size.width * 0.9058577,
        size.height * 0.7730061);
    circlePath.cubicTo(
        size.width * 0.9058577,
        size.height * 0.7730061,
        size.width * 0.9079498,
        size.height * 0.7750511,
        size.width * 0.9079498,
        size.height * 0.7750511);
    circlePath.cubicTo(
        size.width * 0.9079498,
        size.height * 0.7750511,
        size.width * 0.9079498,
        size.height * 0.7730061,
        size.width * 0.9079498,
        size.height * 0.7730061);
    circlePath.close();
    circlePath.moveTo(size.width * 0.8912134, size.height * 0.7770961);
    circlePath.cubicTo(
        size.width * 0.8912134,
        size.height * 0.7770961,
        size.width * 0.8891213,
        size.height * 0.7770961,
        size.width * 0.8891213,
        size.height * 0.7770961);
    circlePath.cubicTo(
        size.width * 0.8891213,
        size.height * 0.7770961,
        size.width * 0.8912134,
        size.height * 0.7791411,
        size.width * 0.8912134,
        size.height * 0.7791411);
    circlePath.cubicTo(
        size.width * 0.8912134,
        size.height * 0.7791411,
        size.width * 0.8912134,
        size.height * 0.7770961,
        size.width * 0.8912134,
        size.height * 0.7770961);
    circlePath.close();
    circlePath.moveTo(size.width * 0.8891213, size.height * 0.7832311);
    circlePath.cubicTo(
        size.width * 0.8891213,
        size.height * 0.7832311,
        size.width * 0.8870293,
        size.height * 0.7832311,
        size.width * 0.8870293,
        size.height * 0.7832311);
    circlePath.cubicTo(
        size.width * 0.8870293,
        size.height * 0.7832311,
        size.width * 0.8891213,
        size.height * 0.7852761,
        size.width * 0.8891213,
        size.height * 0.7852761);
    circlePath.cubicTo(
        size.width * 0.8891213,
        size.height * 0.7852761,
        size.width * 0.8891213,
        size.height * 0.7832311,
        size.width * 0.8891213,
        size.height * 0.7832311);
    circlePath.close();
    circlePath.moveTo(size.width * 0.8744770, size.height * 0.7852761);
    circlePath.cubicTo(
        size.width * 0.8744770,
        size.height * 0.7852761,
        size.width * 0.8723849,
        size.height * 0.7852761,
        size.width * 0.8723849,
        size.height * 0.7852761);
    circlePath.cubicTo(
        size.width * 0.8723849,
        size.height * 0.7852761,
        size.width * 0.8744770,
        size.height * 0.7873211,
        size.width * 0.8744770,
        size.height * 0.7873211);
    circlePath.cubicTo(
        size.width * 0.8744770,
        size.height * 0.7873211,
        size.width * 0.8744770,
        size.height * 0.7852761,
        size.width * 0.8744770,
        size.height * 0.7852761);
    circlePath.close();
    circlePath.moveTo(size.width * 0.8807531, size.height * 0.8016360);
    circlePath.cubicTo(
        size.width * 0.8807531,
        size.height * 0.8016360,
        size.width * 0.8786611,
        size.height * 0.8016360,
        size.width * 0.8786611,
        size.height * 0.8016360);
    circlePath.cubicTo(
        size.width * 0.8786611,
        size.height * 0.8016360,
        size.width * 0.8807531,
        size.height * 0.8036810,
        size.width * 0.8807531,
        size.height * 0.8036810);
    circlePath.cubicTo(
        size.width * 0.8807531,
        size.height * 0.8036810,
        size.width * 0.8807531,
        size.height * 0.8016360,
        size.width * 0.8807531,
        size.height * 0.8016360);
    circlePath.close();
    circlePath.moveTo(size.width * 0.8305439, size.height * 0.8139059);
    circlePath.cubicTo(
        size.width * 0.8305439,
        size.height * 0.8139059,
        size.width * 0.8284519,
        size.height * 0.8139059,
        size.width * 0.8284519,
        size.height * 0.8139059);
    circlePath.cubicTo(
        size.width * 0.8284519,
        size.height * 0.8139059,
        size.width * 0.8305439,
        size.height * 0.8159509,
        size.width * 0.8305439,
        size.height * 0.8159509);
    circlePath.cubicTo(
        size.width * 0.8305439,
        size.height * 0.8159509,
        size.width * 0.8305439,
        size.height * 0.8139059,
        size.width * 0.8305439,
        size.height * 0.8139059);
    circlePath.close();
    circlePath.moveTo(size.width * 0.8368201, size.height * 0.8343558);
    circlePath.cubicTo(
        size.width * 0.8368201,
        size.height * 0.8343558,
        size.width * 0.8347280,
        size.height * 0.8343558,
        size.width * 0.8347280,
        size.height * 0.8343558);
    circlePath.cubicTo(
        size.width * 0.8347280,
        size.height * 0.8343558,
        size.width * 0.8368201,
        size.height * 0.8364008,
        size.width * 0.8368201,
        size.height * 0.8364008);
    circlePath.cubicTo(
        size.width * 0.8368201,
        size.height * 0.8364008,
        size.width * 0.8368201,
        size.height * 0.8343558,
        size.width * 0.8368201,
        size.height * 0.8343558);
    circlePath.close();
    circlePath.moveTo(size.width * 0.8640167, size.height * 0.8343558);
    circlePath.cubicTo(
        size.width * 0.8640167,
        size.height * 0.8343558,
        size.width * 0.8619247,
        size.height * 0.8343558,
        size.width * 0.8619247,
        size.height * 0.8343558);
    circlePath.cubicTo(
        size.width * 0.8619247,
        size.height * 0.8343558,
        size.width * 0.8640167,
        size.height * 0.8364008,
        size.width * 0.8640167,
        size.height * 0.8364008);
    circlePath.cubicTo(
        size.width * 0.8640167,
        size.height * 0.8364008,
        size.width * 0.8640167,
        size.height * 0.8343558,
        size.width * 0.8640167,
        size.height * 0.8343558);
    circlePath.close();
    circlePath.moveTo(size.width * 0.8368201, size.height * 0.8404908);
    circlePath.cubicTo(
        size.width * 0.8368201,
        size.height * 0.8404908,
        size.width * 0.8326360,
        size.height * 0.8404908,
        size.width * 0.8326360,
        size.height * 0.8404908);
    circlePath.cubicTo(
        size.width * 0.8326360,
        size.height * 0.8404908,
        size.width * 0.8305439,
        size.height * 0.8486708,
        size.width * 0.8305439,
        size.height * 0.8486708);
    circlePath.cubicTo(
        size.width * 0.8305439,
        size.height * 0.8486708,
        size.width * 0.8368201,
        size.height * 0.8404908,
        size.width * 0.8368201,
        size.height * 0.8404908);
    circlePath.close();
    circlePath.moveTo(size.width * 0.8221757, size.height * 0.8466258);
    circlePath.cubicTo(
        size.width * 0.8221757,
        size.height * 0.8466258,
        size.width * 0.8179916,
        size.height * 0.8466258,
        size.width * 0.8179916,
        size.height * 0.8466258);
    circlePath.cubicTo(
        size.width * 0.8179916,
        size.height * 0.8466258,
        size.width * 0.8200837,
        size.height * 0.8588957,
        size.width * 0.8200837,
        size.height * 0.8588957);
    circlePath.cubicTo(
        size.width * 0.8200837,
        size.height * 0.8588957,
        size.width * 0.8221757,
        size.height * 0.8466258,
        size.width * 0.8221757,
        size.height * 0.8466258);
    circlePath.close();
    circlePath.moveTo(size.width * 0.8410042, size.height * 0.8527607);
    circlePath.cubicTo(
        size.width * 0.8410042,
        size.height * 0.8527607,
        size.width * 0.8389121,
        size.height * 0.8527607,
        size.width * 0.8389121,
        size.height * 0.8527607);
    circlePath.cubicTo(
        size.width * 0.8389121,
        size.height * 0.8527607,
        size.width * 0.8410042,
        size.height * 0.8548057,
        size.width * 0.8410042,
        size.height * 0.8548057);
    circlePath.cubicTo(
        size.width * 0.8410042,
        size.height * 0.8548057,
        size.width * 0.8410042,
        size.height * 0.8527607,
        size.width * 0.8410042,
        size.height * 0.8527607);
    circlePath.close();
    circlePath.moveTo(size.width * 0.8096234, size.height * 0.8588957);
    circlePath.cubicTo(
        size.width * 0.8096234,
        size.height * 0.8588957,
        size.width * 0.8033473,
        size.height * 0.8588957,
        size.width * 0.8033473,
        size.height * 0.8588957);
    circlePath.cubicTo(
        size.width * 0.8033473,
        size.height * 0.8588957,
        size.width * 0.8054393,
        size.height * 0.8752556,
        size.width * 0.8054393,
        size.height * 0.8752556);
    circlePath.cubicTo(
        size.width * 0.8054393,
        size.height * 0.8752556,
        size.width * 0.7970711,
        size.height * 0.8813906,
        size.width * 0.7970711,
        size.height * 0.8813906);
    circlePath.cubicTo(
        size.width * 0.7970711,
        size.height * 0.8813906,
        size.width * 0.8096234,
        size.height * 0.8813906,
        size.width * 0.8096234,
        size.height * 0.8813906);
    circlePath.cubicTo(
        size.width * 0.8096234,
        size.height * 0.8813906,
        size.width * 0.8054393,
        size.height * 0.8691207,
        size.width * 0.8054393,
        size.height * 0.8691207);
    circlePath.cubicTo(
        size.width * 0.8054393,
        size.height * 0.8691207,
        size.width * 0.8096234,
        size.height * 0.8711656,
        size.width * 0.8096234,
        size.height * 0.8711656);
    circlePath.cubicTo(
        size.width * 0.8096234,
        size.height * 0.8711656,
        size.width * 0.8117155,
        size.height * 0.8691207,
        size.width * 0.8117155,
        size.height * 0.8691207);
    circlePath.cubicTo(
        size.width * 0.8117155,
        size.height * 0.8691207,
        size.width * 0.8096234,
        size.height * 0.8588957,
        size.width * 0.8096234,
        size.height * 0.8588957);
    circlePath.close();
    circlePath.moveTo(size.width * 0.8221757, size.height * 0.8609407);
    circlePath.cubicTo(
        size.width * 0.8221757,
        size.height * 0.8609407,
        size.width * 0.8179916,
        size.height * 0.8609407,
        size.width * 0.8179916,
        size.height * 0.8609407);
    circlePath.cubicTo(
        size.width * 0.8179916,
        size.height * 0.8609407,
        size.width * 0.8200837,
        size.height * 0.8691207,
        size.width * 0.8200837,
        size.height * 0.8691207);
    circlePath.cubicTo(
        size.width * 0.8200837,
        size.height * 0.8691207,
        size.width * 0.8221757,
        size.height * 0.8609407,
        size.width * 0.8221757,
        size.height * 0.8609407);
    circlePath.close();
    circlePath.moveTo(size.width * 0.7970711, size.height * 0.8691207);
    circlePath.cubicTo(
        size.width * 0.7970711,
        size.height * 0.8691207,
        size.width * 0.7949791,
        size.height * 0.8691207,
        size.width * 0.7949791,
        size.height * 0.8691207);
    circlePath.cubicTo(
        size.width * 0.7949791,
        size.height * 0.8691207,
        size.width * 0.7970711,
        size.height * 0.8711656,
        size.width * 0.7970711,
        size.height * 0.8711656);
    circlePath.cubicTo(
        size.width * 0.7970711,
        size.height * 0.8711656,
        size.width * 0.7970711,
        size.height * 0.8691207,
        size.width * 0.7970711,
        size.height * 0.8691207);
    circlePath.close();
    circlePath.moveTo(size.width * 0.8389121, size.height * 0.8670757);
    circlePath.cubicTo(
        size.width * 0.8389121,
        size.height * 0.8670757,
        size.width * 0.8410042,
        size.height * 0.8670757,
        size.width * 0.8410042,
        size.height * 0.8670757);
    circlePath.cubicTo(
        size.width * 0.8410042,
        size.height * 0.8670757,
        size.width * 0.8389121,
        size.height * 0.8691207,
        size.width * 0.8389121,
        size.height * 0.8691207);
    circlePath.cubicTo(
        size.width * 0.8389121,
        size.height * 0.8691207,
        size.width * 0.8389121,
        size.height * 0.8670757,
        size.width * 0.8389121,
        size.height * 0.8670757);
    circlePath.close();
    circlePath.moveTo(size.width * 0.7928870, size.height * 0.8813906);
    circlePath.cubicTo(
        size.width * 0.7928870,
        size.height * 0.8813906,
        size.width * 0.7887029,
        size.height * 0.8813906,
        size.width * 0.7887029,
        size.height * 0.8813906);
    circlePath.cubicTo(
        size.width * 0.7887029,
        size.height * 0.8813906,
        size.width * 0.7866109,
        size.height * 0.8895706,
        size.width * 0.7866109,
        size.height * 0.8895706);
    circlePath.cubicTo(
        size.width * 0.7866109,
        size.height * 0.8895706,
        size.width * 0.7928870,
        size.height * 0.8813906,
        size.width * 0.7928870,
        size.height * 0.8813906);
    circlePath.close();
    circlePath.moveTo(size.width * 0.1799163, size.height * 0.9038855);
    circlePath.cubicTo(
        size.width * 0.1799163,
        size.height * 0.9038855,
        size.width * 0.1861925,
        size.height * 0.8997955,
        size.width * 0.1861925,
        size.height * 0.8997955);
    circlePath.cubicTo(
        size.width * 0.1861925,
        size.height * 0.8997955,
        size.width * 0.1820084,
        size.height * 0.9059305,
        size.width * 0.1820084,
        size.height * 0.9059305);
    circlePath.cubicTo(
        size.width * 0.1820084,
        size.height * 0.9059305,
        size.width * 0.1799163,
        size.height * 0.9038855,
        size.width * 0.1799163,
        size.height * 0.9038855);
    circlePath.close();
    circlePath.moveTo(size.width * 0.7489540, size.height * 0.9038855);
    circlePath.cubicTo(
        size.width * 0.7489540,
        size.height * 0.9038855,
        size.width * 0.7510460,
        size.height * 0.9038855,
        size.width * 0.7510460,
        size.height * 0.9038855);
    circlePath.cubicTo(
        size.width * 0.7510460,
        size.height * 0.9038855,
        size.width * 0.7489540,
        size.height * 0.9059305,
        size.width * 0.7489540,
        size.height * 0.9059305);
    circlePath.cubicTo(
        size.width * 0.7489540,
        size.height * 0.9059305,
        size.width * 0.7489540,
        size.height * 0.9038855,
        size.width * 0.7489540,
        size.height * 0.9038855);
    circlePath.close();
    circlePath.moveTo(size.width * 0.7447699, size.height * 0.9079755);
    circlePath.cubicTo(
        size.width * 0.7447699,
        size.height * 0.9079755,
        size.width * 0.7426778,
        size.height * 0.9079755,
        size.width * 0.7426778,
        size.height * 0.9079755);
    circlePath.cubicTo(
        size.width * 0.7426778,
        size.height * 0.9079755,
        size.width * 0.7447699,
        size.height * 0.9100204,
        size.width * 0.7447699,
        size.height * 0.9100204);
    circlePath.cubicTo(
        size.width * 0.7447699,
        size.height * 0.9100204,
        size.width * 0.7447699,
        size.height * 0.9079755,
        size.width * 0.7447699,
        size.height * 0.9079755);
    circlePath.close();
    circlePath.moveTo(size.width * 0.1841004, size.height * 0.9079755);
    circlePath.cubicTo(
        size.width * 0.1841004,
        size.height * 0.9079755,
        size.width * 0.1861925,
        size.height * 0.9079755,
        size.width * 0.1861925,
        size.height * 0.9079755);
    circlePath.cubicTo(
        size.width * 0.1861925,
        size.height * 0.9079755,
        size.width * 0.1841004,
        size.height * 0.9100204,
        size.width * 0.1841004,
        size.height * 0.9100204);
    circlePath.cubicTo(
        size.width * 0.1841004,
        size.height * 0.9100204,
        size.width * 0.1841004,
        size.height * 0.9079755,
        size.width * 0.1841004,
        size.height * 0.9079755);
    circlePath.close();
    circlePath.moveTo(size.width * 0.1903766, size.height * 0.9100204);
    circlePath.cubicTo(
        size.width * 0.1903766,
        size.height * 0.9100204,
        size.width * 0.1924686,
        size.height * 0.9100204,
        size.width * 0.1924686,
        size.height * 0.9100204);
    circlePath.cubicTo(
        size.width * 0.1924686,
        size.height * 0.9100204,
        size.width * 0.1903766,
        size.height * 0.9120654,
        size.width * 0.1903766,
        size.height * 0.9120654);
    circlePath.cubicTo(
        size.width * 0.1903766,
        size.height * 0.9120654,
        size.width * 0.1903766,
        size.height * 0.9100204,
        size.width * 0.1903766,
        size.height * 0.9100204);
    circlePath.close();
    circlePath.moveTo(size.width * 0.7301255, size.height * 0.9182004);
    circlePath.cubicTo(
        size.width * 0.7301255,
        size.height * 0.9182004,
        size.width * 0.7280335,
        size.height * 0.9182004,
        size.width * 0.7280335,
        size.height * 0.9182004);
    circlePath.cubicTo(
        size.width * 0.7280335,
        size.height * 0.9182004,
        size.width * 0.7301255,
        size.height * 0.9202454,
        size.width * 0.7301255,
        size.height * 0.9202454);
    circlePath.cubicTo(
        size.width * 0.7301255,
        size.height * 0.9202454,
        size.width * 0.7301255,
        size.height * 0.9182004,
        size.width * 0.7301255,
        size.height * 0.9182004);
    circlePath.close();
    circlePath.moveTo(size.width * 0.7217573, size.height * 0.9202454);
    circlePath.cubicTo(
        size.width * 0.7217573,
        size.height * 0.9202454,
        size.width * 0.7196653,
        size.height * 0.9202454,
        size.width * 0.7196653,
        size.height * 0.9202454);
    circlePath.cubicTo(
        size.width * 0.7196653,
        size.height * 0.9202454,
        size.width * 0.7217573,
        size.height * 0.9222904,
        size.width * 0.7217573,
        size.height * 0.9222904);
    circlePath.cubicTo(
        size.width * 0.7217573,
        size.height * 0.9222904,
        size.width * 0.7217573,
        size.height * 0.9202454,
        size.width * 0.7217573,
        size.height * 0.9202454);
    circlePath.close();
    circlePath.moveTo(size.width * 0.2112971, size.height * 0.9263804);
    circlePath.cubicTo(
        size.width * 0.2112971,
        size.height * 0.9263804,
        size.width * 0.2092050,
        size.height * 0.9263804,
        size.width * 0.2092050,
        size.height * 0.9263804);
    circlePath.cubicTo(
        size.width * 0.2092050,
        size.height * 0.9263804,
        size.width * 0.2112971,
        size.height * 0.9284254,
        size.width * 0.2112971,
        size.height * 0.9284254);
    circlePath.cubicTo(
        size.width * 0.2112971,
        size.height * 0.9284254,
        size.width * 0.2112971,
        size.height * 0.9263804,
        size.width * 0.2112971,
        size.height * 0.9263804);
    circlePath.close();
    circlePath.moveTo(size.width * 0.2364017, size.height * 0.9325153);
    circlePath.cubicTo(
        size.width * 0.2364017,
        size.height * 0.9325153,
        size.width * 0.2343096,
        size.height * 0.9325153,
        size.width * 0.2343096,
        size.height * 0.9325153);
    circlePath.cubicTo(
        size.width * 0.2343096,
        size.height * 0.9325153,
        size.width * 0.2364017,
        size.height * 0.9345603,
        size.width * 0.2364017,
        size.height * 0.9345603);
    circlePath.cubicTo(
        size.width * 0.2364017,
        size.height * 0.9345603,
        size.width * 0.2364017,
        size.height * 0.9325153,
        size.width * 0.2364017,
        size.height * 0.9325153);
    circlePath.close();
    circlePath.moveTo(size.width * 0.2322176, size.height * 0.9345603);
    circlePath.cubicTo(
        size.width * 0.2322176,
        size.height * 0.9345603,
        size.width * 0.2301255,
        size.height * 0.9345603,
        size.width * 0.2301255,
        size.height * 0.9345603);
    circlePath.cubicTo(
        size.width * 0.2301255,
        size.height * 0.9345603,
        size.width * 0.2322176,
        size.height * 0.9366053,
        size.width * 0.2322176,
        size.height * 0.9366053);
    circlePath.cubicTo(
        size.width * 0.2322176,
        size.height * 0.9366053,
        size.width * 0.2322176,
        size.height * 0.9345603,
        size.width * 0.2322176,
        size.height * 0.9345603);
    circlePath.close();
    circlePath.moveTo(size.width * 0.6652720, size.height * 0.9386503);
    circlePath.cubicTo(
        size.width * 0.6652720,
        size.height * 0.9386503,
        size.width * 0.6631799,
        size.height * 0.9386503,
        size.width * 0.6631799,
        size.height * 0.9386503);
    circlePath.cubicTo(
        size.width * 0.6631799,
        size.height * 0.9386503,
        size.width * 0.6652720,
        size.height * 0.9406953,
        size.width * 0.6652720,
        size.height * 0.9406953);
    circlePath.cubicTo(
        size.width * 0.6652720,
        size.height * 0.9406953,
        size.width * 0.6652720,
        size.height * 0.9386503,
        size.width * 0.6652720,
        size.height * 0.9386503);
    circlePath.close();
    circlePath.moveTo(size.width * 0.6631799, size.height * 0.9406953);
    circlePath.cubicTo(
        size.width * 0.6631799,
        size.height * 0.9406953,
        size.width * 0.6569038,
        size.height * 0.9447853,
        size.width * 0.6569038,
        size.height * 0.9447853);
    circlePath.cubicTo(
        size.width * 0.6569038,
        size.height * 0.9447853,
        size.width * 0.6631799,
        size.height * 0.9468303,
        size.width * 0.6631799,
        size.height * 0.9468303);
    circlePath.cubicTo(
        size.width * 0.6631799,
        size.height * 0.9468303,
        size.width * 0.6631799,
        size.height * 0.9406953,
        size.width * 0.6631799,
        size.height * 0.9406953);
    circlePath.close();
    circlePath.moveTo(size.width * 0.2928870, size.height * 0.9488753);
    circlePath.cubicTo(
        size.width * 0.2928870,
        size.height * 0.9488753,
        size.width * 0.2907950,
        size.height * 0.9488753,
        size.width * 0.2907950,
        size.height * 0.9488753);
    circlePath.cubicTo(
        size.width * 0.2907950,
        size.height * 0.9488753,
        size.width * 0.2928870,
        size.height * 0.9509202,
        size.width * 0.2928870,
        size.height * 0.9509202);
    circlePath.cubicTo(
        size.width * 0.2928870,
        size.height * 0.9509202,
        size.width * 0.2928870,
        size.height * 0.9488753,
        size.width * 0.2928870,
        size.height * 0.9488753);
    circlePath.close();
    circlePath.moveTo(size.width * 0.6527197, size.height * 0.9488753);
    circlePath.cubicTo(
        size.width * 0.6527824,
        size.height * 0.9548671,
        size.width * 0.6561925,
        size.height * 0.9544172,
        size.width * 0.6610879,
        size.height * 0.9529652);
    circlePath.cubicTo(
        size.width * 0.6610879,
        size.height * 0.9529652,
        size.width * 0.6527197,
        size.height * 0.9488753,
        size.width * 0.6527197,
        size.height * 0.9488753);
    circlePath.close();
    circlePath.moveTo(size.width * 0.2907950, size.height * 0.9570552);
    circlePath.cubicTo(
        size.width * 0.2907950,
        size.height * 0.9570552,
        size.width * 0.2991632,
        size.height * 0.9570552,
        size.width * 0.2991632,
        size.height * 0.9570552);
    circlePath.cubicTo(
        size.width * 0.2963389,
        size.height * 0.9636810,
        size.width * 0.2943724,
        size.height * 0.9623926,
        size.width * 0.2907950,
        size.height * 0.9570552);
    circlePath.close();
    circlePath.moveTo(size.width * 0.3661088, size.height * 0.9754601);
    circlePath.cubicTo(
        size.width * 0.3700418,
        size.height * 0.9809611,
        size.width * 0.3719874,
        size.height * 0.9851125,
        size.width * 0.3702929,
        size.height * 0.9918200);
    circlePath.cubicTo(
        size.width * 0.3702929,
        size.height * 0.9918200,
        size.width * 0.3619247,
        size.height * 0.9815951,
        size.width * 0.3619247,
        size.height * 0.9815951);
    circlePath.cubicTo(
        size.width * 0.3619247,
        size.height * 0.9815951,
        size.width * 0.3661088,
        size.height * 0.9754601,
        size.width * 0.3661088,
        size.height * 0.9754601);
    circlePath.close();
    circlePath.moveTo(size.width * 0.3723849, size.height * 0.9795501);
    circlePath.cubicTo(
        size.width * 0.3723849,
        size.height * 0.9795501,
        size.width * 0.3744770,
        size.height * 0.9795501,
        size.width * 0.3744770,
        size.height * 0.9795501);
    circlePath.cubicTo(
        size.width * 0.3744770,
        size.height * 0.9795501,
        size.width * 0.3723849,
        size.height * 0.9815951,
        size.width * 0.3723849,
        size.height * 0.9815951);
    circlePath.cubicTo(
        size.width * 0.3723849,
        size.height * 0.9815951,
        size.width * 0.3723849,
        size.height * 0.9795501,
        size.width * 0.3723849,
        size.height * 0.9795501);
    circlePath.close();
    circlePath.moveTo(size.width * 0.4602510, size.height * 0.9815951);
    circlePath.cubicTo(
        size.width * 0.4602510,
        size.height * 0.9815951,
        size.width * 0.4581590,
        size.height * 0.9815951,
        size.width * 0.4581590,
        size.height * 0.9815951);
    circlePath.cubicTo(
        size.width * 0.4581590,
        size.height * 0.9815951,
        size.width * 0.4602510,
        size.height * 0.9836401,
        size.width * 0.4602510,
        size.height * 0.9836401);
    circlePath.cubicTo(
        size.width * 0.4602510,
        size.height * 0.9836401,
        size.width * 0.4602510,
        size.height * 0.9815951,
        size.width * 0.4602510,
        size.height * 0.9815951);
    circlePath.close();
    circlePath.moveTo(size.width * 0.4414226, size.height * 0.9836401);
    circlePath.cubicTo(
        size.width * 0.4414226,
        size.height * 0.9836401,
        size.width * 0.4435146,
        size.height * 0.9836401,
        size.width * 0.4435146,
        size.height * 0.9836401);
    circlePath.cubicTo(
        size.width * 0.4435146,
        size.height * 0.9836401,
        size.width * 0.4414226,
        size.height * 0.9856851,
        size.width * 0.4414226,
        size.height * 0.9856851);
    circlePath.cubicTo(
        size.width * 0.4414226,
        size.height * 0.9856851,
        size.width * 0.4414226,
        size.height * 0.9836401,
        size.width * 0.4414226,
        size.height * 0.9836401);
    circlePath.close();
    circlePath.moveTo(size.width * 0.4518828, size.height * 0.9897751);
    circlePath.cubicTo(
        size.width * 0.4518828,
        size.height * 0.9897751,
        size.width * 0.4539749,
        size.height * 0.9897751,
        size.width * 0.4539749,
        size.height * 0.9897751);
    circlePath.cubicTo(
        size.width * 0.4539749,
        size.height * 0.9897751,
        size.width * 0.4518828,
        size.height * 0.9918200,
        size.width * 0.4518828,
        size.height * 0.9918200);
    circlePath.cubicTo(
        size.width * 0.4518828,
        size.height * 0.9918200,
        size.width * 0.4518828,
        size.height * 0.9897751,
        size.width * 0.4518828,
        size.height * 0.9897751);
    circlePath.close();

    return circlePath;
  }

  void _yang(Canvas canvas) {
    double yOffset =
        ((containerSize.height / 2) - ((containerSize.width / 10) / 2));
    Offset yangOffset = Offset((containerSize.width / 10), yOffset);
    Size yangSize =
        Size((containerSize.width / 1.2), (containerSize.width / 10));

    Paint paintYang = Paint()..style = PaintingStyle.fill;
    canvas.drawPath(_strokePath(yangSize).shift(yangOffset), paintYang);
  }

  void _yin(Canvas canvas) {
    double yOffset =
        ((containerSize.height / 2) - ((containerSize.width / 10) / 2));
    Offset yinLOffset = Offset((containerSize.width / 10), yOffset);
    Size yinLSize = Size((containerSize.width / 3), (containerSize.width / 10));

    Paint paintYinL = Paint()..style = PaintingStyle.fill;
    canvas.drawPath(_strokePath(yinLSize).shift(yinLOffset), paintYinL);

    Offset yinROffset = Offset((containerSize.width / 1.76), yOffset);

    Paint paintYinR = Paint()..style = PaintingStyle.fill;
    canvas.drawPath(_strokePath(yinLSize).shift(yinROffset), paintYinR);
  }

  void _mYang(Canvas canvas) {
    double yOffset =
        ((containerSize.height / 2) - ((containerSize.width / 10) / 2));
    Offset yangOffset = Offset((containerSize.width / 10), yOffset);
    Size yangSize =
        Size((containerSize.width / 1.2), (containerSize.width / 10));

    Paint paintYang = Paint()..style = PaintingStyle.fill;
    canvas.drawPath(_strokePath(yangSize).shift(yangOffset), paintYang);

    Offset circleOffset = Offset(
        (containerSize.width / 2.31), (yOffset - (containerSize.width / 44)));
    Size circleSize =
        Size((containerSize.width / 7), (containerSize.width / 7));
    Paint paintCircle = Paint()..style = PaintingStyle.fill;
    canvas.drawPath(_circlePath(circleSize).shift(circleOffset), paintCircle);
  }

  void _mYin(Canvas canvas) {
    double yOffset =
        ((containerSize.height / 2) - ((containerSize.width / 10) / 2));
    Offset yinLOffset = Offset((containerSize.width / 10), yOffset);
    Size yinLSize = Size((containerSize.width / 3), (containerSize.width / 10));

    Paint paintYinL = Paint()..style = PaintingStyle.fill;
    canvas.drawPath(_strokePath(yinLSize).shift(yinLOffset), paintYinL);

    Offset yinROffset = Offset((containerSize.width / 1.76), yOffset);

    Paint paintYinR = Paint()..style = PaintingStyle.fill;
    canvas.drawPath(_strokePath(yinLSize).shift(yinROffset), paintYinR);

    Offset crossOffset = Offset(
        (containerSize.width / 2.31), (yOffset - (containerSize.width / 30)));
    Size crossSize = Size((containerSize.width / 7), (containerSize.width / 7));
    Paint paintCross = Paint()..style = PaintingStyle.fill;
    canvas.drawPath(_crossPath(crossSize).shift(crossOffset), paintCross);
  }

  @override
  bool shouldRepaint(covariant ButtonPainter oldDelegate) {
    return true;
  }
}
