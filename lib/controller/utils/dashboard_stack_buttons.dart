import "package:flutter/material.dart";
import "package:dropman/styles/colors.dart";

class StackCardButton extends StatelessWidget {
  final void Function() onPressed;
  final String label;
  final Widget? icon;
  const StackCardButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon ?? Container(),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom().copyWith(
        backgroundColor: const MaterialStatePropertyAll(kTertiaryColor),
        minimumSize: const MaterialStatePropertyAll(Size.fromHeight(29)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      label: Text(label, style: Theme.of(context).textTheme.bodySmall!.copyWith(        color: Theme.of(context).colorScheme.primary
      ),),
    );
  }
}
