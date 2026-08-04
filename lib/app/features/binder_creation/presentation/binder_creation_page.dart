import 'package:flutter/material.dart';
import 'package:binder_haven/app/application/binder/create_binder_use_case.dart';
import 'package:binder_haven/app/domain/enums/game.dart';
import 'package:binder_haven/app/domain/enums/pocket_layout.dart';
import 'package:binder_haven/app/domain/enums/binder_style.dart';
import 'steps/binder_style_step.dart';
import 'steps/game_step.dart';
import 'steps/layout_step.dart';
import 'steps/review_step.dart';
import 'steps/set_step.dart';

class BinderCreationPage extends StatefulWidget {
  const BinderCreationPage({super.key});

  @override
  State<BinderCreationPage> createState() => _BinderCreationPageState();
}

class _BinderCreationPageState extends State<BinderCreationPage> {
  int _currentStep = 0;

  Game? _selectedGame;
  String? _selectedSet;
  PocketLayout? _selectedLayout;
  BinderStyle? _selectedStyle;

  void _continue() {
    if (!_canContinue) return;

    if (_currentStep < 4) {
      setState(() {
        _currentStep++;
      });
      return;
    }

    CreateBinderUseCase.execute(
  game: _selectedGame!,
  setId: _selectedSet!,
  layout: _selectedLayout!,
  style: _selectedStyle!,
);

Navigator.pop(context);
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

      case 2:
        return _selectedLayout != null;

      case 3:
        return _selectedStyle != null;

      case 4:
        return true;

      default:
        return false;
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

      case 2:
        return LayoutStep(
          selectedLayout: _selectedLayout,
          onSelected: (layout) {
            setState(() {
              _selectedLayout = layout;
            });
          },
        );

      case 3:
        return BinderStyleStep(
          selectedStyle: _selectedStyle,
          onSelected: (style) {
            setState(() {
              _selectedStyle = style;
            });
          },
        );

      case 4:
        return ReviewStep(
          game: _selectedGame!.displayName,
          set: _selectedSet!,
          layout: _selectedLayout!.pocketsPerPage,
          style: _selectedStyle!,
        );

      default:
        return const SizedBox.shrink();
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
                    child: Text(
                      _currentStep == 4
                          ? 'Create Binder'
                          : 'Continue',
                    ),
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