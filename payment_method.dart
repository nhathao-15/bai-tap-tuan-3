// ABSTRACTION (Trừu tượng)
abstract class PaymentBase {
  final String name;
  final String logo;

  PaymentBase(this.name, this.logo);

  // POLYMORPHISM (Đa hình)
  String pay();
}

// INHERITANCE (Kế thừa)
class Paypal extends PaymentBase {
  Paypal() : super("PayPal", "assets/paypal.png");

  @override
  String pay() => "Thanh toán bằng PayPal";
}

class GooglePay extends PaymentBase {
  GooglePay() : super("Google Pay", "assets/gpay.png");

  @override
  String pay() => "Thanh toán bằng Google Pay";
}

class ApplePay extends PaymentBase {
  ApplePay() : super("Apple Pay", "assets/apple.png");

  @override
  String pay() => "Thanh toán bằng Apple Pay";
}
