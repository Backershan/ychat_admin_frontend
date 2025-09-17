import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/utils/responsive_utils.dart';

/// Main layout wrapper following project standards
@immutable
class MainLayout extends StatelessWidget {
  final Widget child;
  final String? title;
  final List<Widget>? actions;
  final Widget? drawer;
  final Widget? bottomNavigationBar;
  final bool showAppBar;
  final bool showBackButton;
  final VoidCallback? onBackPressed;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  
  const MainLayout({
    super.key,
    required this.child,
    this.title,
    this.actions,
    this.drawer,
    this.bottomNavigationBar,
    this.showAppBar = true,
    this.showBackButton = false,
    this.onBackPressed,
    this.backgroundColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.background,
      appBar: showAppBar
          ? AppBar(
              title: title != null ? Text(title!) : null,
              actions: actions,
              leading: showBackButton
                  ? IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
                    )
                  : null,
              elevation: 0,
              centerTitle: true,
            )
          : null,
      drawer: drawer,
      bottomNavigationBar: bottomNavigationBar,
      body: SafeArea(
        child: Padding(
          padding: padding ?? EdgeInsets.all(ResponsiveSpacing.medium),
          child: child,
        ),
      ),
    );
  }
}

/// Page layout with consistent spacing and structure
@immutable
class PageLayout extends StatelessWidget {
  final Widget child;
  final String? title;
  final String? subtitle;
  final List<Widget>? actions;
  final Widget? header;
  final Widget? footer;
  final EdgeInsetsGeometry? padding;
  final bool showHeader;
  final bool showFooter;
  
  const PageLayout({
    super.key,
    required this.child,
    this.title,
    this.subtitle,
    this.actions,
    this.header,
    this.footer,
    this.padding,
    this.showHeader = true,
    this.showFooter = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        if (showHeader && (title != null || header != null)) ...[
          if (header != null)
            header!
          else
            Container(
              padding: EdgeInsets.only(bottom: ResponsiveSpacing.medium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title!,
                              style: TextStyle(
                                fontSize: ResponsiveText.xlarge.fontSize,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).textTheme.headlineSmall?.color,
                              ),
                            ),
                            if (subtitle != null) ...[
                              SizedBox(height: ResponsiveSpacing.small),
                              Text(
                                subtitle!,
                                style: TextStyle(
                                  fontSize: ResponsiveText.medium.fontSize,
                                  color: Theme.of(context).textTheme.bodyMedium?.color,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                      if (actions != null) ...[
                        SizedBox(width: ResponsiveSpacing.medium),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: actions!,
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          Divider(
            color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
          ),
          SizedBox(height: ResponsiveSpacing.medium),
        ],
        
        // Content
        Expanded(
          child: Padding(
            padding: padding ?? EdgeInsets.zero,
            child: child,
          ),
        ),
        
        // Footer
        if (showFooter && footer != null) ...[
          SizedBox(height: ResponsiveSpacing.medium),
          Divider(
            color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
          ),
          SizedBox(height: ResponsiveSpacing.medium),
          footer!,
        ],
      ],
    );
  }
}

/// Grid layout following project standards
@immutable
class GridLayout extends StatelessWidget {
  final List<Widget> children;
  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final double childAspectRatio;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;
  
  const GridLayout({
    super.key,
    required this.children,
    this.crossAxisCount = 2,
    this.crossAxisSpacing = 16.0,
    this.mainAxisSpacing = 16.0,
    this.childAspectRatio = 1.0,
    this.padding,
    this.physics,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: padding ?? EdgeInsets.all(ResponsiveSpacing.medium),
      physics: physics ?? const AlwaysScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: crossAxisSpacing.w,
        mainAxisSpacing: mainAxisSpacing.h,
        childAspectRatio: childAspectRatio,
      ),
      itemCount: children.length,
      itemBuilder: (context, index) => children[index],
    );
  }
}

/// List layout following project standards
@immutable
class ListLayout extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final Widget? separator;
  final Widget? header;
  final Widget? footer;
  
  const ListLayout({
    super.key,
    required this.children,
    this.padding,
    this.physics,
    this.shrinkWrap = false,
    this.separator,
    this.header,
    this.footer,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: padding ?? EdgeInsets.all(ResponsiveSpacing.medium),
      physics: physics ?? const AlwaysScrollableScrollPhysics(),
      shrinkWrap: shrinkWrap,
      itemCount: children.length + (header != null ? 1 : 0) + (footer != null ? 1 : 0),
      separatorBuilder: (context, index) => separator ?? SizedBox(height: ResponsiveSpacing.small),
      itemBuilder: (context, index) {
        if (header != null && index == 0) {
          return header!;
        }
        if (footer != null && index == children.length + (header != null ? 1 : 0)) {
          return footer!;
        }
        final childIndex = header != null ? index - 1 : index;
        return children[childIndex];
      },
    );
  }
}

/// Section layout for grouping related content
@immutable
class SectionLayout extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Widget child;
  final List<Widget>? actions;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final bool showDivider;
  
  const SectionLayout({
    super.key,
    this.title,
    this.subtitle,
    required this.child,
    this.actions,
    this.padding,
    this.backgroundColor,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.all(ResponsiveSpacing.medium),
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(8.r),
        border: showDivider
            ? Border.all(
                color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
              )
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null || actions != null) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (title != null)
                        Text(
                          title!,
                          style: TextStyle(
                            fontSize: ResponsiveText.large.fontSize,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).textTheme.headlineSmall?.color,
                          ),
                        ),
                      if (subtitle != null) ...[
                        SizedBox(height: ResponsiveSpacing.small),
                        Text(
                          subtitle!,
                          style: TextStyle(
                            fontSize: ResponsiveText.medium.fontSize,
                            color: Theme.of(context).textTheme.bodyMedium?.color,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                if (actions != null) ...[
                  SizedBox(width: ResponsiveSpacing.medium),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: actions!,
                  ),
                ],
              ],
            ),
            SizedBox(height: ResponsiveSpacing.medium),
          ],
          child,
        ],
      ),
    );
  }
}

/// Container layout with consistent styling
@immutable
class ContainerLayout extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final BoxShadow? shadow;
  final Border? border;
  final Alignment? alignment;
  
  const ContainerLayout({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.backgroundColor,
    this.width,
    this.height,
    this.borderRadius,
    this.shadow,
    this.border,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding ?? EdgeInsets.all(ResponsiveSpacing.medium),
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).colorScheme.surface,
        borderRadius: borderRadius ?? BorderRadius.circular(8.r),
        boxShadow: shadow != null ? [shadow!] : null,
        border: border,
      ),
      alignment: alignment,
      child: child,
    );
  }
}
