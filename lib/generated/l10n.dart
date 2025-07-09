// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to ShopZen`
  String get onboardingWelcome {
    return Intl.message(
      'Welcome to ShopZen',
      name: 'onboardingWelcome',
      desc: '',
      args: [],
    );
  }

  /// `Your one-stop destination for hassle-free online shopping`
  String get onboardingDescription {
    return Intl.message(
      'Your one-stop destination for hassle-free online shopping',
      name: 'onboardingDescription',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get onboardingGetStarted {
    return Intl.message(
      'Get Started',
      name: 'onboardingGetStarted',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get authLogin {
    return Intl.message('Login', name: 'authLogin', desc: '', args: []);
  }

  /// `SignUp`
  String get authSignup {
    return Intl.message('SignUp', name: 'authSignup', desc: '', args: []);
  }

  /// `SignIn`
  String get authSignIn {
    return Intl.message('SignIn', name: 'authSignIn', desc: '', args: []);
  }

  /// `Forgot Password`
  String get authForgotPassword {
    return Intl.message(
      'Forgot Password',
      name: 'authForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login with Email`
  String get authLoginWithEmail {
    return Intl.message(
      'Login with Email',
      name: 'authLoginWithEmail',
      desc: '',
      args: [],
    );
  }

  /// `Login with Google`
  String get authLoginWithGoogle {
    return Intl.message(
      'Login with Google',
      name: 'authLoginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Login with Apple`
  String get authLoginWithApple {
    return Intl.message(
      'Login with Apple',
      name: 'authLoginWithApple',
      desc: '',
      args: [],
    );
  }

  /// `SignUp with Email`
  String get authSignupWithEmail {
    return Intl.message(
      'SignUp with Email',
      name: 'authSignupWithEmail',
      desc: '',
      args: [],
    );
  }

  /// `SignUp with Google`
  String get authSignupWithGoogle {
    return Intl.message(
      'SignUp with Google',
      name: 'authSignupWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `SignUp with Apple`
  String get authSignupWithApple {
    return Intl.message(
      'SignUp with Apple',
      name: 'authSignupWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get authEmail {
    return Intl.message('Email', name: 'authEmail', desc: '', args: []);
  }

  /// `Password`
  String get authPassword {
    return Intl.message('Password', name: 'authPassword', desc: '', args: []);
  }

  /// `Confirm Password`
  String get authConfirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'authConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get authNewPassword {
    return Intl.message(
      'New Password',
      name: 'authNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get authEnterEmail {
    return Intl.message(
      'Enter your email',
      name: 'authEnterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get authEnterPassword {
    return Intl.message(
      'Enter your password',
      name: 'authEnterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new Password`
  String get authEnterNewPassword {
    return Intl.message(
      'Enter your new Password',
      name: 'authEnterNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your confirm Password`
  String get authEnterConfirmPassword {
    return Intl.message(
      'Enter your confirm Password',
      name: 'authEnterConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get authContinue {
    return Intl.message('Continue', name: 'authContinue', desc: '', args: []);
  }

  /// `Send Code`
  String get authSendCode {
    return Intl.message('Send Code', name: 'authSendCode', desc: '', args: []);
  }

  /// `Enter 4 Digit Code`
  String get authEnter4DigitCode {
    return Intl.message(
      'Enter 4 Digit Code',
      name: 'authEnter4DigitCode',
      desc: '',
      args: [],
    );
  }

  /// `Email not received? Resend Code`
  String get authResendCode {
    return Intl.message(
      'Email not received? Resend Code',
      name: 'authResendCode',
      desc: '',
      args: [],
    );
  }

  /// `Update Password`
  String get authUpdatePassword {
    return Intl.message(
      'Update Password',
      name: 'authUpdatePassword',
      desc: '',
      args: [],
    );
  }

  /// `Password updated Successfully!`
  String get authPasswordUpdated {
    return Intl.message(
      'Password updated Successfully!',
      name: 'authPasswordUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Login Successful!`
  String get authLoginSuccessful {
    return Intl.message(
      'Login Successful!',
      name: 'authLoginSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Signup Successful!`
  String get authSignupSuccessful {
    return Intl.message(
      'Signup Successful!',
      name: 'authSignupSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Account Setup Successfully!`
  String get authAccountCreated {
    return Intl.message(
      'Account Setup Successfully!',
      name: 'authAccountCreated',
      desc: '',
      args: [],
    );
  }

  /// `Agree with `
  String get authAgree {
    return Intl.message('Agree with ', name: 'authAgree', desc: '', args: []);
  }

  /// `Terms & Condition`
  String get authTermsCondition {
    return Intl.message(
      'Terms & Condition',
      name: 'authTermsCondition',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have any account yet? `
  String get authNoAccount {
    return Intl.message(
      'Don’t have any account yet? ',
      name: 'authNoAccount',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have any account yet? `
  String get authHaveAccount {
    return Intl.message(
      'Don’t have any account yet? ',
      name: 'authHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please enter valid email address`
  String get authHintEmail {
    return Intl.message(
      'Please enter valid email address',
      name: 'authHintEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password Minimum of 8 characters`
  String get authHintPassword {
    return Intl.message(
      'Password Minimum of 8 characters',
      name: 'authHintPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter password correctly`
  String get authHintConfirmPassword {
    return Intl.message(
      'Please enter password correctly',
      name: 'authHintConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Location`
  String get locationEnterLocation {
    return Intl.message(
      'Enter Your Location',
      name: 'locationEnterLocation',
      desc: '',
      args: [],
    );
  }

  /// `Find your location`
  String get locationFindLocation {
    return Intl.message(
      'Find your location',
      name: 'locationFindLocation',
      desc: '',
      args: [],
    );
  }

  /// `Use my current location`
  String get locationUseCurrentLocation {
    return Intl.message(
      'Use my current location',
      name: 'locationUseCurrentLocation',
      desc: '',
      args: [],
    );
  }

  /// `Search Result`
  String get locationSearchResult {
    return Intl.message(
      'Search Result',
      name: 'locationSearchResult',
      desc: '',
      args: [],
    );
  }

  /// `What is Your Location?`
  String get locationWhatIsYourLocation {
    return Intl.message(
      'What is Your Location?',
      name: 'locationWhatIsYourLocation',
      desc: '',
      args: [],
    );
  }

  /// `We need to know your location in order to suggest nearby services.`
  String get locationDescription {
    return Intl.message(
      'We need to know your location in order to suggest nearby services.',
      name: 'locationDescription',
      desc: '',
      args: [],
    );
  }

  /// `Allow Location Access`
  String get locationAllowLocation {
    return Intl.message(
      'Allow Location Access',
      name: 'locationAllowLocation',
      desc: '',
      args: [],
    );
  }

  /// `Enter Location Manually`
  String get locationEnterManually {
    return Intl.message(
      'Enter Location Manually',
      name: 'locationEnterManually',
      desc: '',
      args: [],
    );
  }

  /// `Find your favorite items`
  String get homeFindItems {
    return Intl.message(
      'Find your favorite items',
      name: 'homeFindItems',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get homeCategories {
    return Intl.message(
      'Categories',
      name: 'homeCategories',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get homeViewAll {
    return Intl.message('View All', name: 'homeViewAll', desc: '', args: []);
  }

  /// `Popular Searches`
  String get homePopularSearches {
    return Intl.message(
      'Popular Searches',
      name: 'homePopularSearches',
      desc: '',
      args: [],
    );
  }

  /// `Clear All`
  String get homeClearAll {
    return Intl.message('Clear All', name: 'homeClearAll', desc: '', args: []);
  }

  /// `Hot Deals`
  String get homeHotDeals {
    return Intl.message('Hot Deals', name: 'homeHotDeals', desc: '', args: []);
  }

  /// `30% Special Discount!`
  String get homeSpecialDiscount {
    return Intl.message(
      '30% Special Discount!',
      name: 'homeSpecialDiscount',
      desc: '',
      args: [],
    );
  }

  /// `Special promotion only valid today.`
  String get homeSpecialPromo {
    return Intl.message(
      'Special promotion only valid today.',
      name: 'homeSpecialPromo',
      desc: '',
      args: [],
    );
  }

  /// `Fashion`
  String get fashion {
    return Intl.message('Fashion', name: 'fashion', desc: '', args: []);
  }

  /// `Fitness`
  String get fitness {
    return Intl.message('Fitness', name: 'fitness', desc: '', args: []);
  }

  /// `Living`
  String get living {
    return Intl.message('Living', name: 'living', desc: '', args: []);
  }

  /// `Games`
  String get games {
    return Intl.message('Games', name: 'games', desc: '', args: []);
  }

  /// `Stationery`
  String get stationery {
    return Intl.message('Stationery', name: 'stationery', desc: '', args: []);
  }

  /// `Product Details`
  String get productDetails {
    return Intl.message(
      'Product Details',
      name: 'productDetails',
      desc: '',
      args: [],
    );
  }

  /// `Select Color`
  String get productSelectColor {
    return Intl.message(
      'Select Color',
      name: 'productSelectColor',
      desc: '',
      args: [],
    );
  }

  /// `Select Size`
  String get productSelectSize {
    return Intl.message(
      'Select Size',
      name: 'productSelectSize',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get productAddToCart {
    return Intl.message(
      'Add to Cart',
      name: 'productAddToCart',
      desc: '',
      args: [],
    );
  }

  /// `Item Added to Saved`
  String get productAddedToSaved {
    return Intl.message(
      'Item Added to Saved',
      name: 'productAddedToSaved',
      desc: '',
      args: [],
    );
  }

  /// `Rating & Reviews`
  String get productRatingReviews {
    return Intl.message(
      'Rating & Reviews',
      name: 'productRatingReviews',
      desc: '',
      args: [],
    );
  }

  /// `Overall Rating`
  String get productOverallRating {
    return Intl.message(
      'Overall Rating',
      name: 'productOverallRating',
      desc: '',
      args: [],
    );
  }

  /// `View All 105 Reviews`
  String get productViewAllReviews {
    return Intl.message(
      'View All 105 Reviews',
      name: 'productViewAllReviews',
      desc: '',
      args: [],
    );
  }

  /// `No Result Found!`
  String get productNoResult {
    return Intl.message(
      'No Result Found!',
      name: 'productNoResult',
      desc: '',
      args: [],
    );
  }

  /// `Saved Items`
  String get savedItems {
    return Intl.message('Saved Items', name: 'savedItems', desc: '', args: []);
  }

  /// `No Saved Items!`
  String get savedNoSavedItems {
    return Intl.message(
      'No Saved Items!',
      name: 'savedNoSavedItems',
      desc: '',
      args: [],
    );
  }

  /// `You don’t have any saved items. Go to home and add some.`
  String get savedDescription {
    return Intl.message(
      'You don’t have any saved items. Go to home and add some.',
      name: 'savedDescription',
      desc: '',
      args: [],
    );
  }

  /// `My Cart`
  String get cartMyCart {
    return Intl.message('My Cart', name: 'cartMyCart', desc: '', args: []);
  }

  /// `Your Cart Is Empty!`
  String get cartEmptyCart {
    return Intl.message(
      'Your Cart Is Empty!',
      name: 'cartEmptyCart',
      desc: '',
      args: [],
    );
  }

  /// `When you add products, they’ll appear here.`
  String get cartDescription {
    return Intl.message(
      'When you add products, they’ll appear here.',
      name: 'cartDescription',
      desc: '',
      args: [],
    );
  }

  /// `Sub-total`
  String get cartSubTotal {
    return Intl.message('Sub-total', name: 'cartSubTotal', desc: '', args: []);
  }

  /// `Delivery Fee`
  String get cartDeliveryFee {
    return Intl.message(
      'Delivery Fee',
      name: 'cartDeliveryFee',
      desc: '',
      args: [],
    );
  }

  /// `Discount`
  String get cartDiscount {
    return Intl.message('Discount', name: 'cartDiscount', desc: '', args: []);
  }

  /// `Total`
  String get cartTotal {
    return Intl.message('Total', name: 'cartTotal', desc: '', args: []);
  }

  /// `Go To Checkout`
  String get cartGoToCheckout {
    return Intl.message(
      'Go To Checkout',
      name: 'cartGoToCheckout',
      desc: '',
      args: [],
    );
  }

  /// `Remove from Cart`
  String get cartRemoveFromCart {
    return Intl.message(
      'Remove from Cart',
      name: 'cartRemoveFromCart',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cartCancel {
    return Intl.message('Cancel', name: 'cartCancel', desc: '', args: []);
  }

  /// `Yes, Remove`
  String get cartConfirmRemove {
    return Intl.message(
      'Yes, Remove',
      name: 'cartConfirmRemove',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Address`
  String get checkoutDeliveryAddress {
    return Intl.message(
      'Delivery Address',
      name: 'checkoutDeliveryAddress',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get checkoutChange {
    return Intl.message('Change', name: 'checkoutChange', desc: '', args: []);
  }

  /// `Payment Method`
  String get checkoutPaymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'checkoutPaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Card`
  String get checkoutCard {
    return Intl.message('Card', name: 'checkoutCard', desc: '', args: []);
  }

  /// `Cash`
  String get checkoutCash {
    return Intl.message('Cash', name: 'checkoutCash', desc: '', args: []);
  }

  /// `Order Summary`
  String get checkoutOrderSummary {
    return Intl.message(
      'Order Summary',
      name: 'checkoutOrderSummary',
      desc: '',
      args: [],
    );
  }

  /// `Enter promo code`
  String get checkoutEnterPromoCode {
    return Intl.message(
      'Enter promo code',
      name: 'checkoutEnterPromoCode',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get checkoutAdd {
    return Intl.message('Add', name: 'checkoutAdd', desc: '', args: []);
  }

  /// `Place Order`
  String get checkoutPlaceOrder {
    return Intl.message(
      'Place Order',
      name: 'checkoutPlaceOrder',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations!`
  String get checkoutCongratulations {
    return Intl.message(
      'Congratulations!',
      name: 'checkoutCongratulations',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been placed.`
  String get checkoutOrderPlaced {
    return Intl.message(
      'Your order has been placed.',
      name: 'checkoutOrderPlaced',
      desc: '',
      args: [],
    );
  }

  /// `Track Your Order`
  String get checkoutTrackOrder {
    return Intl.message(
      'Track Your Order',
      name: 'checkoutTrackOrder',
      desc: '',
      args: [],
    );
  }

  /// `Thanks`
  String get checkoutThanks {
    return Intl.message('Thanks', name: 'checkoutThanks', desc: '', args: []);
  }

  /// `CheckOut`
  String get checkout {
    return Intl.message('CheckOut', name: 'checkout', desc: '', args: []);
  }

  /// `Home`
  String get checkoutHome {
    return Intl.message('Home', name: 'checkoutHome', desc: '', args: []);
  }

  /// `New Address`
  String get addressNewAddress {
    return Intl.message(
      'New Address',
      name: 'addressNewAddress',
      desc: '',
      args: [],
    );
  }

  /// `Saved Address`
  String get addressSavedAddress {
    return Intl.message(
      'Saved Address',
      name: 'addressSavedAddress',
      desc: '',
      args: [],
    );
  }

  /// `Address Nickname`
  String get addressAddressNickname {
    return Intl.message(
      'Address Nickname',
      name: 'addressAddressNickname',
      desc: '',
      args: [],
    );
  }

  /// `Full Address`
  String get addressFullAddress {
    return Intl.message(
      'Full Address',
      name: 'addressFullAddress',
      desc: '',
      args: [],
    );
  }

  /// `Make this as a default address`
  String get addressMakeDefault {
    return Intl.message(
      'Make this as a default address',
      name: 'addressMakeDefault',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get addressAdd {
    return Intl.message('Add', name: 'addressAdd', desc: '', args: []);
  }

  /// `Your new address has been added.`
  String get addressAdded {
    return Intl.message(
      'Your new address has been added.',
      name: 'addressAdded',
      desc: '',
      args: [],
    );
  }

  /// `New Card`
  String get paymentNewCard {
    return Intl.message('New Card', name: 'paymentNewCard', desc: '', args: []);
  }

  /// `Saved Cards`
  String get paymentSavedCards {
    return Intl.message(
      'Saved Cards',
      name: 'paymentSavedCards',
      desc: '',
      args: [],
    );
  }

  /// `Add Debit or Credit Card`
  String get paymentCreaditAddCard {
    return Intl.message(
      'Add Debit or Credit Card',
      name: 'paymentCreaditAddCard',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get paymentCardNumber {
    return Intl.message(
      'Card Number',
      name: 'paymentCardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Date`
  String get paymentExpiryDate {
    return Intl.message(
      'Expiry Date',
      name: 'paymentExpiryDate',
      desc: '',
      args: [],
    );
  }

  /// `Security Code`
  String get paymentSecurityCode {
    return Intl.message(
      'Security Code',
      name: 'paymentSecurityCode',
      desc: '',
      args: [],
    );
  }

  /// `Add Card`
  String get paymentAddCard {
    return Intl.message('Add Card', name: 'paymentAddCard', desc: '', args: []);
  }

  /// `Your new card has been added.`
  String get paymentCardAdded {
    return Intl.message(
      'Your new card has been added.',
      name: 'paymentCardAdded',
      desc: '',
      args: [],
    );
  }

  /// `Card`
  String get Card {
    return Intl.message('Card', name: 'Card', desc: '', args: []);
  }

  /// `Ongoing`
  String get ordersOngoing {
    return Intl.message('Ongoing', name: 'ordersOngoing', desc: '', args: []);
  }

  /// `Complete`
  String get ordersComplete {
    return Intl.message('Complete', name: 'ordersComplete', desc: '', args: []);
  }

  /// `Review`
  String get ordersReview {
    return Intl.message('Review', name: 'ordersReview', desc: '', args: []);
  }

  /// `Track Order`
  String get ordersTrackOrder {
    return Intl.message(
      'Track Order',
      name: 'ordersTrackOrder',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get ordersDelivered {
    return Intl.message(
      'Delivered',
      name: 'ordersDelivered',
      desc: '',
      args: [],
    );
  }

  /// `Leave a Review`
  String get ordersLeaveReview {
    return Intl.message(
      'Leave a Review',
      name: 'ordersLeaveReview',
      desc: '',
      args: [],
    );
  }

  /// `How was your order?`
  String get ordersHowWasOrder {
    return Intl.message(
      'How was your order?',
      name: 'ordersHowWasOrder',
      desc: '',
      args: [],
    );
  }

  /// `No Ongoing Orders!`
  String get ordersNoOrders {
    return Intl.message(
      'No Ongoing Orders!',
      name: 'ordersNoOrders',
      desc: '',
      args: [],
    );
  }

  /// `You don’t have any ongoing orders at this time.`
  String get ordersDescription {
    return Intl.message(
      'You don’t have any ongoing orders at this time.',
      name: 'ordersDescription',
      desc: '',
      args: [],
    );
  }

  /// `Order Status`
  String get ordersOrderStatus {
    return Intl.message(
      'Order Status',
      name: 'ordersOrderStatus',
      desc: '',
      args: [],
    );
  }

  /// `Packing`
  String get ordersPacking {
    return Intl.message('Packing', name: 'ordersPacking', desc: '', args: []);
  }

  /// `Picked`
  String get ordersPicked {
    return Intl.message('Picked', name: 'ordersPicked', desc: '', args: []);
  }

  /// `In Transit`
  String get ordersInTransit {
    return Intl.message(
      'In Transit',
      name: 'ordersInTransit',
      desc: '',
      args: [],
    );
  }

  /// `General Notifications`
  String get notificationsGeneral {
    return Intl.message(
      'General Notifications',
      name: 'notificationsGeneral',
      desc: '',
      args: [],
    );
  }

  /// `Sound`
  String get notificationsSound {
    return Intl.message(
      'Sound',
      name: 'notificationsSound',
      desc: '',
      args: [],
    );
  }

  /// `Vibrate`
  String get notificationsVibrate {
    return Intl.message(
      'Vibrate',
      name: 'notificationsVibrate',
      desc: '',
      args: [],
    );
  }

  /// `Special Offers`
  String get notificationsSpecialOffers {
    return Intl.message(
      'Special Offers',
      name: 'notificationsSpecialOffers',
      desc: '',
      args: [],
    );
  }

  /// `Promo & Discounts`
  String get notificationsPromoDiscounts {
    return Intl.message(
      'Promo & Discounts',
      name: 'notificationsPromoDiscounts',
      desc: '',
      args: [],
    );
  }

  /// `Payments`
  String get notificationsPayments {
    return Intl.message(
      'Payments',
      name: 'notificationsPayments',
      desc: '',
      args: [],
    );
  }

  /// `Cashback`
  String get notificationsCashback {
    return Intl.message(
      'Cashback',
      name: 'notificationsCashback',
      desc: '',
      args: [],
    );
  }

  /// `App Updates`
  String get notificationsAppUpdates {
    return Intl.message(
      'App Updates',
      name: 'notificationsAppUpdates',
      desc: '',
      args: [],
    );
  }

  /// `New Service Available`
  String get notificationsNewService {
    return Intl.message(
      'New Service Available',
      name: 'notificationsNewService',
      desc: '',
      args: [],
    );
  }

  /// `You haven’t gotten any notifications yet!`
  String get notificationsNoNotifications {
    return Intl.message(
      'You haven’t gotten any notifications yet!',
      name: 'notificationsNoNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Customer Service`
  String get helpCenterCustomerService {
    return Intl.message(
      'Customer Service',
      name: 'helpCenterCustomerService',
      desc: '',
      args: [],
    );
  }

  /// `Whatsapp`
  String get helpCenterWhatsapp {
    return Intl.message(
      'Whatsapp',
      name: 'helpCenterWhatsapp',
      desc: '',
      args: [],
    );
  }

  /// `Website`
  String get helpCenterWebsite {
    return Intl.message(
      'Website',
      name: 'helpCenterWebsite',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get helpCenterFacebook {
    return Intl.message(
      'Facebook',
      name: 'helpCenterFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Twitter`
  String get helpCenterTwitter {
    return Intl.message(
      'Twitter',
      name: 'helpCenterTwitter',
      desc: '',
      args: [],
    );
  }

  /// `Instagram`
  String get helpCenterInstagram {
    return Intl.message(
      'Instagram',
      name: 'helpCenterInstagram',
      desc: '',
      args: [],
    );
  }

  /// `Write your message...`
  String get helpCenterWriteMessage {
    return Intl.message(
      'Write your message...',
      name: 'helpCenterWriteMessage',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get profileMyProfile {
    return Intl.message(
      'My Profile',
      name: 'profileMyProfile',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get profileFullName {
    return Intl.message(
      'Full Name',
      name: 'profileFullName',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get profileEmailAddress {
    return Intl.message(
      'Email Address',
      name: 'profileEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth`
  String get profileDateOfBirth {
    return Intl.message(
      'Date of Birth',
      name: 'profileDateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get profileGender {
    return Intl.message('Gender', name: 'profileGender', desc: '', args: []);
  }

  /// `Phone Number`
  String get profilePhoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'profilePhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `My Order`
  String get profileMyOrders {
    return Intl.message(
      'My Order',
      name: 'profileMyOrders',
      desc: '',
      args: [],
    );
  }

  /// `Payment Methods`
  String get profilePaymentMethods {
    return Intl.message(
      'Payment Methods',
      name: 'profilePaymentMethods',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get profileNotifications {
    return Intl.message(
      'Notifications',
      name: 'profileNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get profilePrivacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'profilePrivacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Help Center`
  String get profileHelpCenter {
    return Intl.message(
      'Help Center',
      name: 'profileHelpCenter',
      desc: '',
      args: [],
    );
  }

  /// `Invite Friends`
  String get profileInviteFriends {
    return Intl.message(
      'Invite Friends',
      name: 'profileInviteFriends',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get profileLogout {
    return Intl.message('Log Out', name: 'profileLogout', desc: '', args: []);
  }

  /// `Are you sure you want to log out?`
  String get profileConfirmLogout {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'profileConfirmLogout',
      desc: '',
      args: [],
    );
  }

  /// `Yes, Logout`
  String get profileYesLogouta {
    return Intl.message(
      'Yes, Logout',
      name: 'profileYesLogouta',
      desc: '',
      args: [],
    );
  }

  /// `Settings Theme`
  String get settingsTheme {
    return Intl.message(
      'Settings Theme',
      name: 'settingsTheme',
      desc: '',
      args: [],
    );
  }

  /// `Settings Language`
  String get settingsLanguage {
    return Intl.message(
      'Settings Language',
      name: 'settingsLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get bottomNavHome {
    return Intl.message('Home', name: 'bottomNavHome', desc: '', args: []);
  }

  /// `Saved`
  String get bottomNavSaved {
    return Intl.message('Saved', name: 'bottomNavSaved', desc: '', args: []);
  }

  /// `Cart`
  String get bottomNavCart {
    return Intl.message('Cart', name: 'bottomNavCart', desc: '', args: []);
  }

  /// `Account`
  String get bottomNavAccount {
    return Intl.message(
      'Account',
      name: 'bottomNavAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login to ShopZen`
  String get headerSectionLoginScreen {
    return Intl.message(
      'Login to ShopZen',
      name: 'headerSectionLoginScreen',
      desc: '',
      args: [],
    );
  }

  /// `Login with Email`
  String get headerSectionSignInScreen {
    return Intl.message(
      'Login with Email',
      name: 'headerSectionSignInScreen',
      desc: '',
      args: [],
    );
  }

  /// `Signup with Email`
  String get headerSectionSignUpScreen {
    return Intl.message(
      'Signup with Email',
      name: 'headerSectionSignUpScreen',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get headerSectionForgotPasswordScreen {
    return Intl.message(
      'Forgot Password',
      name: 'headerSectionForgotPasswordScreen',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message('Or', name: 'or', desc: '', args: []);
  }

  /// `Location`
  String get location {
    return Intl.message('Location', name: 'location', desc: '', args: []);
  }

  /// `Dhaka,Bangladesh`
  String get address {
    return Intl.message(
      'Dhaka,Bangladesh',
      name: 'address',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
