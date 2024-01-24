class UserOrderInfo {
  int serviceId;
  String serviceTitle;
  int orderStatus;
  Map<String, dynamic> address;
  String technicianName;
  String technicianCellNumber;
  String transportationPrice;
  String totalPrice;
  String discount;
  String date;
  String time;

  UserOrderInfo({
    required this.serviceId,
    required this.serviceTitle,
    required this.orderStatus,
    required this.address,
    required this.technicianName,
    required this.technicianCellNumber,
    required this.transportationPrice,
    required this.totalPrice,
    required this.discount,
    required this.date,
    required this.time,
  });
}
