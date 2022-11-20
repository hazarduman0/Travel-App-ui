import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_ui/model/drawer_item.dart';

class DrawerItems {
  static const favorites =
      DrawerItem(title: 'Favorites', icon: FontAwesomeIcons.solidHeart);

  static const journey =
      DrawerItem(title: 'Journey', icon: FontAwesomeIcons.solidPaperPlane);

  static const opportunity =
      DrawerItem(title: 'Opportunity', icon: FontAwesomeIcons.solidLightbulb);

  static const earn =
      DrawerItem(title: 'Earn Gain', icon: FontAwesomeIcons.moneyCheckDollar);

  static const settings =
      DrawerItem(title: 'Settings', icon: FontAwesomeIcons.gear);

  static const invite =
      DrawerItem(title: 'Invite Friend', icon: FontAwesomeIcons.userPlus);

  static const logout =
      DrawerItem(title: 'Logout', icon: FontAwesomeIcons.rightFromBracket);

  static final List<DrawerItem> all = [
    journey,
    opportunity,
    favorites,
    earn,
    invite,
    settings,
    logout
  ];
}
