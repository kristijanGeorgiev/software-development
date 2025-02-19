import 'package:flutter/material.dart';

class LifeCycleManager extends StatefulWidget{
  final Widget child;

  const LifeCycleManager({super.key, required this.child});

  @override
  LifeCycleManagerState createState() {
    return LifeCycleManagerState();
  }
}
class LifeCycleManagerState extends State<LifeCycleManager> with WidgetsBindingObserver{

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    debugPrint('AppLifeCycleState: $state');
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}