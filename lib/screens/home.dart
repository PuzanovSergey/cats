import 'package:flutter/material.dart';
import 'package:cats/import.dart';

class HomeScreen extends StatelessWidget {
  Route<T> getRoute<T>() {
    return buildRoute<T>(
      '/home',
      builder: (_) => this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final cubit = getBloc<AuthenticationCubit>(context);
    final user = cubit.state.user;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            key: const Key('homeScreen_logout_iconButton'),
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => cubit.requestLogout(),
          )
        ],
      ),
      body: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Avatar(photo: user.photo),
            const SizedBox(height: 4.0),
            Text(user.email, style: textTheme.headline6),
            const SizedBox(height: 4.0),
            Text(user.name ?? '', style: textTheme.headline5),
            const SizedBox(height: 4.0),
            _GitHubButton(),
          ],
        ),
      ),
    );
  }
}

class _GitHubButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RaisedButton(
      key: const Key('homeScreen_gitHub_raisedButton'),
      child: const Text(
        'GitHub',
        style: TextStyle(color: Colors.white),
      ),
      shape: StadiumBorder(),
      color: theme.accentColor,
      onPressed: () => navigator.push<void>(GitHubScreen().getRoute()),
    );
  }
}
