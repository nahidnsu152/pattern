class OnboardModel {
  final String image;
  final String title;
  final String subtitle;

  OnboardModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<OnboardModel> onboardData = [
  OnboardModel(
      image: "assets/images/onboard/onboard_1.png",
      title: "Find Your Nearby Pharmacy",
      subtitle:
          "Find the favourites stores you want by your locations or neighbordhood"),
  OnboardModel(
      image: "assets/images/onboard/onboard_2.png",
      title: "Qualityful Pharmacy",
      subtitle:
          "All medicines are approved by the Department of  Public Health"),
  OnboardModel(
      image: "assets/images/onboard/onboard_3.png",
      title: "Get the fastest delivery service",
      subtitle:
          "In case of emergency, collect the medicine from the nearest pharmacy very quickly."),
];
