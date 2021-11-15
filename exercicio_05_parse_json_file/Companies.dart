class Companies {
  List<Company>? company;

  Companies({this.company});

  Companies.fromJson(Map<String, dynamic> json) {
    if (json['company'] != null) {
      company = <Company>[];
      json['company'].forEach((v) {
        company?.add(new Company.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.company != null) {
      data['company'] = this.company?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Company {
  String? sImage;
  String? sName;

  Company({this.sImage, this.sName});

  Company.fromJson(Map<String, dynamic> json) {
    sImage = json['_image'];
    sName = json['_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_image'] = this.sImage;
    data['_name'] = this.sName;
    return data;
  }
}
