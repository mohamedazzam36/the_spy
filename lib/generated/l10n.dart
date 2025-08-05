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

  /// `The Spy`
  String get appBarTitle {
    return Intl.message('The Spy', name: 'appBarTitle', desc: '', args: []);
  }

  /// `Start`
  String get start {
    return Intl.message('Start', name: 'start', desc: '', args: []);
  }

  /// `Game Idea`
  String get gameIdea {
    return Intl.message('Game Idea', name: 'gameIdea', desc: '', args: []);
  }

  /// `The idea is simple: when the game starts, the phone is passed to each player. All players see the same word—except one, who sees something different. The goal is for the odd one out to blend in without getting caught, while the others try to figure out who the spy is.`
  String get gameDescription {
    return Intl.message(
      'The idea is simple: when the game starts, the phone is passed to each player. All players see the same word—except one, who sees something different. The goal is for the odd one out to blend in without getting caught, while the others try to figure out who the spy is.',
      name: 'gameDescription',
      desc: '',
      args: [],
    );
  }

  /// `Select mode`
  String get selectMode {
    return Intl.message('Select mode', name: 'selectMode', desc: '', args: []);
  }

  /// `Select`
  String get select {
    return Intl.message('Select', name: 'select', desc: '', args: []);
  }

  /// `Normal Mode`
  String get normalModeTitle {
    return Intl.message(
      'Normal Mode',
      name: 'normalModeTitle',
      desc: '',
      args: [],
    );
  }

  /// `The spy sees this message:\n(You are the spy)\nIn this mode, the spy knows their identity and tries to blend in with the others.`
  String get normalModeDescription {
    return Intl.message(
      'The spy sees this message:\n(You are the spy)\nIn this mode, the spy knows their identity and tries to blend in with the others.',
      name: 'normalModeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Blind Mode`
  String get blindModeTitle {
    return Intl.message(
      'Blind Mode',
      name: 'blindModeTitle',
      desc: '',
      args: [],
    );
  }

  /// `In this mode, the spy sees a completely different word—but doesn’t know they’re the spy. No one knows who the spy is—not even the spy themselves.`
  String get blindModeDescription {
    return Intl.message(
      'In this mode, the spy sees a completely different word—but doesn’t know they’re the spy. No one knows who the spy is—not even the spy themselves.',
      name: 'blindModeDescription',
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
