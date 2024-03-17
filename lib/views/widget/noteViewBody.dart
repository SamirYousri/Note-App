// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/show_note_cubit/show_note_cubit.dart';
import 'package:note/views/widget/customAppBar.dart';
import 'package:note/views/widget/noteListViewBuilder.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  //هوه مكنش قال اننا نعمل initStata
  @override
  void initState() {
    //ولا الربط ده
    BlocProvider.of<ShowNoteCubit>(context).showAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 40),
      child: Column(
        children: [
          CustomeAppBar(
            title: 'Note',
            icon1: Icons.search,
          ),
          const Expanded(
            child: NoteListView(),
          ),
        ],
      ),
    );
  }
}
