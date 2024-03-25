class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final AutovalidateMode? autovalidateMode;
  final bool obscureText;
  final Widget? suffixIcon;
  final bool enableBorder;
  final int? maxLines;
  final bool autofocus;
  final void Function(String value)? onChanged;

  const MyTextField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.keyboardType,
    this.autovalidateMode,
    this.suffixIcon,
    this.obscureText = false,
    this.autofocus = false,
    this.enableBorder = true,
    this.maxLines = 1,
    this.textInputAction = TextInputAction.next,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      autovalidateMode: autovalidateMode,
      obscureText: obscureText,
      maxLines: maxLines,
      validator: (value) {
        if (value!.isEmpty) {
          return "Masih kosong...";
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: enableBorder
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )
            : InputBorder.none,
        suffixIcon: suffixIcon,
      ),
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      onChanged: onChanged,
    );
  }
}
