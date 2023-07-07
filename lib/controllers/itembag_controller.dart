import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../module/product_module.dart';

List<ProductModel> itemBag = [];

class ItemBagNotifier extends StateNotifier<List<ProductModel>> {
  ItemBagNotifier() : super(itemBag);

// add new item
  void addNewItemBag(ProductModel productModel) {
    state = [...state, productModel];
  }

  // remove item
  void removeItem(int pid) {
    state = [
      for (final product in state)
        if (product.pid != pid) product,
    ];
  }
}

final itemBagProvider =
    StateNotifierProvider<ItemBagNotifier, List<ProductModel>>((ref) {
  return ItemBagNotifier();
});

final priceCalcProvider = StateProvider<double>((ref) {
  final itemBag = ref.watch(itemBagProvider);
  double sum = 0;
  for (var element in itemBag) {
    sum += element.price;
  }
  return sum;
});
