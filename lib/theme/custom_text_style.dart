import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeCabinBlack900 =>
      theme.textTheme.bodyLarge!.cabin.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeCabinGray90003 =>
      theme.textTheme.bodyLarge!.cabin.copyWith(
        color: appTheme.gray90003,
      );
  static get bodyLargeGray800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray800,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.25),
      );
  static get bodyLargeRobotoGray80001 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyLargeRobotoGray900 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeSFProBlack900 =>
      theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeSFProGray800 => theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: appTheme.gray800,
      );
  static get bodyLargeSFProGray80002 =>
      theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: appTheme.gray80002,
      );
  static get bodyLargeSFProPrimaryContainer =>
      theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.25),
      );
  static get bodyLargeSFProPrimaryContainer_1 =>
      theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBluegray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray80001,
        fontSize: 15.fSize,
      );
  static get bodyMediumCabinBlack900 =>
      theme.textTheme.bodyMedium!.cabin.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodyMediumCenturyGothicBlack900 =>
      theme.textTheme.bodyMedium!.centuryGothic.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumGray90003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90003,
      );
  static get bodyMediumRobotoGray700 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumSFProBlue300 =>
      theme.textTheme.bodyMedium!.sFPro.copyWith(
        color: appTheme.blue300,
        fontSize: 13.fSize,
      );
  static get bodyMediumSFProBluegray80001 =>
      theme.textTheme.bodyMedium!.sFPro.copyWith(
        color: appTheme.blueGray80001,
        fontSize: 15.fSize,
      );
  // Headline text style
  static get headlineMediumCenturyGothicOnErrorContainer =>
      theme.textTheme.headlineMedium!.centuryGothic.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeRobotoGray90003 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray90003,
      );
  static get titleMediumBlue300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue300,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray700,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get titleMediumCabinBlack900 =>
      theme.textTheme.titleMedium!.cabin.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumCabinGray900 =>
      theme.textTheme.titleMedium!.cabin.copyWith(
        color: appTheme.gray900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumCenturyGothicBlack900 =>
      theme.textTheme.titleMedium!.centuryGothic.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get titleMediumGray80002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80002,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleSmallRoboto => theme.textTheme.titleSmall!.roboto.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoGray50 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoGray90001 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoOnPrimary =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get sFPro {
    return copyWith(
      fontFamily: 'SF Pro',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get cabin {
    return copyWith(
      fontFamily: 'Cabin',
    );
  }

  TextStyle get centuryGothic {
    return copyWith(
      fontFamily: 'Century Gothic',
    );
  }
}
