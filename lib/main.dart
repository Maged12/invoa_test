import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'series_feature/bloc/series_bloc.dart';
import 'series_feature/models/series.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SeriesBloc(),
      child: const MyHomeView(),
    );
  }
}

class MyHomeView extends StatefulWidget {
  const MyHomeView({Key? key}) : super(key: key);

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  @override
  void initState() {
    context.read<SeriesBloc>().add(const SeriesLoading());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SeriesBloc, SeriesState>(
        buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
        builder: (context, state) {
          if (state is Seriesloading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is SeriesLoad) {
            final Series series = state.series;
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(series.coverPhoto),
                  Center(child: Text(series.seriesName)),
                  Center(
                      child: Text(
                          "${series.coaches.map((coache) => coache.name).toList()}")),
                ],
              ),
            );
          }
          if (state is SeriesErrorLoad) {
            return Center(child: Text(state.message));
          }
          return const Text("init");
        },
      ),
    );
  }
}
