```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success
      final jsonData = json.decode(response.body);
      // Process jsonData
    } else {
      // Error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exception
    print('Error in fetchData: $e'); // More informative error message
    rethrow; // Rethrow to allow upper functions to handle
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully!');
  } catch (e) {
    print('An error occurred: $e');
  }
}
```