import 'package:flutter/material.dart';

class ProductoDialog extends StatefulWidget {
  final String? nombreInicial;
  final String? fechaInicial;

  const ProductoDialog({super.key, this.nombreInicial, this.fechaInicial});

  @override
  State<ProductoDialog> createState() => _ProductoDialogState();
}

class _ProductoDialogState extends State<ProductoDialog> {
  late TextEditingController _nombreCtrl;
  late TextEditingController _fechaCtrl;

  @override
  void initState() {
    super.initState();
    _nombreCtrl = TextEditingController(text: widget.nombreInicial);
    _fechaCtrl = TextEditingController(text: widget.fechaInicial);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.nombreInicial == null ? 'Nuevo Producto' : 'Editar'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _nombreCtrl,
            decoration: const InputDecoration(labelText: 'Nombre'),
          ),
          TextField(
            controller: _fechaCtrl,
            decoration: const InputDecoration(labelText: 'Fecha (ej: 20 May)'),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 0, 0, 0),
          ),
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.pop(context, {
            'nombre': _nombreCtrl.text,
            'fecha': _fechaCtrl.text,
          }),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 22, 20, 36),
          ),
          child: const Text('Guardar'),
        ),
      ],
    );
  }
}
