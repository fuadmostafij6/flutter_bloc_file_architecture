

import 'package:http/http.dart' as http;

class ApiClient {
  static const String baseUrl = 'https://api.example.com'; // Replace with your API base URL

  Future<String> get(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));

    if (response.statusCode == 200) {
      return response.body; // Parse JSON response if necessary
    } else {
      throw Exception('Failed to load data from API');
    }
  }

  Future<String> post(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$baseUrl/$endpoint'),
      body: data,
      headers: {'Content-Type': 'application/json'}, // Adjust headers as needed
    );

    if (response.statusCode == 200) {
      return response.body; // Parse JSON response if necessary
    } else {
      throw Exception('Failed to post data to API');
    }
  }

// Add more methods for other HTTP request types (PUT, DELETE, etc.) if needed
}
