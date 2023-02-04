import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart';
import 'package:json/src/cubit/cubit/repositroy.dart';

part 'dog_state.dart';

class DogCubit extends Cubit<DogState> {
  DogCubit() : super(DogInitial()){
      getData();
  }

  DogRepo repositry = DogRepo();
  Future getData()async{
    emit(DogLoading());
      try {
        final response = await repositry.fetchData();
     String message =response.message;
     String status =response.status;
     emit(DogLoaded(message,status));
      } catch (e) {
        DogError();
      }
  }
}
