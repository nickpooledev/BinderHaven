import 'binder_pocket.dart';

class BinderPage {
  const BinderPage({
    required this.pageNumber,
    required this.pockets,
  });

  /// Human-readable page number (starts at 1)
  final int pageNumber;

  /// All pockets on this page
  final List<BinderPocket> pockets;

  /// Number of pockets on this page
  int get pocketCount => pockets.length;

  /// True if every pocket is filled
  bool get isComplete =>
      pockets.every((pocket) => pocket.assignment != null);

  /// Number of filled pockets
  int get filledPocketCount =>
      pockets.where((pocket) => pocket.assignment != null).length;

  /// Number of empty pockets
  int get emptyPocketCount =>
      pocketCount - filledPocketCount;
}