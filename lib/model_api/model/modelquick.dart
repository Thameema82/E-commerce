// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';
// CartModel cartModelFromJson(String str) => CartModel.fromJson(json.decode(str));

// String cartModelToJson(CartModel data) => json.encode(data.toJson());
Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        required this.productname,
        required this.productid,
        required this.price,
        required this.status,
        required this.img,
    });

    dynamic productname;
    dynamic productid;
    dynamic price;
    dynamic status;
    dynamic img;

    factory Welcome.fromJson(dynamic json) => Welcome(
        productname: json["productname"] as String,
        productid: json["productid"] as String,
        price: json["price" ] as String,
        status: json["status"]as bool,
        img: json["img"] as String,
    );

    Map<String, dynamic> toJson() => <String, dynamic>{
        "productname": productname,
        "productid": productid,
        "price": price,
        "status": status,
        "img": img,
    };
}

