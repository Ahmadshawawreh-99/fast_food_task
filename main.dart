void main() {
  List<Map<String, dynamic>> orders = [
    {"id": 1, "status": "ready", "item": "burger"},
    {"id": 2, "status": "canceled", "item": "burger"},
    {"id": 3, "status": "vip", "item": "burger"},
    {"id": 4, "status": "ready", "item": "pizza"},
    {"id": 5, "status": "canceled", "item": "pizza"},
    {"id": 6, "status": "vip", "item": "pizza"},
    {"id": 7, "status": "ready", "item": "fries"},
    {"id": 8, "status": "canceled", "item": "fries"},
    {"id": 9, "status": "vip", "item": "fries"},
    {"id": 10, "status": "ready", "item": "mansaf"},
    {"id": 11, "status": "canceled", "item": "mansaf"},
    {"id": 12, "status": "vip", "item": "mansaf"},
  ];

  for (var order in orders) {
    if (order["status"] == "canceled") {
      continue;
    }

    if (order["status"] == "vip") {
      print("VIP order detected! Prioritizing order #${order["id"]}.");
      break;
    }

    if (order["id"] == 4) {
      print("Order #4 is taking too long! Alert the kitchen!");
    }

    print("Processing Order #${order["id"]}:");

    switch (order["item"]) {
      case "burger":
        print("Prepare burger will take 15min .");
        break;
      case "pizza":
        print("Prepare pizza will take 30min.");
        break;
      case "fries":
        print("Prepare fries will take 10min.");
        break;
      case "mansaf":
        print("Prepare mansaf will take 90min.");
        break;
      default:
        print("Unknown item: ${order["item"]}.");
    }
  }
}
