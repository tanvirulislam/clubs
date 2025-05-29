import 'package:flutter/material.dart';

class GameOptionsTabBar extends StatefulWidget {
  const GameOptionsTabBar({
    super.key,
    required this.options,
    this.getSelectedOption,
    this.selectedIndex = 0,
    this.getSelectedIndex,
    required this.children,
  }) : assert(children.length == options.length, 'Options length must be equal to children length');
  final List<String> options;
  final ValueSetter<String>? getSelectedOption;
  final ValueSetter<int>? getSelectedIndex;
  final int? selectedIndex;
  final List<Widget> children;

  @override
  State<GameOptionsTabBar> createState() => _GameOptionsTabBarState();
}

class _GameOptionsTabBarState extends State<GameOptionsTabBar> {
  @override
  void initState() {
    super.initState();
    updatedIndex = widget.selectedIndex ?? 0;
  }

  int? updatedIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Material(
          elevation: 2,
          child: Container(
            color: Theme.of(context).cardColor,
            height: 60,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(widget.options.length, (i) {
                  final isSlected = i == updatedIndex;
                  return InkWell(
                    onTap: () {
                      setState(() => updatedIndex = i);
                      widget.getSelectedOption?.call(widget.options[i]);
                      widget.getSelectedIndex?.call(i);
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      padding: EdgeInsets.only(right: 10, left: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: isSlected ? Colors.pink : Colors.transparent,
                            width: isSlected ? 3 : 0,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          widget.options[i],
                          style: TextStyle(
                            fontWeight: isSlected ? FontWeight.bold : FontWeight.bold,
                            color: isSlected ? Colors.pink : null,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
        Expanded(child: widget.children[updatedIndex ?? 0]),
      ],
    );
  }
}
