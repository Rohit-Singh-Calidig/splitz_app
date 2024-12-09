part of '../index.dart';

class AppInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  // final String? labelText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? borderRadius;

  const AppInputField({
    super.key,
    this.controller,
    this.hintText,
    // this.labelText,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.obscureText = false,
    this.validator,
    this.focusNode,
    this.suffixIcon,
    this.prefixIcon,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    // Default focusNode if none is provided
    final focusNode = this.focusNode ?? FocusNode();

    return Focus(
      onFocusChange: (hasFocus) {
        // You can optionally manage the focus state here or elsewhere
      },
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        focusNode: focusNode,
        cursorColor: AppColors.primaryGreen,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w400, color: AppColors.grayScale25),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: AppColors.grayScale400),
          // labelText: labelText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          counterText: "",
          contentPadding:
              EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h),
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 99.sp),
            borderSide: BorderSide(
              color: focusNode.hasFocus
                  ? AppColors.primaryGreen
                  : AppColors.grayScale400,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 99.sp),
            borderSide: const BorderSide(color: AppColors.primaryGreen),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 99.sp),
            borderSide: BorderSide(
              color: focusNode.hasFocus
                  ? AppColors.primaryGreen
                  : AppColors.grayScale400,
            ),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
