import '../card/card_assignment.dart';

class BinderPocket {
  const BinderPocket({
    required this.slotNumber,
    this.assignment,
  });

  /// Slot number on the page (starts at 1)
  final int slotNumber;

  /// Assigned card for this pocket
  final CardAssignment? assignment;

  /// Empty pocket?
  bool get isEmpty => assignment == null;

  /// Card owned?
  bool get isOwned => assignment?.owned ?? false;
}