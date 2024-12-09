import 'package:splitz_app/screens/activity_screen.dart';
import 'package:splitz_app/screens/buddies_screen.dart';
import 'package:splitz_app/screens/home_screen.dart';
import 'package:splitz_app/screens/profile_screen.dart';

import '../app/index.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int? _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const ActivityScreen(),
    const BuddiesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(
        imageUrl:
            "https://thumbs.dreamstime.com/b/d-icon-avatar-people-kawaii-cartoon-boy-wearer-glasses-smiling-man-bright-portrait-teenage-character-isolated-d-icon-344072996.jpg",
        firstName: 'Omer',
      ),
      body: _screens[_currentIndex ?? 0],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex ?? 0,
        onTap: (int? index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: AppColors.grayScale600,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(color: AppColors.primaryGreen),
        unselectedLabelStyle: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(color: AppColors.grayScale300),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        selectedItemColor: AppColors.primaryGreen,
        unselectedItemColor: AppColors.grayScale300,
        items: [
          BottomNavigationBarItem(
              icon: bottomBarIcon(AppImages.home),
              activeIcon: bottomBarActiveIcon(AppImages.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: bottomBarIcon(AppImages.activities),
              activeIcon: bottomBarActiveIcon(AppImages.activities),
              label: "Activity"),
          BottomNavigationBarItem(
              icon: bottomBarIcon(AppImages.buddies),
              activeIcon: bottomBarActiveIcon(AppImages.buddies),
              label: "Buddies"),
          BottomNavigationBarItem(
              icon: bottomBarIcon(AppImages.profile),
              activeIcon: bottomBarActiveIcon(AppImages.profile),
              label: "Profile"),
        ],
      ),
    );
  }

  Widget bottomBarIcon(String imagePath) {
    return Image.asset(
      imagePath,
      width: 24,
      height: 24,
      fit: BoxFit.cover,
      color: AppColors.grayScale300,
    );
  }

  Widget bottomBarActiveIcon(String imagePath) {
    return Image.asset(
      imagePath,
      width: 24,
      height: 24,
      fit: BoxFit.cover,
      color: AppColors.primaryGreen,
    );
  }
}
