import 'package:flutter/material.dart';
import '../data/food_data.dart';

class FoodGuideScreen extends StatefulWidget {
  final String doshaType; // e.g. 'vata', 'pitta', 'kapha'

  const FoodGuideScreen({super.key, required this.doshaType});

  @override
  State<FoodGuideScreen> createState() => _FoodGuideScreenState();
}

class _FoodGuideScreenState extends State<FoodGuideScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final foods = foodData[widget.doshaType]!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Guide'),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.yellowAccent,

          unselectedLabelColor: Colors.yellowAccent,
          tabs: const [
            Tab(text: 'Favorable Foods',),
            Tab(text: 'Foods to Limit'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildFoodList(context, foods['favorable']!, true),
          _buildFoodList(context, foods['limit']!, false),
        ],
      ),
    );
  }

  Widget _buildFoodList(BuildContext context, Map<String, List<String>> data, bool isFavorable) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: data.entries.map((entry) {
        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: isFavorable ? Colors.green.shade50 : Colors.red.shade50,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isFavorable ? Colors.green.shade300 : Colors.red.shade300,
            ),
          ),
          child: ExpansionTile(
            leading: Icon(
              Icons.restaurant_menu,
              color: isFavorable ? Colors.green : Colors.red,
            ),
            title: Text(
              entry.key,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: [
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: entry.value
                    .map((food) => Chip(
                  label: Text(food),
                  backgroundColor:
                  isFavorable ? Colors.green.shade100 : Colors.red.shade100,
                ))
                    .toList(),
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      }).toList(),
    );
  }
}
