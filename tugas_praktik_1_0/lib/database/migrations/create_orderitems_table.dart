import 'package:vania/vania.dart';

class CreateOrderitemsTable extends Migration {
  @override
  Future<void> up() async {
    super.up();
    await createTableNotExists('orderitems', () {
      primary('order_item');
      integer('order_item', length: 11);
      // bigInt('order_num', unsigned: true);
      // bigInt('prod_id', unsigned: true);
      integer('quantity');
      integer('size');
      timeStamps();
      integer('order_num', length: 11);
      string('prod_id', length: 10);


      foreign('order_num', 'orders', 'order_num');
      foreign('prod_id', 'products', 'prod_id');
    });
  }

  @override
  Future<void> down() async {
    super.down();
    await dropIfExists('orderitems');
  }
}
