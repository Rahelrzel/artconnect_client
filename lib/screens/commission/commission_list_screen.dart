import 'package:artconnect/config/colors.dart';
import 'package:artconnect/screens/commission/commission_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CommissionListScreen extends HookConsumerWidget {
  const CommissionListScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var status = useState([
      CommissionStatus(
        label: 'All',
        value: 'ALL',
        color: Colors.blue,
      ),
      CommissionStatus(
        label: 'Waiting',
        value: 'WAITING',
        color: Colors.blue,
      ),
      CommissionStatus(
        label: 'Ongoing',
        value: 'ONGOING',
        color: Colors.orange,
      ),
      CommissionStatus(
        label: 'Finished',
        value: 'FINISHED',
        color: Colors.green,
      ),
    ]);
    var currentStatus = useState('ALL');
    var currentType = useState('All');
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text("Commissions"),
        centerTitle: true,
        backgroundColor: primaryColor.shade800,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20),
          child: Column(
            children: [
              commissionFilters(currentType, currentStatus, status),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => const CommissionListItem(),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 14,
                  ),
                  itemCount: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row commissionFilters(
      ValueNotifier<String> currentType,
      ValueNotifier<String> currentStatus,
      ValueNotifier<List<CommissionStatus>> status) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding:
              const EdgeInsets.symmetric(horizontal: 10).copyWith(left: 20),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(100),
          ),
          child: DropdownButton(
            underline: const SizedBox(),
            dropdownColor: Colors.white,
            value: currentType.value,
            items: ['All', 'Painting', 'Illustration', '3D Graphics', 'UI/UX']
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Text(
                      e,
                      style: const TextStyle(fontSize: 13),
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) {
              if (value != null) {
                currentType.value = value;
              }
            },
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          padding:
              const EdgeInsets.symmetric(horizontal: 10).copyWith(left: 20),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(100),
          ),
          child: DropdownButton(
            padding: const EdgeInsets.symmetric(vertical: 0),
            underline: const SizedBox(),
            dropdownColor: Colors.white,
            value: currentStatus.value,
            items: status.value
                .map(
                  (e) => DropdownMenuItem(
                    value: e.value,
                    child: Text(
                      e.label,
                      style: const TextStyle(fontSize: 13),
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) {
              if (value != null) {
                currentStatus.value = value;
              }
            },
          ),
        ),
      ],
    );
  }
}

class CommissionStatus {
  String label;
  String value;
  Color color;

  CommissionStatus({
    required this.label,
    required this.value,
    required this.color,
  });
}

class CommissionListItem extends StatelessWidget {
  const CommissionListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CommissionDetails(),
          ),
        );
      },
      child: Ink(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Canvas Painting',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Waiting to be reviewed',
                    style: TextStyle(
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage('assets/images/art3.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'John Doe',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
                const Text(
                  '2 days ago',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
