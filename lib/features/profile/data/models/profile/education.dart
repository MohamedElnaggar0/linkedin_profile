import 'package:equatable/equatable.dart';

class Education extends Equatable {
  final String? activities;
  final String? dateRange;
  final String? degree;
  final String? endMonth;
  final int? endYear;
  final String? fieldOfStudy;
  final String? school;
  final String? schoolId;
  final String? schoolLinkedinUrl;
  final String? schoolLogoUrl;
  final String? startMonth;
  final int? startYear;

  const Education({
    this.activities,
    this.dateRange,
    this.degree,
    this.endMonth,
    this.endYear,
    this.fieldOfStudy,
    this.school,
    this.schoolId,
    this.schoolLinkedinUrl,
    this.schoolLogoUrl,
    this.startMonth,
    this.startYear,
  });

  factory Education.fromJson(Map<String, dynamic> json) => Education(
        activities: json['activities'] as String?,
        dateRange: json['date_range'] as String?,
        degree: json['degree'] as String?,
        endMonth: json['end_month'] as String?,
        endYear: json['end_year'] as int?,
        fieldOfStudy: json['field_of_study'] as String?,
        school: json['school'] as String?,
        schoolId: json['school_id'] as String?,
        schoolLinkedinUrl: json['school_linkedin_url'] as String?,
        schoolLogoUrl: json['school_logo_url'] as String?,
        startMonth: json['start_month'] as String?,
        startYear: json['start_year'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'activities': activities,
        'date_range': dateRange,
        'degree': degree,
        'end_month': endMonth,
        'end_year': endYear,
        'field_of_study': fieldOfStudy,
        'school': school,
        'school_id': schoolId,
        'school_linkedin_url': schoolLinkedinUrl,
        'school_logo_url': schoolLogoUrl,
        'start_month': startMonth,
        'start_year': startYear,
      };

  @override
  List<Object?> get props {
    return [
      activities,
      dateRange,
      degree,
      endMonth,
      endYear,
      fieldOfStudy,
      school,
      schoolId,
      schoolLinkedinUrl,
      schoolLogoUrl,
      startMonth,
      startYear,
    ];
  }
}
