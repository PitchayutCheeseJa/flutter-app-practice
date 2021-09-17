import 'package:app/models/listing_model.dart';
import 'package:get/state_manager.dart';

class HomeController {
  RxList<ListingModel> listings = <ListingModel>[].obs;
  getListings() {
    listings.addAll(List.filled(10, ListingModel("Title", "Detail")));
  }
}
