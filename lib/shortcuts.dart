import 'package:quick_actions/quick_actions.dart';

class ShortcutItems {
  static final List<ShortcutItem> actionsList = <ShortcutItem>[
    actionCreateMail,
    actionCreateEvent
  ];
  static const actionCreateMail = ShortcutItem(type: 'action_mail', localizedTitle: 'new Mail', icon: "icon");
  static const actionCreateEvent = ShortcutItem(type: 'action_event', localizedTitle: 'new Event', icon: "icon");
}
