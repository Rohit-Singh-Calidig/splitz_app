import 'package:splitz_app/app/index.dart';

class AddMemberScreen extends StatefulWidget {
  const AddMemberScreen({super.key});

  @override
  State<AddMemberScreen> createState() => _AddMemberScreenState();
}

class _AddMemberScreenState extends State<AddMemberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MinimalAppBar(title: "Add Member"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalGap(height: 8.h),
          Padding(
            padding: EdgeInsets.only(left: 8.w, bottom: 8.h),
            child: Text(
              "Group Name",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: AppColors.grayScale400),
            ),
          ),
          SizedBox(
            height: 78.h,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: const GroupMemberWidget(
                      imageUrl:
                          "https://img.freepik.com/free-psd/3d-render-avatar-character_23-2150611765.jpg",
                      name: "You"),
                ),
                Flexible(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: const GroupMemberWidget(
                              imageUrl:
                                  "https://img.freepik.com/free-psd/3d-render-avatar-character_23-2150611740.jpg?semt=ais_hybrid",
                              name: "Chuck"),
                        );
                      }),
                ),
              ],
            ),
          ),
          VerticalGap(height: 12.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: AppInputField(
              hintText: "Search for name or phone number",
              prefixIcon: Padding(
                padding: EdgeInsets.all(14.w),
                child: Image.asset(
                  AppImages.search,
                  color: AppColors.grayScale400,
                  width: 8.w,
                  height: 8.w,
                ),
              ),
              borderRadius: 12.sp,
            ),
          ),
          VerticalGap(height: 12.h),
          SpaceBetweenWidget(
            widget1: Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 8.w, right: 4.w),
                child: AppElevatedButton(
                    label: "From phone directory",
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: AppColors.grayScale600),
                    height: 35.h,
                    onPressed: () {}),
              ),
            ),
            widget2: Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 4.w, right: 8.w),
                child: AppOutlinedButton(
                  label: "Invite link ",
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColors.primaryGreen),
                  height: 35.h,
                  outlineColor: AppColors.primaryGreen,
                  onPressed: () {},
                  localImagePath: AppImages.hyperlink,
                  imageWidth: 16.w,
                  imageHeight: 16.w,
                  imageColor: AppColors.primaryGreen,
                ),
              ),
            ),
          ),
          VerticalGap(height: 12.h),
          Flexible(
            child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: 16,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading:
                        AppNetworkImage(url: "url", width: 48.w, height: 48.w),
                    title: Text(
                      "Title",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontFamily: Constants.fontUrbanist,
                          color: AppColors.grayScale25),
                    ),
                    subtitle: Text(
                      "(389) 555-0515",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: AppColors.grayScale100),
                    ),
                    trailing: Visibility(
                      visible: true,
                      child: Badge(
                        backgroundColor: AppColors.primaryGreen,
                        largeSize: 12.w,
                        child: Image.asset(
                          AppImages.check,
                          width: 16.w,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class GroupMemberWidget extends StatelessWidget {
  final String imageUrl;
  final String name;

  const GroupMemberWidget({
    super.key,
    required this.imageUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 56.w,
              height: 56.w,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(99.sp),
                  child:
                      AppNetworkImage(url: imageUrl, width: 56.w, height: 56.w),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                onPressed: () {},
                icon: Badge(
                  backgroundColor: AppColors.grayScale400,
                  largeSize: 16.w,
                  child: Image.asset(
                    AppImages.wink,
                    color: AppColors.disabledGray,
                  ),
                ),
              ),
            ),
          ],
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: AppColors.grayScale400,
                fontWeight: FontWeight.w400,
              ),
        ),
      ],
    );
  }
}
