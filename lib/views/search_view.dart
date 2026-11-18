//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/main.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: Colors.blue,
        title: const Text("Search City"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);

              await getWeatherCubit.getWeather(
                cityName: value.trim(),
              );

              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 32),
              labelText: 'Search',
              prefixIcon: const Icon(Icons.search),
              hintText: 'Enter city name',
              labelStyle: TextStyle(
                color: getThemeColor(
                  context
                      .read<GetWeatherCubit>()
                      .weatherModel
                      ?.weatherCondition,
                ),
              ),
              prefixIconColor: getThemeColor(
                context.read<GetWeatherCubit>().weatherModel?.weatherCondition,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: getThemeColor(
                    context
                        .read<GetWeatherCubit>()
                        .weatherModel
                        ?.weatherCondition,
                  ),
                  width: 2,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: getThemeColor(
                    context
                        .read<GetWeatherCubit>()
                        .weatherModel
                        ?.weatherCondition,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
