class TodoModel {
  int? code;
  bool? success;
  int? timestamp;
  String? message;
  List<Items>? items;
  Meta? meta;

  TodoModel(
      {this.code,
      this.success,
      this.timestamp,
      this.message,
      this.items,
      this.meta});

  TodoModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    success = json['success'];
    timestamp = json['timestamp'];
    message = json['message'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['success'] = success;
    data['timestamp'] = timestamp;
    data['message'] = message;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    return data;
  }
}

class Items {
  String? sId;
  String? title;
  String? description;
  bool? isCompleted;
  String? createdAt;
  String? updatedAt;

  Items(
      {this.sId,
      this.title,
      this.description,
      this.isCompleted,
      this.createdAt,
      this.updatedAt});

  Items.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    description = json['description'];
    isCompleted = json['is_completed'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['title'] = title;
    data['description'] = description;
    data['is_completed'] = isCompleted;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Meta {
  int? totalItems;
  int? totalPages;
  int? perPageItem;
  int? currentPage;
  int? pageSize;
  bool? hasMorePage;

  Meta(
      {this.totalItems,
      this.totalPages,
      this.perPageItem,
      this.currentPage,
      this.pageSize,
      this.hasMorePage});

  Meta.fromJson(Map<String, dynamic> json) {
    totalItems = json['total_items'];
    totalPages = json['total_pages'];
    perPageItem = json['per_page_item'];
    currentPage = json['current_page'];
    pageSize = json['page_size'];
    hasMorePage = json['has_more_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_items'] = totalItems;
    data['total_pages'] = totalPages;
    data['per_page_item'] = perPageItem;
    data['current_page'] = currentPage;
    data['page_size'] = pageSize;
    data['has_more_page'] = hasMorePage;
    return data;
  }
}
