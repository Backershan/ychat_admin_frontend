part of 'settings_bloc.dart';

abstract class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object> get props => [];
}

class GetSettings extends SettingsEvent {
  const GetSettings();
}

class UpdateSettings extends SettingsEvent {
  final SettingsEntity settings;

  const UpdateSettings({required this.settings});

  @override
  List<Object> get props => [settings];
}
