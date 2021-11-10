import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_folder/managers/api_manager.dart';
import 'package:new_folder/model/api_data.dart';
import 'package:new_folder/repository/data_repository.dart';
import 'package:new_folder/screens/home/bloc/home_bloc.dart';
import 'package:new_folder/screens/home/bloc/home_event.dart';
import 'package:new_folder/screens/home/bloc/home_state.dart';
import 'package:new_folder/screens/home/widgets/inherited/home_inherited_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeBloc _bloc;

  @override
  void initState() {
    _bloc =
        HomeBloc(InitialHomeState(), DataRepository(apiManager: ApiManager()));
    _bloc.add(LoadHomeEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeInheritedWidget(
        child: const HomeBodyWidget(),
        block: _bloc,
      ),
    );
  }
}

class HomeBodyWidget extends StatefulWidget {
  const HomeBodyWidget({Key? key}) : super(key: key);

  @override
  _HomeBodyWidgetState createState() => _HomeBodyWidgetState();
}

class _HomeBodyWidgetState extends State<HomeBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocBuilder(
      bloc: context
          .dependOnInheritedWidgetOfExactType<HomeInheritedWidget>()!
          .block,
      builder: (context, state) {
        if (state is LoadedHomeState) {
          return HomeListWidget(dataList: state.dataList,);
        } else if (state is ErrorHomeState) {
          return const Center(
            child: Text(
              'Error',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }else{
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    ),
    );
  }
}

class HomeListWidget extends StatelessWidget {
  final ApiDataList dataList;
  const HomeListWidget({Key? key, required this.dataList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataList.data.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              leading: Text(dataList.data[index].id.toString()),
              title: Text(dataList.data[index].title),
            ),
          );
        }
    );
  }
}
