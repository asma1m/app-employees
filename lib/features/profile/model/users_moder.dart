class UsersModel {
  String name;
  String jobNumber;
  String jobTitle;
  String employer;

  UsersModel(
      {required this.name,
      required this.jobNumber,
      required this.jobTitle,
      required this.employer});

  factory UsersModel.fromJson({required Map<String, dynamic> json}) {
    return UsersModel(
        name: json["name"],
        jobNumber: json["job_number"],
        jobTitle: json["job_title"],
        employer: json["employer"]);
  }

  Map<String, dynamic> toJosn() {
    return {
      "name": name,
      "job_number": jobNumber,
      "job_title": jobTitle,
      "employer": employer
    };
  }
}
