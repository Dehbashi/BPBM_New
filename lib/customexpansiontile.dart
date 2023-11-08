import 'package:flutter/material.dart';

class CustomExpansionTile extends StatefulWidget {
  final Widget title;
  final Widget leading;
  final Widget trailing;
  final List<Widget> children;
  final bool initiallyExpanded;

  const CustomExpansionTile({
    Key key = const ValueKey('defaultKey'),
    required this.title,
    this.leading = const SizedBox(),
    this.trailing = const SizedBox(),
    this.children = const <Widget>[],
    this.initiallyExpanded = false,
  }) : super(key: key);

  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _heightFactor;

  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    _heightFactor = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _isExpanded = widget.initiallyExpanded;
    if (_isExpanded) {
      _controller.value = 1.0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool closed = !_isExpanded && _controller.isDismissed;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          title: widget.title,
          // leading: widget.leading,
          trailing: RotationTransition(
            turns: _controller.view,
            child: const Icon(Icons.keyboard_arrow_down),
          ),
          onTap: _handleTap,
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 2000),
          height: closed ? 0 : null,
          child: ClipRect(
            child: Align(
              heightFactor: _heightFactor.value,
              child: Column(children: widget.children),
            ),
          ),
        ),
      ],
    );
  }
}
