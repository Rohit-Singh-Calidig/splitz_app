import 'package:splitz_app/app/index.dart';

class CreateNewGroupScreen extends StatefulWidget {
  const CreateNewGroupScreen({super.key});

  @override
  State<CreateNewGroupScreen> createState() => _CreateNewGroupScreenState();
}

class _CreateNewGroupScreenState extends State<CreateNewGroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MinimalAppBar(title: "Create new group"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          children: [
            VerticalGap(height: 8.h),
            const AppInputField(
              hintText: "Your group name",
            ),
            Expanded(
              child: VerticalGap(height: 8.h),
            ),
            AppElevatedButton(label: "Next", onPressed: () {
              AppNavigation.navigateTo(context, AppRoutes.addMember);
            }),
            VerticalGap(height: 8.h),
          ],
        ),
      ),
    );
  }
}
