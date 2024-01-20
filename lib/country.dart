

// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Example> exampleFromJson(String str) => List<Example>.from(json.decode(str).map((x)=> Example.fromJson(x)));

String exampleToJson(Example data) => json.encode(data.toJson());

class Example {
    int? userId;
    int? id;
    String? title;
    String? body;

    Example({
        this.userId,
        this.id,
        this.title,
        this.body,
    });

    factory Example.fromJson(Map<String, dynamic> json) => Example(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}

// List<Country> countryFromJson(String str) => List<Country>.from(json.decode(str).map((x)=>Country.fromJson(x)));

// String countryToJson(Country data) => json.encode(data.toJson());

// class Country {
//     Name? name;
//     List<String>? capital;
//     List<String>? continents;
//     Flags? flags;

//     Country({
//         this.name,
//         this.capital,
//         this.continents,
//         this.flags,
//     });

//     factory Country.fromJson(Map<String, dynamic> json) => Country(
//         name: json["name"] == null ? null : Name.fromJson(json["name"]),
//         capital: json["capital"] == null ? [] : List<String>.from(json["capital"]!.map((x) => x)),
//         continents: json["continents"] == null ? [] : List<String>.from(json["continents"]!.map((x) => x)),
//         flags: json["flags"] == null ? null : Flags.fromJson(json["flags"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "name": name?.toJson(),
//         "capital": capital == null ? [] : List<dynamic>.from(capital!.map((x) => x)),
//         "continents": continents == null ? [] : List<dynamic>.from(continents!.map((x) => x)),
//         "flags": flags?.toJson(),
//     };
// }

// class Flags {
//     String? png;
//     String? svg;
//     String? alt;

//     Flags({
//         this.png,
//         this.svg,
//         this.alt,
//     });

//     factory Flags.fromJson(Map<String, dynamic> json) => Flags(
//         png: json["png"],
//         svg: json["svg"],
//         alt: json["alt"],
//     );

//     Map<String, dynamic> toJson() => {
//         "png": png,
//         "svg": svg,
//         "alt": alt,
//     };
// }

// class Name {
//     String? common;
//     String? official;

//     Name({
//         this.common,
//         this.official,
//     });

//     factory Name.fromJson(Map<String, dynamic> json) => Name(
//         common: json["common"],
//         official: json["official"],
//     );

//     Map<String, dynamic> toJson() => {
//         "common": common,
//         "official": official,
//     };
// }
