part of 'watchlist_cubit.dart';

abstract class WatchlistState {}

final class WatchlistInitial extends WatchlistState {}

final class AddToWatchList extends WatchlistState {}

final class RemoveFromWatchList extends WatchlistState {}

final class WatchListSuccess extends WatchlistState {}
