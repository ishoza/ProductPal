import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hshm/controller/home_controller.dart';
import 'package:hshm/widgets/drop_down_btn.dart';

class Addproductpage extends StatelessWidget {
  const Addproductpage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
          appBar: AppBar(
            title: Text('Add Product'),
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Add New Product',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.indigoAccent,
                        fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    controller: ctrl.productNameCtrl,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        label: Text('Product Name'),
                        hintText: 'Enter Your Product Name'),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: ctrl.productDescriptionCtrl,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        label: Text('Product Description'),
                        hintText: 'Enter Your Product Description'),
                    maxLines: 4,
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: ctrl.productImgCtrl,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        label: Text('Image URL'),
                        hintText: 'Enter Image URL'),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: ctrl.productPriceCtrl,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        label: Text('Price'),
                        hintText: 'Enter Price'),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                          child: DropdownBtn(
                        items: [
                          'Boots',
                          'Shoes',
                          'Beach Shoes',
                          'High heels',
                          'Slippers',
                          'Sandals',
                          'Sneakers'
                        ],
                        selectedItemText: ctrl.category,
                        onSelected: (selectedValue) {
                          ctrl.category = selectedValue ?? 'general';
                          ctrl.update();
                        },
                      )),
                      Flexible(
                          child: DropdownBtn(
                        items: [
                          'Puma',
                          'Sketchers',
                          'Adidas',
                          'Clarks',
                          'Nike',
                          'Reebok',
                          'Crocs',
                          'Timberland',
                          'Birkenstock',
                          'Aldo'
                        ],
                        selectedItemText: ctrl.brand,
                        onSelected: (selectedValue) {
                          ctrl.brand = selectedValue ?? 'un branded';
                          ctrl.update();
                        },
                      )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('Offer Product ?'),
                  DropdownBtn(
                    items: ['True', 'False'],
                    selectedItemText: ctrl.offer.toString(),
                    onSelected: (selectedValue) {
                      ctrl.offer =
                          bool.tryParse(selectedValue ?? 'false') ?? false;
                      ctrl.update();
                    },
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigoAccent,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        ctrl.addproduct();
                      },
                      child: Text('Add Product'))
                ],
              ),
            ),
          ));
    });
  }
}
