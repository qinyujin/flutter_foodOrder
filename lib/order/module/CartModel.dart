import 'package:flutter/cupertino.dart';
import 'package:flutterapp/order/module/catalogModel.dart';

class Item{
  int count;
  Product product;
  bool isExist=false;

  Item(this.count, this.product);
}

class CartModel with ChangeNotifier{
  List<Item> _items =[];

  List<Item> get items => _items;

  addItem(Product p){
    Item item=  _items.firstWhere((i)=>i.product.name==p.name,orElse: ()=>null);
    if(item==null){
      item= Item(0, p);
      _items.add(item);
    }
    item.count++;
    notifyListeners();
    print(item.count);
    print(items.length);
  }

  removeItem(Product p){
    Item item=  _items.firstWhere((i)=>i.product==p,orElse:()=>null);
    if(item==null){
      return;
    }
    item.count--;
    if(item.count==0)_items.remove(item);
    notifyListeners();
  }

  int getItemCount(Product p){
    Item item=_items.firstWhere((i)=>i.product==p,orElse:()=>null);
    return item==null?0:item.count;
  }

  String getTotalPrices(){
    double allPrice=0;
    for(var item in _items){
      allPrice+=item.count*item.product.price;
    }
    return allPrice.toStringAsFixed(2);
  }

}