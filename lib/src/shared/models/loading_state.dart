import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_state.freezed.dart';

@freezed
class LoadingState with _$LoadingState {
  const factory LoadingState.initial() = LoadingInitial;
  const factory LoadingState.loading() = LoadingLoading;
  const factory LoadingState.success() = LoadingSuccess;
  const factory LoadingState.error(String message) = LoadingError;
}