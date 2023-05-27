import 'dart:async';
import 'dart:math';

class YikingDraw {
  List<dynamic> draw = [];

  int coin1 = Random().nextInt(2) + 2;
  int coin2 = Random().nextInt(2) + 2;
  int coin3 = Random().nextInt(2) + 2;
  YikingDraw();

  get getDraw => draw;

  final StreamController<List<int>> drawStream =
      StreamController<List<int>>.broadcast();

  Stream<List<int>> get streamDraw => drawStream.stream;

  void chance() {
    if (draw.length < 6) {
      coin1 = Random().nextInt(2) + 2;
      coin2 = Random().nextInt(2) + 2;
      coin3 = Random().nextInt(2) + 2;
      int result = coin1 + coin2 + coin3;
      draw.add(result);
    }
  }

  void setDraw(List<dynamic> drawSetter) {
    draw = drawSetter;
  }

  List<dynamic> mutation() {
    return draw.map((e) {
      switch (e) {
        case 6:
          return 7;
        case 9:
          return 8;
        default:
          return e;
      }
    }).toList();
  }

  List<dynamic> nuclear() {
    List<dynamic> convert = [];

    convert = draw.map((e) {
      switch (e) {
        case 6:
          return 8;
        case 9:
          return 7;
        default:
          return e;
      }
    }).toList();

    List<dynamic> firstHalf = convert.getRange(1, 4).toList();
    List<dynamic> secondHalf = convert.getRange(2, 5).toList();
    firstHalf.addAll(secondHalf);
    return firstHalf;
  }

  List<int> opposite() {
    return draw.map((e) {
      switch (e) {
        case 6:
          return 7;
        case 7:
          return 8;
        case 9:
          return 8;
        default:
          return 7;
      }
    }).toList();
  }

  int getIndex({List<dynamic>? drawIndex}) {
    drawIndex ??= draw;

    // Index of the YiKing table
    //conversion table rows are down trigrams, columns are up trigrams. Using down and up to get the
    //coordonates of an haxagram. Trigrams are at the same position on the x-axis and the y-axis
    final List<List<int>> listIndex = [
      [1, 9, 14, 43, 11, 34, 5, 26],
      [44, 57, 50, 28, 46, 32, 48, 18],
      [13, 37, 30, 49, 36, 55, 63, 22],
      [10, 61, 38, 58, 19, 54, 60, 41],
      [12, 20, 35, 45, 2, 16, 8, 23],
      [25, 42, 21, 17, 24, 51, 3, 27],
      [6, 59, 64, 47, 7, 40, 29, 4],
      [33, 53, 56, 31, 15, 62, 39, 52],
    ];

    //trigram definition 0 is Yin, 1 is Yang. Trigrams are in the same order as the axises from consult[][]
    final List<String> trigram = [
      '111', // Sky
      '011', // Wind
      '101', // Fire
      '110', // mist
      '000', // Earth
      '100', // Thunder
      '010', // Water
      '001', // Mountain
    ];

    List<int> convertTotrigram = [];
    for (int element in drawIndex) {
      switch (element) {
        case (6):
          convertTotrigram.add(0);
          break;
        case 7:
          convertTotrigram.add(1);
          break;
        case 8:
          convertTotrigram.add(0);
          break;
        default:
          convertTotrigram.add(1);
          break;
      }
    }

    String down = convertTotrigram.sublist(0, 3).join('');
    String up = convertTotrigram.sublist(3).join('');

    return listIndex[trigram.indexOf(down)][trigram.indexOf(up)];
  }

  List<String> getImageId({List<dynamic>? drawImage}) {
    drawImage ??= draw;

    List<int> convertTotrigram = [];
    for (int element in drawImage) {
      switch (element) {
        case (6):
          convertTotrigram.add(0);
          break;
        case 7:
          convertTotrigram.add(1);
          break;
        case 8:
          convertTotrigram.add(0);
          break;
        default:
          convertTotrigram.add(1);
          break;
      }
    }

    String down = convertTotrigram.sublist(0, 3).join('');
    String up = convertTotrigram.sublist(3).join('');

    return [down, up];
  }
}
