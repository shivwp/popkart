

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:popkart/features/grocery_list_creation/data/grocery_list_params.dart';
import 'package:popkart/features/grocery_list_creation/repository/gorcery_list_repository.dart';

import '../../../../home/presentation/ui/pages/bottom_navigation_screen.dart';


@Injectable()
class GroceryListCreationController extends GetxController {
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController storeController = TextEditingController();



  GroceryListRepository _groceryListRepository;


  GroceryListCreationController(this._groceryListRepository);
 @override
  void onInit() {
    super.onInit();
  }

  void createList() {
   _groceryListRepository.createList(params: GroceryListParams(
     userEmail: ["test@gmail.com"],
     time:"1:00",
     storeName: storeController.text.trim(),
     listName: nameEditingController.text.trim(),
     date: "2022-02-18",
   ),).then((value) {
     if (value.status) {
       Get.snackbar("", value.message);
       Get.offAll(BottomNavigationPage(currentIndex: 1,));
     }
   });
  }

}