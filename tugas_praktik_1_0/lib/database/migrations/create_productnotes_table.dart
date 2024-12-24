import 'package:vania/vania.dart';

class CreateProductnotesTable extends Migration {
  @override
  Future<void> up() async {
    super.up();
    await createTableNotExists('productnotes', () {
      primary('note_id');
      char('note_id');
      // bigInt('prod_id', unsigned: true);
      dateTime('note_date');
      text('note_text');
      timeStamps();
      string('prod_id', length: 10);

      foreign('prod_id', 'products', 'prod_id');
    });
  }

  @override
  Future<void> down() async {
    super.down();
    await dropIfExists('productnotes');
  }
}
