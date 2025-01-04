import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text('History'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: ColorManager.darkGreen),
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const TabBar(
                indicatorColor: ColorManager.darkGreen,
                labelColor: ColorManager.darkGreen, 
                unselectedLabelColor: Colors.black, 

                tabs: [
                  SizedBox(width: 140, child: Tab(text: 'Upcoming')),
                  Tab(text: 'Completed'),
                  Tab(text: 'Cancelled'),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            UpcomingTab(),
            const Center(child: Text('Completed tab content')), 
            const Center(child: Text('Cancelled tab content')), 
          ],
        ),
      ),
    );
  }
}

class UpcomingTab extends StatelessWidget {
  final List<Map<String, String>> historyItems = [
    {'name': 'Nate', 'time': 'Today at 09:20 am', 'car': 'Mustang Shelby GT'},
    {'name': 'Henry', 'time': 'Today at 10:20 am', 'car': 'Mustang Shelby GT'},
    {
      'name': 'William',
      'time': 'Tomorrow at 09:20 am',
      'car': 'Mustang Shelby GT'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:  8.0),
      child: ListView.builder(
        itemCount: historyItems.length,
        itemBuilder: (context, index) {
          final item = historyItems[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: ColorManager.darkGreen),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(item['name'] ?? ''),
              subtitle: Text(item['car'] ?? ''),
              trailing: Text(item['time'] ?? ''),
            ).animate().fade(duration: .4.seconds, delay: .25.seconds),
          );
        },
      ),
    );
  }
}
