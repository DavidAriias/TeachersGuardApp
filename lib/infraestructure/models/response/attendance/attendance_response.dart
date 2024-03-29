class AttendancesResponse {
  final List<AttenedanceResponse> attendances;

  AttendancesResponse({
    required this.attendances,
  });

  factory AttendancesResponse.fromJson(Map<String, dynamic> json) =>
      AttendancesResponse(
        attendances: List<AttenedanceResponse>.from(
            json["attendances"].map((x) => AttenedanceResponse.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "attendances": List<dynamic>.from(attendances.map((x) => x.toJson())),
      };
}

class AttenedanceResponse {
  final DateTime entryDate;
  final DateTime exitDate;
  final String userId;
  final bool fullAttendance;
  final String placeId;
  final String placeName;
  final String attendanceId;

  AttenedanceResponse({
    required this.entryDate,
    required this.exitDate,
    required this.userId,
    required this.fullAttendance,
    required this.placeId,
    required this.placeName,
    required this.attendanceId,
  });

  factory AttenedanceResponse.fromJson(Map<String, dynamic> json) =>
      AttenedanceResponse(
        entryDate: DateTime.parse(json["entryDate"]),
        exitDate: DateTime.parse(json["exitDate"]),
        userId: json["userId"],
        fullAttendance: json["fullAttendance"],
        placeId: json["placeId"],
        placeName: json["placeName"],
        attendanceId: json["attendanceId"],
      );

  Map<String, dynamic> toJson() => {
        "entryDate": entryDate.toIso8601String(),
        "exitDate": exitDate.toIso8601String(),
        "userId": userId,
        "fullAttendance": fullAttendance,
        "placeId": placeId,
        "attendanceId": attendanceId,
      };
}
