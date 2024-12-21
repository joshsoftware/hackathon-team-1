import 'dart:convert'; // For JSON decoding
import 'package:http/http.dart' as http; // For API calls
import 'package:stitch_perfect/models/measurement_model.dart';

class MeasurementService {
  // Future<List<MeasurementModel>> fetchMeasurements() async {
  //   // Simulating API URL
  //   const String apiUrl = "https://example.com/api/measurements";

  //   final response = await http.get(Uri.parse(apiUrl));

  //   if (response.statusCode == 200) {
  //     final List<dynamic> jsonData = json.decode(response.body);

  //     return jsonData.map((data) => MeasurementModel.fromJson(data)).toList();
  //   } else {
  //     throw Exception("Failed to load measurements");
  //   }
  // }

  Future<List<MeasurementModel>> fetchMeasurements() async {
    await Future.delayed(const Duration(seconds: 2)); // Simulate delay
    return [
      MeasurementModel(key: "Shoulder Width", value: 23.5),
      MeasurementModel(key: "Chest Circumference", value: 22.0),
      MeasurementModel(key: "Sleeve Length", value: 15.0),
      MeasurementModel(key: "Outseam Length", value: 30.0),
      MeasurementModel(key: "Waist Circumference", value: 36.0),
      MeasurementModel(key: "Hip Circumference", value: 38.5),
    ];
  }
}