import 'package:analog_clock/components/clock.dart';
import 'package:analog_clock/components/country_card.dart';
import 'package:flutter/material.dart';
import 'package:analog_clock/components/time_in_hour_minute.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(children: [
          Text(
            "Jharkhand, India",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const TimeInHourAndMinute(),
          const Spacer(),
          const Clock(),
          const Spacer(),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CountryCard(
                  country: 'New York, USA',
                  timeZone: "+3 HRS | EST",
                  iconSrc: "assets/icons/Liberty.svg",
                  time: "9:20",
                  period: "AM",
                ),
                CountryCard(
                  country: 'Sydney, UA',
                  timeZone: "+19 HRS | AEST",
                  iconSrc: "assets/icons/Sydney.svg",
                  time: "1:20",
                  period: "PM",
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
