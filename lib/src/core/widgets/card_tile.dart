import 'package:flutter/material.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';

/// Card tile component following design system
class CardTile extends StatelessWidget {
  const CardTile({
    super.key,
    required this.child,
    this.onTap,
    this.padding,
    this.margin,
    this.elevation = Elevation.sm,
    this.borderRadius = Radius.md,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.semanticsLabel,
  });

  final Widget child;
  final VoidCallback? onTap;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double elevation;
  final double borderRadius;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    Widget card = Container(
      margin: margin ?? const EdgeInsets.all(Spacing.xs),
      decoration: BoxDecoration(
        color: backgroundColor ?? theme.cardColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: borderColor != null
            ? Border.all(
                color: borderColor!,
                width: borderWidth ?? 1,
              )
            : null,
        boxShadow: elevation > 0
            ? [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: elevation * 2,
                  offset: Offset(0, elevation),
                ),
              ]
            : null,
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(Spacing.md),
        child: child,
      ),
    );

    if (onTap != null) {
      card = InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius),
        child: card,
      );
    }

    if (semanticsLabel != null) {
      card = Semantics(
        label: semanticsLabel,
        button: onTap != null,
        child: card,
      );
    }

    return card;
  }
}

/// Card tile with header
class CardTileWithHeader extends StatelessWidget {
  const CardTileWithHeader({
    super.key,
    required this.title,
    required this.child,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.padding,
    this.margin,
    this.elevation = Elevation.sm,
    this.borderRadius = Radius.md,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.semanticsLabel,
  });

  final String title;
  final Widget child;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double elevation;
  final double borderRadius;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) {
    return CardTile(
      onTap: onTap,
      padding: padding,
      margin: margin,
      elevation: elevation,
      borderRadius: borderRadius,
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      borderWidth: borderWidth,
      semanticsLabel: semanticsLabel,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyles.titleMedium,
                    ),
                    if (subtitle != null) ...[
                      const SizedBox(height: Spacing.xxs),
                      Text(
                        subtitle!,
                        style: TextStyles.bodySmall.copyWith(
                          color: AppColors.onSurface.withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              if (trailing != null) ...[
                const SizedBox(width: Spacing.sm),
                trailing!,
              ],
            ],
          ),
          const SizedBox(height: Spacing.md),
          child,
        ],
      ),
    );
  }
}

/// Card tile with list
class CardTileList extends StatelessWidget {
  const CardTileList({
    super.key,
    required this.items,
    this.itemBuilder,
    this.separatorBuilder,
    this.padding,
    this.margin,
    this.elevation = Elevation.sm,
    this.borderRadius = Radius.md,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.semanticsLabel,
  });

  final List<Widget> items;
  final Widget Function(BuildContext, int)? itemBuilder;
  final Widget Function(BuildContext, int)? separatorBuilder;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double elevation;
  final double borderRadius;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) {
    return CardTile(
      padding: padding,
      margin: margin,
      elevation: elevation,
      borderRadius: borderRadius,
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      borderWidth: borderWidth,
      semanticsLabel: semanticsLabel,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: itemBuilder ?? (context, index) => items[index],
        separatorBuilder: separatorBuilder ?? 
            (context, index) => const SizedBox(height: Spacing.sm),
      ),
    );
  }
}
