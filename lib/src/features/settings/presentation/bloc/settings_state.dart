part of 'settings_bloc.dart';

abstract class SettingsState extends Equatable {
  const SettingsState();

  @override
  List<Object> get props => [];
}

class SettingsInitial extends SettingsState {}

class SettingsLoading extends SettingsState {}

class SettingsLoaded extends SettingsState {
  final SettingsEntity settings;

  const SettingsLoaded(this.settings);

  @override
  List<Object> get props => [settings];
}

class SettingsUpdated extends SettingsState {
  final SettingsEntity settings;

  const SettingsUpdated(this.settings);

  @override
  List<Object> get props => [settings];
}

class SettingsError extends SettingsState {
  final String message;

  const SettingsError(this.message);

  @override
  List<Object> get props => [message];
}

class SettingsOfflineMode extends SettingsState {
  final SettingsEntity settings;
  final String message;

  const SettingsOfflineMode(this.settings, this.message);

  @override
  List<Object> get props => [settings, message];
}
