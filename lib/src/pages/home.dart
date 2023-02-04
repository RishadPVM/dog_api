
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit/dog_cubit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

final _cubit =DogCubit();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: BlocBuilder<DogCubit, DogState>(
        bloc: _cubit,
        builder: (context, state) {
          if(state is DogLoading){
            return Center(child: CircularProgressIndicator());
          }else if(state is DogError){
            return Icon(Icons.error);
          }else if(state is DogLoaded){
            return Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Image.network(state.data),
                //Text(state.data1)
              ],
            );
          }else {
            return Container();
          }
        },
      ),
      
    );
  }
}
