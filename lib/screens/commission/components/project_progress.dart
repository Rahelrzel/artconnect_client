import 'package:artconnect/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProjectProgress extends HookConsumerWidget {
  const ProjectProgress({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          progressBar(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Milestones",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => CheckboxListTile(
                activeColor: secondaryColor,
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                    'Milestone $index: what if this is a long text and what if it overflows like'),
                subtitle: const Text('Due Aug 22, 2023'),
                value: index % 2 == 0,
                onChanged: (value) => value,
              ),
              itemCount: 10,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: primaryColor.shade800.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        maxLines: 4,
                        minLines: 1,
                        decoration: InputDecoration(
                          hintText: 'Enter Milestone Task',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton.filledTonal(
                      style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                        ),
                      ),
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now().add(
                            const Duration(days: 360),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.calendar_month,
                        size: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: FilledButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        primaryColor.shade800,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Add Milestone'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column progressBar() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: LinearProgressIndicator(
            color: primaryColor.shade800,
            backgroundColor: Colors.grey.shade300,
            value: 0.6,
            minHeight: 20,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const Text(
          '60% complete',
        ),
      ],
    );
  }
}
