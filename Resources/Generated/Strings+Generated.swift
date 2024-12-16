// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum Continue {
    internal enum Button {
      /// Continue
      internal static let title = L10n.tr("Localizable", "continue.button.title", fallback: "Continue")
    }
  }
  internal enum Email {
    /// Email Address
    internal static let textField = L10n.tr("Localizable", "email.textField", fallback: "Email Address")
  }
  internal enum HaveAccount {
    /// Already have an account?
    internal static let label = L10n.tr("Localizable", "haveAccount.label", fallback: "Already have an account?")
  }
  internal enum Name {
    /// Your Name
    internal static let textField = L10n.tr("Localizable", "name.textField", fallback: "Your Name")
  }
  internal enum NoAccount {
    /// Don’t have an account?
    internal static let title = L10n.tr("Localizable", "noAccount.title", fallback: "Don’t have an account?")
  }
  internal enum Password {
    /// Password
    internal static let textField = L10n.tr("Localizable", "password.textField", fallback: "Password")
  }
  internal enum Recovery {
    /// Please Enter Your Email Address To Recieve a Verification Code
    internal static let subtitleLabel = L10n.tr("Localizable", "recovery.subtitleLabel", fallback: "Please Enter Your Email Address To Recieve a Verification Code")
    /// Recovery Password
    internal static let titleLabel = L10n.tr("Localizable", "recovery.titleLabel", fallback: "Recovery Password")
    internal enum Button {
      /// Recovery Password
      internal static let title = L10n.tr("Localizable", "recovery.button.title", fallback: "Recovery Password")
    }
  }
  internal enum Signin {
    /// Welcome Back You’ve Been Missed!
    internal static let subtitleLabel = L10n.tr("Localizable", "signin.subtitleLabel", fallback: "Welcome Back You’ve Been Missed!")
    /// Localizable.strings
    ///   Oxy-Boots
    /// 
    ///   Created by Ibrahim Nasser Ibrahim on 14/12/2024.
    internal static let titleLabel = L10n.tr("Localizable", "signin.titleLabel", fallback: "Hello Again!")
    internal enum Button {
      /// Sign In
      internal static let title = L10n.tr("Localizable", "signin.button.title", fallback: "Sign In")
    }
  }
  internal enum Signup {
    /// Let’s Create Account Together
    internal static let subtitleLabel = L10n.tr("Localizable", "signup.subtitleLabel", fallback: "Let’s Create Account Together")
    /// Create Account
    internal static let titleLabel = L10n.tr("Localizable", "signup.titleLabel", fallback: "Create Account")
    internal enum Button {
      /// Sign Up
      internal static let title = L10n.tr("Localizable", "signup.button.title", fallback: "Sign Up")
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
