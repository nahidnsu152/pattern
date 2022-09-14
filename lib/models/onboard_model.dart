import 'package:pattern/utils/asset_utils.dart';

class OnboardModel {
  String image;
  String title;
  String description;

  OnboardModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnboardModel> onboardData = [
  OnboardModel(
    image: AssetUtils.onboard,
    title: "This is title",
    description: "This is Description",
  ),
  OnboardModel(
    image: AssetUtils.onboard,
    title: "This is title",
    description: "This is Description",
  ),
  OnboardModel(
    image: AssetUtils.onboard,
    title: "This is title",
    description: "This is Description",
  ),
  OnboardModel(
    image: AssetUtils.onboard,
    title: "This is title",
    description: "This is Description",
  ),
];
