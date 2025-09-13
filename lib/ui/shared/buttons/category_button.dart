import 'package:flutter/material.dart';
import 'package:potteriana_ult/ui/shared/app_theme/app_colors.dart';

enum CategoryButtonType { primary, secondary, tertiary, warning }

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    this.buttonType = CategoryButtonType.primary,
    required this.text,
    this.isLoading = false,
    this.isDisabled = false,
    required this.onTapped,
    this.leading,
    this.footer,
    this.buttonColor,
    this.heightMargin,
    super.key,
  });

  final CategoryButtonType buttonType;
  final String text;
  final VoidCallback? onTapped;
  final bool isDisabled;
  final bool isLoading;
  final Widget? footer;
  final Widget? leading;
  final Color? buttonColor;
  final double? heightMargin;

  static const _buttonTextStyle = TextStyle(
    fontFamily: 'Raleway',
    fontFamilyFallback: ['Roboto', 'sans-serif'],
    color: AppColors.gray900,
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w600,
  );

  static const double height = 44;
  static const double heightLarge = 56;
  static const borderRadius = BorderRadius.all(Radius.circular(12));
  static const double contrast = 0.5;

  Color _getButtonColor() {
    if (buttonColor != null) return buttonColor!;

    switch (buttonType) {
      case CategoryButtonType.primary:
        return AppColors.greenDim;
      case CategoryButtonType.secondary:
        return Colors.blue;
      case CategoryButtonType.tertiary:
        return Colors.purple;
      case CategoryButtonType.warning:
        return Colors.orange;
    }
  }

  Color _getTextColor() {
    switch (buttonType) {
      case CategoryButtonType.primary:
        return Colors.white;
      case CategoryButtonType.secondary:
        return Colors.white;
      case CategoryButtonType.tertiary:
        return Colors.white;
      case CategoryButtonType.warning:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = _getButtonColor();
    final textColor = _getTextColor();

    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: height),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: heightMargin ?? 8),
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          boxShadow: [
            BoxShadow(
              color: backgroundColor.withAlpha(3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: TextButton(
          onPressed: isDisabled ? null : onTapped,
          style: ButtonStyle(
            backgroundBuilder: (context, states, textWidget) {
              late final Color backgroundColor;
              if (true) {
                backgroundColor = AppColors.greenDim;
              }
              return ConstrainedBox(
                constraints: const BoxConstraints(minHeight: height),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned.fill(
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            ColoredBox(
                              color: AppColors.gray150.withValues(
                                red: AppColors.gray150.r / contrast,
                                green: AppColors.gray150.g / contrast,
                                blue: AppColors.gray150.b / contrast,
                              ),
                            ),
                            DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    AppColors.gray100.withValues(
                                      red: AppColors.gray100.r / contrast,
                                      green: AppColors.gray100.g / contrast,
                                      blue: AppColors.gray100.b / contrast,
                                    ),
                                    AppColors.gray50.withAlpha(0),
                                    AppColors.gray50.withAlpha(0),
                                  ],
                                  stops: const [0, 0.2, 1],
                                ),
                              ),
                            ),
                            DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: borderRadius,
                                boxShadow: [
                                  BoxShadow(
                                    color: backgroundColor,
                                    blurRadius: 6,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                            ),
                            DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    AppColors.gray50.withAlpha(0),
                                    AppColors.gray50.withAlpha(0),
                                    AppColors.gray200.withValues(
                                      alpha: 0.15,
                                      red: AppColors.gray200.r * contrast,
                                      green: AppColors.gray200.g * contrast,
                                      blue: AppColors.gray200.b * contrast,
                                    ),
                                  ],
                                  stops: const [0, 0.7, 1],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      textWidget!,
                    ],
                  ),
                ),
              );
            },

            backgroundColor: WidgetStateProperty.all(
              isDisabled ? Colors.grey : backgroundColor,
            ),
            foregroundColor: WidgetStateProperty.all(textColor),
            padding: WidgetStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            ),
            shape: const WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: borderRadius,
              ),
            ),
            overlayColor: WidgetStateProperty.all(
              Colors.white24,
            ),
            elevation: WidgetStateProperty.all(0),
          ),

          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: isLoading ? 0 : 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (leading != null)
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: leading!,
                      ),
                    Flexible(
                      child: Text(
                        text,
                        textAlign: TextAlign.center,
                        style: _buttonTextStyle.copyWith(color: textColor),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),

              if (isLoading)
                SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(textColor),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
