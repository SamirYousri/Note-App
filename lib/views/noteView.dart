// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:note/views/widget/addButtomSheet.dart';
import 'package:note/views/widget/noteViewBody.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NoteViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return const AddButtomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
