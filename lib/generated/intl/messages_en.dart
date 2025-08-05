// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "appBarTitle": MessageLookupByLibrary.simpleMessage("The Spy"),
    "blindModeDescription": MessageLookupByLibrary.simpleMessage(
      "In this mode, the spy sees a completely different word—but doesn’t know they’re the spy. No one knows who the spy is—not even the spy themselves.",
    ),
    "blindModeTitle": MessageLookupByLibrary.simpleMessage("Blind Mode"),
    "gameDescription": MessageLookupByLibrary.simpleMessage(
      "The idea is simple: when the game starts, the phone is passed to each player. All players see the same word—except one, who sees something different. The goal is for the odd one out to blend in without getting caught, while the others try to figure out who the spy is.",
    ),
    "gameIdea": MessageLookupByLibrary.simpleMessage("Game Idea"),
    "normalModeDescription": MessageLookupByLibrary.simpleMessage(
      "The spy sees this message:\n(You are the spy)\nIn this mode, the spy knows their identity and tries to blend in with the others.",
    ),
    "normalModeTitle": MessageLookupByLibrary.simpleMessage("Normal Mode"),
    "select": MessageLookupByLibrary.simpleMessage("Select"),
    "selectMode": MessageLookupByLibrary.simpleMessage("Select mode"),
    "start": MessageLookupByLibrary.simpleMessage("Start"),
  };
}
