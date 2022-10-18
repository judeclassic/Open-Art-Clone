// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class NftCardModel {
  final String nftImage;
  final String nftName;
  final String userIdentity;
  final String userImage;
  final String userName;
  final double price;
  final double? currentBid;
  final double? highestBid;

  NftCardModel({
    required this.nftImage,
    required this.nftName,
    required this.userIdentity,
    required this.userImage,
    required this.userName,
    required this.price,
    this.currentBid,
    this.highestBid
  });

  NftCardModel copyWith({
    String? nftImage,
    String? nftName,
    String? userIdentity,
    String? userImage,
    String? userName,
    double? price,
    double? currentBid,
    double? highestBid,
  }) {
    return NftCardModel(
      nftImage: nftImage ?? this.nftImage,
      nftName: nftName ?? this.nftName,
      userIdentity: userIdentity ?? this.userIdentity,
      userImage: userImage ?? this.userImage,
      userName: userName ?? this.userName,
      price: price ?? this.price,
      currentBid: currentBid ?? this.currentBid,
      highestBid: highestBid ?? this.highestBid,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nftImage': nftImage,
      'nftName': nftName,
      'userIdentity': userIdentity,
      'userImage': userImage,
      'userName': userName,
      'price': price,
      'currentBid': currentBid,
      'highestBid': highestBid,
    };
  }

  factory NftCardModel.fromMap(Map<String, dynamic> map) {
    return NftCardModel(
      nftImage: map['nftImage'] as String,
      nftName: map['nftName'] as String,
      userIdentity: map['userIdentity'] as String,
      userImage: map['userImage'] as String,
      userName: map['userName'] as String,
      price: map['price'] as double,
      currentBid: map['currentBid'] != null ? map['currentBid'] as double : null,
      highestBid: map['highestBid'] != null ? map['highestBid'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory NftCardModel.fromJson(String source) =>
      NftCardModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NftCardModel(nftImage: $nftImage, nftName: $nftName, userIdentity: $userIdentity, userImage: $userImage, userName: $userName, price: $price, currentBid: $currentBid, highestBid: $highestBid)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is NftCardModel &&
      other.nftImage == nftImage &&
      other.nftName == nftName &&
      other.userIdentity == userIdentity &&
      other.userImage == userImage &&
      other.userName == userName &&
      other.price == price &&
      other.currentBid == currentBid &&
      other.highestBid == highestBid;
  }

  @override
  int get hashCode {
    return nftImage.hashCode ^
      nftName.hashCode ^
      userIdentity.hashCode ^
      userImage.hashCode ^
      userName.hashCode ^
      price.hashCode ^
      currentBid.hashCode ^
      highestBid.hashCode;
  }
}
