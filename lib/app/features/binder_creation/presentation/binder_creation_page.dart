import 'package:flutter/material.dart';

import 'steps/game_step.dart';
import 'steps/set_step.dart';

class BinderCreationPage extends StatefulWidget {
  const BinderCreationPage({super.key});

  @override
  State<BinderCreationPage> createState() => _BinderCreationPageState();
}

class _BinderCreationPageState extends State<BinderCreationPage> {
  int _currentStep = 0;

  String? _selectedGame;
  String? _selectedSet;

  void _continue() {
    if (_currentStep == 0 && _selectedGame == null) return;
    if (_currentStep == 1 && _selectedSet == null) return;

    setState(() {
      _currentStep++;
    });
  }

  void _back() {
    if (_currentStep == 0) {
      Navigator.pop(context);
      return;
    }

    setState(() {
      _currentStep--;
    });
  }

  bool get _canContinue {
    switch (_currentStep) {
      case 0:
        return _selectedGame != null;

      case 1:
        return _selectedSet != null;

      default:
        return true;
    }
  }

  Widget _buildStep() {
    switch (_currentStep) {
      case 0:
        return GameStep(
          selectedGame: _selectedGame,
          onSelected: (game) {
            setState(() {
              _selectedGame = game;
            });
          },
        );

      case 1:
        return SetStep(
          selectedSet: _selectedSet,
          onSelected: (set) {
            setState(() {
              _selectedSet = set;
            });
          },
        );

      default:
        return const Center(
          child: Text(
            'Pocket Layout coming next...',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final progress = (_currentStep + 1) / 5;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: _back,
        ),
        title: const Text('Create Binder'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: LinearProgressIndicator(
                value: progress,
                minHeight: 6,
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            const SizedBox(height: 24),

            Expanded(
              child: _buildStep(),
            ),

            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel'),
                  ),
                  const Spacer(),
                  FilledButton(
                    onPressed: _canContinue ? _continue : null,
                    child: const Text('Continue'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}