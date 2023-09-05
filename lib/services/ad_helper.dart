import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdHelper {
  // late BannerAd _bannerAd;
  // BannerAd get getBanner => _bannerAd;

  InterstitialAd? _interstitialAd;

  // static String get bannerAdUnitId {
  //   if (Platform.isAndroid) {
  //     return 'ca-app-pub-3940256099942544/6300978111';
  //   } else if (Platform.isIOS) {
  //     return 'ca-app-pub-3940256099942544/2934735716';
  //   } else {
  //     throw UnsupportedError('Unsupported platform');
  //   }
  // }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      // return "ca-app-pub-3940256099942544/1033173712";
      return "ca-app-pub-1766040301874779/1001938247";

      // } else if (Platform.isIOS) {
      //   return "ca-app-pub-3940256099942544/4411468910";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  // void loadBannerAd() {
  //   _bannerAd = BannerAd(
  //     adUnitId: AdHelper.bannerAdUnitId,
  //     request: const AdRequest(),
  //     size: AdSize.banner,
  //     listener: BannerAdListener(
  //       onAdFailedToLoad: (ad, err) {
  //         ad.dispose();
  //       },
  //     ),
  //   );

  //   _bannerAd.load();
  // }

  void createInterstitialAd() {
    InterstitialAd.load(
        adUnitId: AdHelper.interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            _interstitialAd = ad;
            _interstitialAd!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            _interstitialAd = null;
            createInterstitialAd();
          },
        ));
  }

  void showInterstitialAd() {
    if (_interstitialAd == null) {
      return;
    }
    _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        ad.dispose();
        createInterstitialAd();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        ad.dispose();
        createInterstitialAd();
      },
    );
    _interstitialAd!.show();
    _interstitialAd = null;
  }
}
