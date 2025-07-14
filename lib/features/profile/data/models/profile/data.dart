import 'package:equatable/equatable.dart';

import 'education.dart';

class Data extends Equatable {
  final String? about;
  final String? city;
  final dynamic company;
  final dynamic companyDescription;
  final String? companyDomain;
  final dynamic companyEmployeeCount;
  final dynamic companyEmployeeRange;
  final dynamic companyIndustry;
  final dynamic companyLinkedinUrl;
  final dynamic companyLogoUrl;
  final dynamic companyWebsite;
  final dynamic companyYearFounded;
  final int? connectionCount;
  final String? country;
  final dynamic currentCompanyJoinMonth;
  final dynamic currentCompanyJoinYear;
  final String? currentJobDuration;
  final List<Education>? educations;
  final String? email;
  final List<dynamic>? experiences;
  final String? firstName;
  final int? followerCount;
  final String? fullName;
  final String? headline;
  final dynamic hqCity;
  final dynamic hqCountry;
  final dynamic hqRegion;
  final bool? isCreator;
  final bool? isInfluencer;
  final bool? isPremium;
  final bool? isVerified;
  final dynamic jobTitle;
  final List<dynamic>? languages;
  final String? lastName;
  final String? linkedinUrl;
  final String? location;
  final String? phone;
  final String? profileId;
  final String? profileImageUrl;
  final String? publicId;
  final String? school;
  final String? state;
  final String? urn;

  const Data({
    this.about,
    this.city,
    this.company,
    this.companyDescription,
    this.companyDomain,
    this.companyEmployeeCount,
    this.companyEmployeeRange,
    this.companyIndustry,
    this.companyLinkedinUrl,
    this.companyLogoUrl,
    this.companyWebsite,
    this.companyYearFounded,
    this.connectionCount,
    this.country,
    this.currentCompanyJoinMonth,
    this.currentCompanyJoinYear,
    this.currentJobDuration,
    this.educations,
    this.email,
    this.experiences,
    this.firstName,
    this.followerCount,
    this.fullName,
    this.headline,
    this.hqCity,
    this.hqCountry,
    this.hqRegion,
    this.isCreator,
    this.isInfluencer,
    this.isPremium,
    this.isVerified,
    this.jobTitle,
    this.languages,
    this.lastName,
    this.linkedinUrl,
    this.location,
    this.phone,
    this.profileId,
    this.profileImageUrl,
    this.publicId,
    this.school,
    this.state,
    this.urn,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        about: json['about'] as String?,
        city: json['city'] as String?,
        company: json['company'] as dynamic,
        companyDescription: json['company_description'] as dynamic,
        companyDomain: json['company_domain'] as String?,
        companyEmployeeCount: json['company_employee_count'] as dynamic,
        companyEmployeeRange: json['company_employee_range'] as dynamic,
        companyIndustry: json['company_industry'] as dynamic,
        companyLinkedinUrl: json['company_linkedin_url'] as dynamic,
        companyLogoUrl: json['company_logo_url'] as dynamic,
        companyWebsite: json['company_website'] as dynamic,
        companyYearFounded: json['company_year_founded'] as dynamic,
        connectionCount: json['connection_count'] as int?,
        country: json['country'] as String?,
        currentCompanyJoinMonth: json['current_company_join_month'] as dynamic,
        currentCompanyJoinYear: json['current_company_join_year'] as dynamic,
        currentJobDuration: json['current_job_duration'] as String?,
        educations: (json['educations'] as List<dynamic>?)
            ?.map((e) => Education.fromJson(e as Map<String, dynamic>))
            .toList(),
        email: json['email'] as String?,
        experiences: json['experiences'] as List<dynamic>?,
        firstName: json['first_name'] as String?,
        followerCount: json['follower_count'] as int?,
        fullName: json['full_name'] as String?,
        headline: json['headline'] as String?,
        hqCity: json['hq_city'] as dynamic,
        hqCountry: json['hq_country'] as dynamic,
        hqRegion: json['hq_region'] as dynamic,
        isCreator: json['is_creator'] as bool?,
        isInfluencer: json['is_influencer'] as bool?,
        isPremium: json['is_premium'] as bool?,
        isVerified: json['is_verified'] as bool?,
        jobTitle: json['job_title'] as dynamic,
        languages: json['languages'] as List<dynamic>?,
        lastName: json['last_name'] as String?,
        linkedinUrl: json['linkedin_url'] as String?,
        location: json['location'] as String?,
        phone: json['phone'] as String?,
        profileId: json['profile_id'] as String?,
        profileImageUrl: json['profile_image_url'] as String?,
        publicId: json['public_id'] as String?,
        school: json['school'] as String?,
        state: json['state'] as String?,
        urn: json['urn'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'about': about,
        'city': city,
        'company': company,
        'company_description': companyDescription,
        'company_domain': companyDomain,
        'company_employee_count': companyEmployeeCount,
        'company_employee_range': companyEmployeeRange,
        'company_industry': companyIndustry,
        'company_linkedin_url': companyLinkedinUrl,
        'company_logo_url': companyLogoUrl,
        'company_website': companyWebsite,
        'company_year_founded': companyYearFounded,
        'connection_count': connectionCount,
        'country': country,
        'current_company_join_month': currentCompanyJoinMonth,
        'current_company_join_year': currentCompanyJoinYear,
        'current_job_duration': currentJobDuration,
        'educations': educations?.map((e) => e.toJson()).toList(),
        'email': email,
        'experiences': experiences,
        'first_name': firstName,
        'follower_count': followerCount,
        'full_name': fullName,
        'headline': headline,
        'hq_city': hqCity,
        'hq_country': hqCountry,
        'hq_region': hqRegion,
        'is_creator': isCreator,
        'is_influencer': isInfluencer,
        'is_premium': isPremium,
        'is_verified': isVerified,
        'job_title': jobTitle,
        'languages': languages,
        'last_name': lastName,
        'linkedin_url': linkedinUrl,
        'location': location,
        'phone': phone,
        'profile_id': profileId,
        'profile_image_url': profileImageUrl,
        'public_id': publicId,
        'school': school,
        'state': state,
        'urn': urn,
      };

  @override
  List<Object?> get props {
    return [
      about,
      city,
      company,
      companyDescription,
      companyDomain,
      companyEmployeeCount,
      companyEmployeeRange,
      companyIndustry,
      companyLinkedinUrl,
      companyLogoUrl,
      companyWebsite,
      companyYearFounded,
      connectionCount,
      country,
      currentCompanyJoinMonth,
      currentCompanyJoinYear,
      currentJobDuration,
      educations,
      email,
      experiences,
      firstName,
      followerCount,
      fullName,
      headline,
      hqCity,
      hqCountry,
      hqRegion,
      isCreator,
      isInfluencer,
      isPremium,
      isVerified,
      jobTitle,
      languages,
      lastName,
      linkedinUrl,
      location,
      phone,
      profileId,
      profileImageUrl,
      publicId,
      school,
      state,
      urn,
    ];
  }
}
