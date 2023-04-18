import 'package:flutter/material.dart';

class CustomToolbar extends StatefulWidget {
  final List<String> dropdownItems;
  final Function(String) onDropdownChanged;
  final Function(String) onSearchTextChanged;

  const CustomToolbar({
    Key? key,
    required this.dropdownItems,
    required this.onDropdownChanged,
    required this.onSearchTextChanged,
  }) : super(key: key);

  @override
  _CustomToolbarState createState() => _CustomToolbarState();
}

class _CustomToolbarState extends State<CustomToolbar> {
  String _selectedItem = '';

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                items: widget.dropdownItems
                    .map(
                      (item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  ),
                )
                    .toList(),
                value: _selectedItem.isEmpty ? null : _selectedItem,
                hint: Text('Select Item'),
                onChanged: (value) {
                  setState(() {
                    _selectedItem = value!;
                  });
                  widget.onDropdownChanged(_selectedItem);
                },
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
              ),
              onChanged: (value) {
                widget.onSearchTextChanged(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}