enum PocketLayout {
  fourPocket(
    rows: 2,
    columns: 2,
    displayName: '4-Pocket',
  ),

  ninePocket(
    rows: 3,
    columns: 3,
    displayName: '9-Pocket',
  ),

  twelvePocket(
    rows: 3,
    columns: 4,
    displayName: '12-Pocket',
  ),

  sixteenPocket(
    rows: 4,
    columns: 4,
    displayName: '16-Pocket',
  );

  const PocketLayout({
    required this.rows,
    required this.columns,
    required this.displayName,
  });

  final int rows;
  final int columns;
  final String displayName;

  int get pocketsPerPage => rows * columns;
}