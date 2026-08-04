enum BinderStyle {
  standard(
    displayName: 'Standard Set',
    description: 'One copy of every numbered card.',
  ),

  master(
    displayName: 'Master Set',
    description: 'Every numbered card plus reverse holos and required variants.',
  ),

  variants(
    displayName: 'Variant Collection',
    description: 'Every available variation and printing.',
  );

  const BinderStyle({
    required this.displayName,
    required this.description,
  });

  final String displayName;
  final String description;
}