class Album {
  int? userId;
  int? id;
  String? title;

  Album({this.userId, this.id, this.title});

  Album.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'].toString();
  }
}

///file1
class Cat {
  String? Fact;
  int? Length;

  Cat({this.Fact, this.Length});

  Cat.fromJson(Map<String, dynamic> json) {
    Fact = json['fact'].toString();
    Length = json['length'];
  }
}

///file2
class Gen {
  int? Count;
  String? Gender;
  String? Name;
  double? Probability;

  Gen({this.Count, this.Gender, this.Name, this.Probability});

  Gen.fromJson(Map<String, dynamic> json) {
    print(json);
    Count = int.parse(json['count'].toString());
    Gender = json['gender'].toString();
    Name = json['name'].toString();
    Probability = double.parse(json['probability'].toString());
  }
}

///file3
// class Pub1{
//
//   int?count;
//   String?Entries;
//
//   Pub1({this.count});
//
//   Pub1.fromJson(Map<String, dynamic>json){
//     count=int.parse(json ['count'].toString());
//     Entries=json['entries'].toString();
//
//
//   }
//
// }

class OrgEntry {
  int? count;
  List<Entries>? entries;

  OrgEntry({this.count, this.entries});

  OrgEntry.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    if (json['entries'] != null) {
      entries = <Entries>[];
      json['entries'].forEach((v) {
        entries!.add(new Entries.fromJson(v));
      });
    }
  }
}

class Entries {
  String? aPI;
  String? description;
  String? auth;
  bool? hTTPS;
  String? cors;
  String? link;
  String? category;

  Entries(
      {this.aPI,
      this.description,
      this.auth,
      this.hTTPS,
      this.cors,
      this.link,
      this.category});

  Entries.fromJson(Map<String, dynamic> json) {
    print(json);
    aPI = json['API'].toString();
    description = json['Description'].toString();
    auth = json['Auth'].toString();
    hTTPS = json['HTTPS'];
    cors = json['Cors'].toString();
    link = json['Link'].toString();
    category = json['Category'].toString();
  }
}

///file4
class Uni {
  String? domain;
  Uni({this.domain});
  Uni.fromJson(Map<String, dynamic> json) {
    domain = json['domain'].toString();
  }}
class Domain {
  List<String>? domains;
  String? country;
  String? alphaTwoCode;
  String? stateProvince;
  List<String>? webPages;
  String? name;
  Domain(
      {this.domains,
      this.country,
      this.alphaTwoCode,
      this.stateProvince,
      this.webPages,
      this.name});
  Domain.fromJson(Map<String, dynamic> json) {
    domains = json['domains'].cast<String>();
    country = json['country'];
    alphaTwoCode = json['alpha_two_code'];
    stateProvince = json['state-province'];
    webPages = json['web_pages'].cast<String>();
    name = json['name'];
  }
}


///file5
///


// class RandomUser {
//   List<Results>? results;
//   Info? info;
//
//   RandomUser({this.results, this.info});
//
//   RandomUser.fromJson(Map<String, dynamic> json) {
//     if (json['results'] != null) {
//       results = <Results>[];
//       json['results'].forEach((v) {
//         results!.add(new Results.fromJson(v));
//       });
//     }
//     info = json['info'] != null ? new Info.fromJson(json['info']) : null;
//   }
//
//
// }
//
// class Results {
//   String? gender;
//   Name? name;
//   Location? location;
//   String? email;
//   Login? login;
//   Dob? dob;
//   Dob? registered;
//   String? phone;
//   String? cell;
//   Id? id;
//   Picture? picture;
//   String? nat;
//
//   Results(
//       {this.gender,
//         this.name,
//         this.location,
//         this.email,
//         this.login,
//         this.dob,
//         this.registered,
//         this.phone,
//         this.cell,
//         this.id,
//         this.picture,
//         this.nat});
//
//   Results.fromJson(Map<String, dynamic> json) {
//     gender = json['gender'];
//     name = json['name'] != null ? new Name.fromJson(json['name']) : null;
//     location = json['location'] != null
//         ? new Location.fromJson(json['location'])
//         : null;
//     email = json['email'];
//     login = json['login'] != null ? new Login.fromJson(json['login']) : null;
//     dob = json['dob'] != null ? new Dob.fromJson(json['dob']) : null;
//     registered = json['registered'] != null
//         ? new Dob.fromJson(json['registered'])
//         : null;
//     phone = json['phone'];
//     cell = json['cell'];
//     id = json['id'] != null ? new Id.fromJson(json['id']) : null;
//     picture =
//     json['picture'] != null ? new Picture.fromJson(json['picture']) : null;
//     nat = json['nat'];
//   }
//
//
// }
//
// class Name {
//   String? title;
//   String? first;
//   String? last;
//
//   Name({this.title, this.first, this.last});
//
//   Name.fromJson(Map<String, dynamic> json) {
//     title = json['title'];
//     first = json['first'];
//     last = json['last'];
//   }
//
//
// }
//
// class Location {
//   Street? street;
//   String? city;
//   String? state;
//   String? country;
//   int? postcode;
//   Coordinates? coordinates;
//   Timezone? timezone;
//
//   Location(
//       {this.street,
//         this.city,
//         this.state,
//         this.country,
//         this.postcode,
//         this.coordinates,
//         this.timezone});
//
//   Location.fromJson(Map<String, dynamic> json) {
//     street =
//     json['street'] != null ? new Street.fromJson(json['street']) : null;
//     city = json['city'];
//     state = json['state'];
//     country = json['country'];
//     postcode = json['postcode'];
//     coordinates = json['coordinates'] != null
//         ? new Coordinates.fromJson(json['coordinates'])
//         : null;
//     timezone = json['timezone'] != null
//         ? new Timezone.fromJson(json['timezone'])
//         : null;
//   }
//
//
// }
//
// class Street {
//   int? number;
//   String? name;
//
//   Street({this.number, this.name});
//
//   Street.fromJson(Map<String, dynamic> json) {
//     number = json['number'];
//     name = json['name'];
//   }
//
//
// }
//
// class Coordinates {
//   String? latitude;
//   String? longitude;
//
//   Coordinates({this.latitude, this.longitude});
//
//   Coordinates.fromJson(Map<String, dynamic> json) {
//     latitude = json['latitude'];
//     longitude = json['longitude'];
//   }
//
//
// }
//
// class Timezone {
//   String? offset;
//   String? description;
//
//   Timezone({this.offset, this.description});
//
//   Timezone.fromJson(Map<String, dynamic> json) {
//     offset = json['offset'];
//     description = json['description'];
//   }
//
//
// }
//
// class Login {
//   String? uuid;
//   String? username;
//   String? password;
//   String? salt;
//   String? md5;
//   String? sha1;
//   String? sha256;
//
//   Login(
//       {this.uuid,
//         this.username,
//         this.password,
//         this.salt,
//         this.md5,
//         this.sha1,
//         this.sha256});
//
//   Login.fromJson(Map<String, dynamic> json) {
//     uuid = json['uuid'];
//     username = json['username'];
//     password = json['password'];
//     salt = json['salt'];
//     md5 = json['md5'];
//     sha1 = json['sha1'];
//     sha256 = json['sha256'];
//   }
//
//
// }
//
// class Dob {
//   String? date;
//   int? age;
//
//   Dob({this.date, this.age});
//
//   Dob.fromJson(Map<String, dynamic> json) {
//     date = json['date'];
//     age = json['age'];
//   }
//
//
// }
//
// class Id {
//   String? name;
//   Null? value;
//
//   Id({this.name, this.value});
//
//   Id.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     value = json['value'];
//   }
//
// }
//
// class Picture {
//   String? large;
//   String? medium;
//   String? thumbnail;
//
//   Picture({this.large, this.medium, this.thumbnail});
//
//   Picture.fromJson(Map<String, dynamic> json) {
//     large = json['large'];
//     medium = json['medium'];
//     thumbnail = json['thumbnail'];
//   }
//
//
// }
//
// class Info {
//   String? seed;
//   int? results;
//   int? page;
//   String? version;
//
//   Info({this.seed, this.results, this.page, this.version});
//
//   Info.fromJson(Map<String, dynamic> json) {
//     seed = json['seed'];
//     results = json['results'];
//     page = json['page'];
//     version = json['version'];
//   }
//
//
// }
