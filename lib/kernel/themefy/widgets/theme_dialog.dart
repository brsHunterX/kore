// FLUTTER
import 'package:flutter/material.dart';

// MODELS
import 'package:kore/kernel/themefy/models/app_theme.dart';

// CONTROLLERS
import 'package:kore/kernel/themefy/controllers/theme_controller.dart';

class ThemeDialog extends StatefulWidget {

  final String title;
  final ThemeController controller;

  ThemeDialog({
    this.title = 'Select theme',
    @required this.controller,
  }): assert(controller != null);

  @override
  _ThemeDialogState createState() => _ThemeDialogState();
}

class _ThemeDialogState extends State<ThemeDialog> {
  
  String _themeId = 'light';

  @override
  void initState() {
    
    super.initState();
    
    widget.controller.getCurrentThemeId()
      .then((String themeId) => setState(() => _themeId = themeId));
  }

  void _changeTheme(String id) {

    setState(() => _themeId = id);
    
    final AppTheme theme = widget.controller.getTheme(id);

    widget.controller.setTheme(theme);
  }

  Widget _buildRadioTile(AppTheme theme) {

    return RadioListTile<String> (
      value: theme.id,
      groupValue: _themeId,
      title: Text(theme.label),
      subtitle: Text(theme.description),
      onChanged: (String id) => _changeTheme(id),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    
    return SimpleDialog(
      title: Text(widget.title),
      children: widget.controller.getThemes()
        .map((AppTheme theme) => _buildRadioTile(theme))
        .toList(),
    );
  }
}