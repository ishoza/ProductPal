import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hshm/controller/home_controller.dart';
import 'package:hshm/pages/add_product_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text('Footware Admin'),
        ),
        body: ListView.builder(
            itemCount: ctrl.product.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(ctrl.product[index].name ?? ''),
                subtitle: Text((ctrl.product[index].price ?? 0).toString()),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    ctrl.deleteProduct(ctrl.product[index].id ?? '');
                  },
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(Addproductpage());
          },
          child: Icon(Icons.add),
        ),
      );
    });
  }
}
