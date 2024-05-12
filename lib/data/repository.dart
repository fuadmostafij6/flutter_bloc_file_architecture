
import 'dart:convert';

import 'package:flutter_bloc_architecture/models/model.dart';
import 'package:flutter_bloc_architecture/utils/api_client.dart';

class DataRepository {
  final ApiClient _apiClient;

  DataRepository(this._apiClient);

  Future<List<User>> fetchData() async {
    try {
      // Make a GET request to fetch data from the API
      final String responseData = await _apiClient.get('endpoint');

      // Parse the JSON response and convert it into a list of Model objects
      final List<User> data = (jsonDecode(responseData)['data'] as List)
          .map((json) => User.fromJson(json))
          .toList();

      return data;
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }

// Add more methods for other data operations if needed
}
