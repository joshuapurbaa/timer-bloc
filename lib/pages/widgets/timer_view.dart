import 'package:flutter/material.dart';
import 'package:timer_bloc/pages/widgets/actions_widget.dart';
import 'package:timer_bloc/pages/widgets/background.dart';
import 'package:timer_bloc/pages/widgets/timer_text.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100),
                child: Center(child: TimerText()),
              ),
              ActionsWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
