import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/story_list_controller.dart';

class StoryListView extends GetView<StoryListController> {
  const StoryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StoryListView'),
        centerTitle: true,
      ),
      body: GetX<StoryListController>(builder: (controller) {
        return ListView.builder(
          itemCount: controller.stories.length,
          itemBuilder: (context, index) {
            final story = controller.stories[index];
            return Container(
              // Card Container
              margin: const EdgeInsets.all(15.0), // Add margin around cards
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 17.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ... Your card content here ...
                  Text(
                    story.heading,
                    style: const TextStyle(
                        fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    story.body,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 12.0),
                  ),
                  const SizedBox(height: 10.0),
                  Wrap(
                    spacing: 8.0,
                    children: story.categories
                        .map((category) => _buildBadge(category))
                        .toList(),
                  ),
                  const SizedBox(height: 24.0),
                  Text(
                    story.date,
                    style: const TextStyle(
                        fontSize: 12.0,
                        color: Color.fromARGB(255, 162, 162, 162)),
                  ),

// ... with the _buildBadge function as you had it earlier...
                ],
                
              ),
            );
            
          },
          
        );
      }),
      
    );
  }

  Widget _buildBadge(String category) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.grey[200],
      ),
      child: Text(
        category,
        style: TextStyle(fontSize: 10.0, color: Colors.grey[600]),
      ),
    );
  }
}
