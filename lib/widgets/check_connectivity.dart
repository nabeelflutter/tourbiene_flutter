import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourbiene/bloc/connectivitybloc/connectivity_bloc.dart';
import 'package:tourbiene/screens/noconnection_page.dart';

class CheckConnectivity extends StatelessWidget {
  final Widget child;
  const CheckConnectivity({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectivityBloc, ConnectivityState>(
      builder: (context, state) {
        if (state is ConnectedState) {
          return child;
        } else if (state is DisConnectedState) {
          return const NoConnectionPage();
        } else {
          return Container();
        }
      },
    );
  }
}
