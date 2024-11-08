import 'package:flutter/material.dart';

class ProductEntryFormPage extends StatefulWidget {
  const ProductEntryFormPage({super.key});

  @override
  State<ProductEntryFormPage> createState() => _ProductEntryFormPageState();
}

class _ProductEntryFormPageState extends State<ProductEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _price = 0;
  String _description = "";
  String _shade = "";
  int _stockQuantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Produk Baru'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Input Name
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) => setState(() => _name = value),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Name cannot be empty!";
                    }
                    if (value.trim().split(RegExp(r'\s+')).length > 5) {
                      return "Name must not exceed 5 words!";
                    }
                    return null;
                  },
                ),
              ),
              // Input Price
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Price",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) => setState(() => _price = int.tryParse(value) ?? 0),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Price cannot be empty!";
                    }
                    if (int.tryParse(value) == null || int.tryParse(value)! < 0) {
                      return "Price must be a positive integer!";
                    }
                    return null;
                  },
                ),
              ),
              // Input Description
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Description",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) => setState(() => _description = value),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Description cannot be empty!";
                    }
                    if (value.trim().split(RegExp(r'\s+')).length > 30) {
                      return "Description must not exceed 30 words!";
                    }
                    return null;
                  },
                ),
              ),
              // Input Shade
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Shade",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) => setState(() => _shade = value),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Shade cannot be empty!";
                    }
                    return null;
                  },
                ),
              ),
              // Input Stock Quantity
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Stock Quantity",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) => setState(() => _stockQuantity = int.tryParse(value) ?? 0),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Stock Quantity cannot be empty!";
                    }
                    if (int.tryParse(value) == null || int.tryParse(value)! < 0) {
                      return "Stock Quantity must be a positive integer!";
                    }
                    return null;
                  },
                ),
              ),
              // Save Button
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary, // Deep Purple
                      foregroundColor: Colors.white, // White text
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Produk Berhasil Ditambahkan'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Name: $_name'),
                                Text('Price: $_price'),
                                Text('Description: $_description'),
                                Text('Shade: $_shade'),
                                Text('Stock quantity: $_stockQuantity'),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  _formKey.currentState!.reset();
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    child: const Text('Save'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
