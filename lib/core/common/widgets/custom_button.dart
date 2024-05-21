// Externals Imports
import 'package:dio_clean_learn/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
// Internals Imports

/// Custom Regular Button with the theme of the app Properties : [backgroundColor, textColor, label, onPressed, isLoading]
class CustomButton extends StatelessWidget {
  // Constructor
  const CustomButton({
    super.key,
    this.backgroundColor, // If null, use primary color
    this.textColor, // If null, use secondary color
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.icon,
  });
  // Properties
  final Color? backgroundColor;
  final Color? textColor;
  final String label;
  final Function onPressed;
  final bool isLoading;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Sizes.p8),
      child: ElevatedButton(
        // On pressed
        onPressed: () => onPressed(),
        // Style
        style: ElevatedButton.styleFrom(
          backgroundColor:
              backgroundColor ?? Theme.of(context).colorScheme.primary,
          // Set borders with no radius
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        // Label
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: isLoading
                ? SizedBox(
                    height: Theme.of(context).iconTheme.size,
                    width: Theme.of(context).iconTheme.size,
                    child: const CircularProgressIndicator.adaptive(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (icon != null) icon!,
                      gapW12,
                      Text(
                        label,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: textColor ??
                                Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  )),
      ),
    );
  }
}
