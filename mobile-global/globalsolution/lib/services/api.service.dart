import 'package:globalsolution/models/chipsnosaquinho_input.model.dart';

class ApiService {
  final baseApi = "https://localhost:8000";
  final Dio httpRequest = Dio();

  Future getInsumos() async {
    var response = await this.httpRequest.get(this.baseApi + '/insumo');
    var data = ChipsnosaquinhoInput.fromJson(response.data);

    return [data];
  }

  void postInsumos(ChipsnosaquinhoInput input) async {
    await this.httpRequest.post(baseApi + '/insumo', data: input.toJson());
  }

  static Dio() {}
}
