import '../../models/menu_item_model.dart';

class MenuItems {
  static MenuItemModel subscribedChannel = const MenuItemModel(
    "Subscribed Channels",
    "subscribed_channel",
  );
  static MenuItemModel settings = const MenuItemModel(
    "Settings",
    "settings",
  );
  static MenuItemModel aboutUs = const MenuItemModel(
    "About US",
    "about",
  );
  static MenuItemModel support = const MenuItemModel(
    "Support",
    "support",
  );
  static MenuItemModel logout = const MenuItemModel(
    "Logout",
    "logout",
  );

  static List<MenuItemModel> all = <MenuItemModel>[
    subscribedChannel,
    settings,
    aboutUs,
    support,
    logout,
  ];
}
