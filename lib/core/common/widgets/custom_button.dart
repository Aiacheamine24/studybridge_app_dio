// Externals Imports
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
  });
  // Properties
  final Color? backgroundColor;
  final Color? textColor;
  final String label;
  final Function onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
            : Text(
                label,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: textColor ?? Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.w700),
              ),
      ),
    );
  }
}
