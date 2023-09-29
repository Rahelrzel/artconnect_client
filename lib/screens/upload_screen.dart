import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../config/colors.dart';

class UploadPage extends StatefulHookConsumerWidget {
  const UploadPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UploadPageState();
}

class _UploadPageState extends ConsumerState<UploadPage> {
  List<String> items = ['Services', 'item2', 'item3', 'item4'];
  String? selectedItem = 'Services';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor.shade800,
        foregroundColor: Colors.white,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 200,
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                          child: Image.asset(
                        'assets/images/art2.png',
                        fit: BoxFit.cover,
                      )),
                    ),
                    Positioned.fill(
                      child: Container(
                        color: Colors.black.withOpacity(0.6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.cloud_upload_outlined,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text(
                              'Upload Image',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 135,
                  color: primaryColor.shade800.withOpacity(0.1),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color:
                                primaryColor.shade600), // Set underline color
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                primaryColor.shade600), // Set underline color
                      ),
                      label: Text(
                        'Caption',
                        style: TextStyle(
                            color: primaryColor.shade700,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      alignLabelWithHint: false,
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    maxLines: 10,
                    minLines: 7,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Wrap(
                  spacing: 4,
                  runSpacing: -10,
                  children: [
                    TagItem(
                      text: 'Photography',
                    ),
                    TagItem(
                      text: 'Painting',
                    ),
                    TagItem(
                      text: 'Sculpture',
                    ),
                    TagItem(
                      text: 'Sculpture',
                    ),
                    TagItem(
                      text: 'Sculpture',
                    ),
                    TagItem(
                      text: 'Sculpture',
                    ),
                    TagItem(
                      text: 'Sculpture',
                    ),
                  ],
                ),
              ),
              Container(
                child: SizedBox(
                  width: 200,
                  child: DropdownButton<String>(
                    dropdownColor: Colors.white,
                    hint: Text('Services'),
                    value: selectedItem,
                    items: items
                        .map((Services) => DropdownMenuItem<String>(
                              value: Services,
                              child: Text(
                                Services,
                                style: TextStyle(
                                    fontSize: 20, color: primaryColor.shade700),
                              ),
                            ))
                        .toList(),
                    onChanged: (Services) =>
                        setState(() => selectedItem = Services),
                  ),
                ),
              ),
              SizedBox(
                height: 125,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FilledButton.tonal(
                      style: ButtonStyle(
                          elevation: MaterialStatePropertyAll(0),
                          backgroundColor: MaterialStatePropertyAll(
                              primaryColor.shade800.withOpacity(0.2))),
                      onPressed: () {},
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: primaryColor.shade800,
                          fontWeight: FontWeight.bold,
                          //fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  FilledButton(
                      style: ButtonStyle(
                          elevation: MaterialStatePropertyAll(0),
                          backgroundColor:
                              MaterialStatePropertyAll(primaryColor.shade800)),
                      onPressed: () {},
                      child: Text(
                        'Upload Artwork',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TagItem extends StatefulWidget {
  TagItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  _TagItemState createState() => _TagItemState();
}

class _TagItemState extends State<TagItem> {
  bool isSelected = false;

  void toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 0),
          child: FilledButton(
            onPressed: toggleSelection,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(widget.text),
                SizedBox(
                  width: 5,
                ),
                if (isSelected)
                  Icon(
                    Icons.clear,
                    size: 15,
                  ),
              ],
            ),
            style: ButtonStyle(
              minimumSize: MaterialStatePropertyAll(Size(0, 0)),
              padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 6,
              )),
              backgroundColor: MaterialStateProperty.all(
                isSelected ? primaryColor.shade800 : Colors.white,
              ),
              foregroundColor: MaterialStateProperty.all(
                isSelected ? Colors.white : primaryColor.shade800,
              ),
              side: MaterialStateProperty.all(
                BorderSide(
                  color: primaryColor.shade700,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
