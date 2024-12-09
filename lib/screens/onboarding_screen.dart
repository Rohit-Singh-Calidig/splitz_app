import '../app/index.dart';
import '../models/local/onboarding_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
// PageController to control the PageView
  final PageController _controller = PageController();

  // List of pages (can be any widget)
  final List<OnboardingModel> _pages = [
    OnboardingModel(
        title1: "Seamless Group",
        title2: "Expense Tracking",
        description:
            "Easily split expenses with friends, keeping everything organized in real-time."),
    OnboardingModel(
        title1: "Create Circles,",
        title2: "Share Moments",
        description:
            "Simplifying expense sharing among your trusted groups and making memories together."),
    OnboardingModel(
        title1: "Precise and Fair",
        title2: "Expense Division",
        description:
            "Easily split expenses with friends, keeping everything organized in real-time."),
  ];

  int _currentPage = 0;

  // Method to update the current page index
  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // PageView widget
          Flexible(
            child: PageView(
              controller: _controller,
              onPageChanged: _onPageChanged,
              children: List.generate(
                _pages.length,
                (index) => OnboardingWidget(
                    title1: _pages[index].title1,
                    title2: _pages[index].title2,
                    description: _pages[index].description),
              ),
            ),
          ),
          // Custom Page Indicator
          VerticalGap(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _pages.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                width: _currentPage == index
                    ? 16.sp
                    : 8.sp, // Active page is bigger
                height: _currentPage == index ? 16.sp : 8.sp,
                margin: EdgeInsets.symmetric(horizontal: 4.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99.sp),
                  border: Border.all(
                    color: AppColors.primaryGreen,
                    width: _currentPage == index ? 2.w : 0,
                  ),
                ),
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryGreen,
                    borderRadius: BorderRadius.circular(99.sp),
                    border: Border.all(
                      color: AppColors.black,
                      width: _currentPage == index ? 2.w : 0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          VerticalGap(height: 40.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: AppElevatedButton(
                label: "Get started",
                onPressed: () {
                  if (_controller.page == _pages.length - 1) {
                    AppNavigation.navigateTo(context, AppRoutes.signup);
                  } else {
                    _controller.animateToPage(
                      _controller.page!.toInt() + 1,
                      duration: const Duration(milliseconds: 150),
                      curve: Curves.easeIn,
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}

class OnboardingWidget extends StatelessWidget {
  final String title1;
  final String title2;
  final String description;

  const OnboardingWidget({
    super.key,
    required this.title1,
    required this.title2,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title1,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            title2,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          VerticalGap(height: 10.h),
          Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
