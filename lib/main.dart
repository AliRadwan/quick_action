
import 'package:flutter/material.dart';
import 'package:quick_action/shortcuts.dart';
import 'package:quick_actions/quick_actions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Quick Actions Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final quickActions = const QuickActions();
  String shortcut = 'no action set';

  void initQuickAction(){
    quickActions.initialize((type) { setState(() {
      if(type == null)return;
      if(type == ShortcutItems.actionCreateMail.type){
        // do action
      }else if(type == ShortcutItems.actionCreateEvent.type){
        // do action
      }
      shortcut =type;
    });});

    quickActions.setShortcutItems(ShortcutItems.actionsList);
  }

  @override
  void initState() {
    super.initState();
initQuickAction();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(shortcut),
      ),
      body: const Center(
        child: Text(' long press the app icon to '
            'get Action one or Action two options. Tapping on that action should  '
            'set the toolbar title.'),
      ),
    );
  }
}