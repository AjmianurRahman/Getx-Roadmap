import 'package:getx_roadmap/MVVM/data/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  //* Constructor
  ApiResponse(this.status, this.data, this.message);


  //* Methods
  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed(this.data) : status = Status.COMPLETED;
  ApiResponse.error(this.message) : status = Status.ERROR;


  @override
  String toString() {
    return 'Status: $status \nMessage: $message \nData: $data';
  }
}
