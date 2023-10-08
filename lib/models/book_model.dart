import 'package:json_annotation/json_annotation.dart';

part 'book_model.g.dart';

@JsonSerializable()
class BookModel {
  @JsonKey(name: "kind")
  final String? kind;
  @JsonKey(name: "totalItems")
  final int? totalItems;
  @JsonKey(name: "items")
  final List<Item>? items;

  BookModel({
    required this.kind,
    required this.totalItems,
    required this.items,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookModelToJson(this);
}

@JsonSerializable()
class Item {
  @JsonKey(name: "kind")
  final String? kind;
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "etag")
  final String? etag;
  @JsonKey(name: "selfLink")
  final String? selfLink;
  @JsonKey(name: "volumeInfo")
  final VolumeInfo? volumeInfo;
  @JsonKey(name: "saleInfo")
  final SaleInfo? saleInfo;
  @JsonKey(name: "accessInfo")
  final AccessInfo? accessInfo;
  @JsonKey(name: "searchInfo")
  final SearchInfo? searchInfo;

  Item({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
    required this.searchInfo,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}

@JsonSerializable()
class AccessInfo {
  @JsonKey(name: "country")
  final String? country;
  @JsonKey(name: "viewability")
  final String? viewability;
  @JsonKey(name: "embeddable")
  final bool? embeddable;
  @JsonKey(name: "publicDomain")
  final bool? publicDomain;
  @JsonKey(name: "textToSpeechPermission")
  final String? textToSpeechPermission;
  @JsonKey(name: "epub")
  final Epub? epub;
  @JsonKey(name: "pdf")
  final Epub? pdf;
  @JsonKey(name: "webReaderLink")
  final String? webReaderLink;
  @JsonKey(name: "accessViewStatus")
  final String? accessViewStatus;
  @JsonKey(name: "quoteSharingAllowed")
  final bool? quoteSharingAllowed;

  AccessInfo({
    required this.country,
    required this.viewability,
    required this.embeddable,
    required this.publicDomain,
    required this.textToSpeechPermission,
    required this.epub,
    required this.pdf,
    required this.webReaderLink,
    required this.accessViewStatus,
    required this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) =>
      _$AccessInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AccessInfoToJson(this);
}

@JsonSerializable()
class Epub {
  @JsonKey(name: "isAvailable")
  final bool? isAvailable;
  @JsonKey(name: "acsTokenLink")
  final String? acsTokenLink;

  Epub({
    required this.isAvailable,
    required this.acsTokenLink,
  });

  factory Epub.fromJson(Map<String, dynamic> json) => _$EpubFromJson(json);

  Map<String, dynamic> toJson() => _$EpubToJson(this);
}

@JsonSerializable()
class SaleInfo {
  @JsonKey(name: "country")
  final String? country;
  @JsonKey(name: "saleability")
  final String? saleability;
  @JsonKey(name: "isEbook")
  final bool? isEbook;
  @JsonKey(name: "listPrice")
  final SaleInfoListPrice? listPrice;
  @JsonKey(name: "retailPrice")
  final SaleInfoListPrice? retailPrice;
  @JsonKey(name: "buyLink")
  final String? buyLink;
  @JsonKey(name: "offers")
  final List<Offer>? offers;

  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
    required this.listPrice,
    required this.retailPrice,
    required this.buyLink,
    required this.offers,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SaleInfoToJson(this);
}

@JsonSerializable()
class SaleInfoListPrice {
  @JsonKey(name: "amount")
  final double? amount;
  @JsonKey(name: "currencyCode")
  final String? currencyCode;

  SaleInfoListPrice({
    required this.amount,
    required this.currencyCode,
  });

  factory SaleInfoListPrice.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoListPriceFromJson(json);

  Map<String, dynamic> toJson() => _$SaleInfoListPriceToJson(this);
}

@JsonSerializable()
class Offer {
  @JsonKey(name: "finskyOfferType")
  final int? finskyOfferType;
  @JsonKey(name: "listPrice")
  final OfferListPrice? listPrice;
  @JsonKey(name: "retailPrice")
  final OfferListPrice? retailPrice;

  Offer({
    required this.finskyOfferType,
    required this.listPrice,
    required this.retailPrice,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);

  Map<String, dynamic> toJson() => _$OfferToJson(this);
}

@JsonSerializable()
class OfferListPrice {
  @JsonKey(name: "amountInMicros")
  final int? amountInMicros;
  @JsonKey(name: "currencyCode")
  final String? currencyCode;

  OfferListPrice({
    required this.amountInMicros,
    required this.currencyCode,
  });

  factory OfferListPrice.fromJson(Map<String, dynamic> json) =>
      _$OfferListPriceFromJson(json);

  Map<String, dynamic> toJson() => _$OfferListPriceToJson(this);
}

@JsonSerializable()
class SearchInfo {
  @JsonKey(name: "textSnippet")
  final String? textSnippet;

  SearchInfo({
    required this.textSnippet,
  });

  factory SearchInfo.fromJson(Map<String, dynamic> json) =>
      _$SearchInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SearchInfoToJson(this);
}

@JsonSerializable()
class VolumeInfo {
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "subtitle")
  final String? subtitle;
  @JsonKey(name: "authors")
  final List<String>? authors;
  @JsonKey(name: "publisher")
  final String? publisher;
  @JsonKey(name: "publishedDate")
  final String? publishedDate;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "industryIdentifiers")
  final List<IndustryIdentifier>? industryIdentifiers;
  @JsonKey(name: "readingModes")
  final ReadingModes? readingModes;
  @JsonKey(name: "pageCount")
  final int? pageCount;
  @JsonKey(name: "printType")
  final String? printType;
  @JsonKey(name: "categories")
  final List<String>? categories;
  @JsonKey(name: "averageRating")
  final double? averageRating;
  @JsonKey(name: "ratingsCount")
  final int? ratingsCount;
  @JsonKey(name: "maturityRating")
  final String? maturityRating;
  @JsonKey(name: "allowAnonLogging")
  final bool? allowAnonLogging;
  @JsonKey(name: "contentVersion")
  final String? contentVersion;
  @JsonKey(name: "panelizationSummary")
  final PanelizationSummary? panelizationSummary;
  @JsonKey(name: "imageLinks")
  final ImageLinks? imageLinks;
  @JsonKey(name: "language")
  final String? language;
  @JsonKey(name: "previewLink")
  final String? previewLink;
  @JsonKey(name: "infoLink")
  final String? infoLink;
  @JsonKey(name: "canonicalVolumeLink")
  final String? canonicalVolumeLink;

  VolumeInfo({
    required this.title,
    required this.subtitle,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.averageRating,
    required this.ratingsCount,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VolumeInfoToJson(this);
}

@JsonSerializable()
class ImageLinks {
  @JsonKey(name: "smallThumbnail")
  final String? smallThumbnail;
  @JsonKey(name: "thumbnail")
  final String? thumbnail;

  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);

  Map<String, dynamic> toJson() => _$ImageLinksToJson(this);
}

@JsonSerializable()
class IndustryIdentifier {
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "identifier")
  final String? identifier;

  IndustryIdentifier({
    required this.type,
    required this.identifier,
  });

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) =>
      _$IndustryIdentifierFromJson(json);

  Map<String, dynamic> toJson() => _$IndustryIdentifierToJson(this);
}

@JsonSerializable()
class PanelizationSummary {
  @JsonKey(name: "containsEpubBubbles")
  final bool? containsEpubBubbles;
  @JsonKey(name: "containsImageBubbles")
  final bool? containsImageBubbles;

  PanelizationSummary({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) =>
      _$PanelizationSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$PanelizationSummaryToJson(this);
}

@JsonSerializable()
class ReadingModes {
  @JsonKey(name: "text")
  final bool? text;
  @JsonKey(name: "image")
  final bool? image;

  ReadingModes({
    required this.text,
    required this.image,
  });

  factory ReadingModes.fromJson(Map<String, dynamic> json) =>
      _$ReadingModesFromJson(json);

  Map<String, dynamic> toJson() => _$ReadingModesToJson(this);
}
