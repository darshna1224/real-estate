import 'package:real_estate/core/contants/app_assets.dart';

class OnBoardingModel {
  String? image;
  String? title;
  String? bgimage;

  OnBoardingModel({this.image, this.title, this.bgimage});
}

List<OnBoardingModel> contents = [
  OnBoardingModel(
      title: 'The Perfect choice for your future',
      image: AppAssets.onBoarding1),
  OnBoardingModel(
      title: 'Find the Place of your Dream House',
      image: AppAssets.onBoarding2),
  OnBoardingModel(
      title: 'Buy your Dream House', image: AppAssets.onBoarding3),
];

List<OnBoardingModel> background = [
  OnBoardingModel(bgimage: AppAssets.onBoardingBg1),
  OnBoardingModel(bgimage: AppAssets.onBoardingBg2),
  OnBoardingModel(bgimage: AppAssets.onBoardingBg1),
];
