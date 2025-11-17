class OnboardingContent {
  final String image;
  final String title;
  final String description;

  OnboardingContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<OnboardingContent> onboardingPages = [
  OnboardingContent(

    image: 'assets/onboarding_graphic_1.png', 
    title: 'Browse all the category',
    description: 'In aliquip aute exercitation ut et nisl ut mollit. Deserunt dolor elit pariatur aute.',
  ),
  OnboardingContent(

    image: 'assets/onboarding_graphic_2.png',
    title: 'Amazing Discounts & Offers',
    description: 'In aliquip aute exercitation ut et nisl ut mollit. Deserunt dolor elit pariatur aute.',
  ),
  OnboardingContent(
    image: 'assets/onboarding_graphic_3.png',
    title: 'Delivery in 30 Min',
    description: 'In aliquip aute exercitation ut et nisl ut mollit. Deserunt dolor elit pariatur aute.',
  ),
];