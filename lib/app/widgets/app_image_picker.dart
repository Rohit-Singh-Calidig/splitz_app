part of '../index.dart';

class AppImagePicker extends StatelessWidget {
  const AppImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagePicker picker = ImagePicker();
    return Container(
      width: 24.w,
      height: 24.w,
      decoration: BoxDecoration(
        color: AppColors.primaryGreen,
        borderRadius: BorderRadius.circular(99.sp),
      ),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled:
                true, // Makes the height of the bottom sheet customizable
            backgroundColor: AppColors.grayScale800,
            builder: (BuildContext context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.add_a_photo_outlined,
                      color: AppColors.white,
                    ),
                    title: Text(
                      "Take photo",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontFamily: Constants.fontSpaceGrotesk),
                    ),
                    onTap: () async {
                      final XFile? photo =
                          await picker.pickImage(source: ImageSource.camera);
                      return AppNavigation.goBack(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.group,
                      color: AppColors.white,
                    ),
                    onTap: () async {
                      final XFile? image =
                          await picker.pickImage(source: ImageSource.gallery);
                      return AppNavigation.goBack(context);
                    },
                    title: Text(
                      "Upload from library",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontFamily: Constants.fontSpaceGrotesk),
                    ),
                  )
                ],
              );
            },
          );
        },
        child: Image.asset(
          AppImages.camera,
          width: 24.w,
          height: 24.w,
        ),
      ),
    );
  }
}
