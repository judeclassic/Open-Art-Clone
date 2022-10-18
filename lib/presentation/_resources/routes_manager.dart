import 'package:flutter/material.dart';
import 'package:thestream/presentation/_resources/string_manager.dart';
import 'package:thestream/presentation/connect_wallet/connect_wallet.dart';
import 'package:thestream/presentation/creator_profile/creator_profile.dart';
import 'package:thestream/presentation/discover/discover.dart';
import 'package:thestream/presentation/home/home.dart';
import 'package:thestream/presentation/items_details/item_details.dart';
import 'package:thestream/presentation/place_bid/place_bid.dart';
import 'package:thestream/presentation/process/process.dart';
import 'package:thestream/presentation/profile/profile.dart';
import 'package:thestream/presentation/search/search.dart';
import 'package:thestream/presentation/splash/splash.dart';
import 'package:thestream/presentation/success/success.dart';
import 'package:thestream/presentation/upload_artwork/upload_artwork.dart';

class Routes {
  static const String splashRoute = '/splash';
  static const String connectWalletRoute = '/connectWallet';
  static const String creatorProfileRoute = '/creatorProfile';
  static const String discoverRoute = '/discover';
  static const String homeRoute = '/home';
  static const String itemDetailsRoute = '/itemDetails';
  static const String placeBidRoute = '/placeBid';
  static const String processRoute = '/process';
  static const String profileRoute = '/profile';
  static const String searchRoute = '/search';
  static const String successRoute = '/success';
  static const String uploadArtworkRoute = '/uploadArtwork';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.connectWalletRoute:
        return MaterialPageRoute(builder: (_) => const ConnectWalletView());
      case Routes.creatorProfileRoute:
        return MaterialPageRoute(builder: (_) => const CreatorProfileView());
      case Routes.discoverRoute:
        return MaterialPageRoute(builder: (_) => const DiscoverView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.itemDetailsRoute:
        return MaterialPageRoute(builder: (_) => const ItemDetailsView());
      case Routes.placeBidRoute:
        return MaterialPageRoute(builder: (_) => const PlaceBidView());
      case Routes.processRoute:
        return MaterialPageRoute(builder: (_) => const ProcessView());
      case Routes.profileRoute:
        return MaterialPageRoute(builder: (_) => const ProfileView());
      case Routes.searchRoute:
        return MaterialPageRoute(builder: (_) => const SearchView());
      case Routes.successRoute:
        return MaterialPageRoute(builder: (_) => const SuccessView());
      case Routes.uploadArtworkRoute:
        return MaterialPageRoute(builder: (_) => const UploadArtworkView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute () =>
    MaterialPageRoute(builder: (_) => Scaffold(
      appBar: AppBar(title: Text(AppString.noRoutesFound)),
      body: Center(child: Text(AppString.noRoutesFound))
    ));
}
