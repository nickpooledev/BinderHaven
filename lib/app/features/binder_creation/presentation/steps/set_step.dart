import 'package:flutter/material.dart';

class SetStep extends StatefulWidget {
  final String? selectedSet;
  final ValueChanged<String> onSelected;

  const SetStep({
    super.key,
    required this.selectedSet,
    required this.onSelected,
  });

  @override
  State<SetStep> createState() => _SetStepState();
}

class _SetStepState extends State<SetStep> {
  final TextEditingController _searchController = TextEditingController();

  final List<String> _allSets = const [
    'Base Set',
    'Jungle',
    'Fossil',
    'Team Rocket',
    'Gym Heroes',
    'Gym Challenge',
    'Neo Genesis',
    '151',
    'Scarlet & Violet',
    'Journey Together',
  ];

  String _search = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filteredSets = _allSets
        .where(
          (set) => set.toLowerCase().contains(_search.toLowerCase()),
        )
        .toList();

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose Set',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Choose the official Pokémon set for this binder.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 24),

          TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search sets...',
            ),
            onChanged: (value) {
              setState(() {
                _search = value;
              });
            },
          ),

          const SizedBox(height: 24),

          Expanded(
            child: ListView.separated(
              itemCount: filteredSets.length,
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final set = filteredSets[index];
                final selected = widget.selectedSet == set;

                return ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(
                      color: selected
                          ? Theme.of(context).colorScheme.primary
                          : Colors.transparent,
                      width: 2,
                    ),
                  ),
                  tileColor: Colors.white.withValues(alpha: 0.04),
                  title: Text(set),
                  trailing:
                      selected ? const Icon(Icons.check_circle) : null,
                  onTap: () => widget.onSelected(set),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}