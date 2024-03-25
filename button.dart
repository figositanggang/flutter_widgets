class MyButton extends StatelessWidget {
  final Widget? child;
  final Color foregroundColor;
  final Color? backgroundColor;
  final void Function()? onPressed;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final double? elevation;
  final double? width;

  const MyButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.foregroundColor = Colors.black,
    this.backgroundColor,
    this.borderRadius,
    this.elevation = 8,
    this.width,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 15,
    ),
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          backgroundColor: backgroundColor ?? MyTheme.primaryColor(context),
          foregroundColor: foregroundColor,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(10),
          ),
        ),
        child: child,
      ),
    );
  }
}
