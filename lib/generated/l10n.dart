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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Anywhere you are`
  String get where {
    return Intl.message(
      'Anywhere you are',
      name: 'where',
      desc: '',
      args: [],
    );
  }

  /// `Choose your cart very easily\nfrom the nearest parking lot\nafter determining your location.`
  String get whereDes {
    return Intl.message(
      'Choose your cart very easily\nfrom the nearest parking lot\nafter determining your location.',
      name: 'whereDes',
      desc: '',
      args: [],
    );
  }

  /// `At anytime`
  String get time {
    return Intl.message(
      'At anytime',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Book your car`
  String get book {
    return Intl.message(
      'Book your car',
      name: 'book',
      desc: '',
      args: [],
    );
  }

  /// `Enable your location`
  String get location {
    return Intl.message(
      'Enable your location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Choose your location to start find the request around you`
  String get locationDes {
    return Intl.message(
      'Choose your location to start find the request around you',
      name: 'locationDes',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Have a better sharing experience`
  String get welcomeDes {
    return Intl.message(
      'Have a better sharing experience',
      name: 'welcomeDes',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get createaccount {
    return Intl.message(
      'Create an account',
      name: 'createaccount',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get LogIn {
    return Intl.message(
      'Log In',
      name: 'LogIn',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Go`
  String get go {
    return Intl.message(
      'Go',
      name: 'go',
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
