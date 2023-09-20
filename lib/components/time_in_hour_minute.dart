import 'dart:async';
import 'package:analog_clock/size_config.dart';
import 'package:flutter/material.dart';

class TimeInHourAndMinute extends StatefulWidget {
  const TimeInHourAndMinute({super.key});

  @override
  State<TimeInHourAndMinute> createState() => _TimeInHourAndMinuteState();
}

class _TimeInHourAndMinuteState extends State<TimeInHourAndMinute> {
  late DateTime _currentTime;
  int second = 0;
  @override
  void initState() {
    super.initState();

    _updateTime();
    // Update the time every second
    Timer.periodic(const Duration(seconds: 1), (timer) {
      _updateTime();
    });
  }

  void _updateTime() {
    setState(() {
      _currentTime = DateTime.now();
    });
  }

  String _formatedHour(int hour) {
    if (hour == 0) {
      return "12";
    } else if (hour >= 1 && hour <= 12) {
      return hour.toString();
    } else {
      return (hour - 12).toString();
    }
  }

  String _formatedMinute(int minute) {
    if (minute.toString().length == 1) {
      return '0$minute';
    }
    return minute.toString();
  }

  // String _formatedSecond(int second) {
  //   if (second.toString().length == 1) {
  //     return '0$second';
  //   }
  //   return second.toString();
  // }

  @override
  Widget build(BuildContext context) {
    String formattedTime =
        "${_formatedHour(_currentTime.hour)}:${_formatedMinute(_currentTime.minute)}"; // :${_formatedSecond(_currentTime.second)
    String period = _currentTime.hour < 12 ? "AM" : "PM";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          formattedTime,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(
          width: 5,
        ),
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            period,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
            ),
          ),
        ),
      ],
    );
  }
}
