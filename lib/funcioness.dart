// Lista de ventas por producto (7 días de la semana)
List<List<double>> ventasProductos = [
  [05.0, 90.0, 78.0, 12.5, 50.5, 90.0, 85.0],
  [92.0, 88.0, 76.0, 12.5, 50.5, 90.0, 85.0],
  [80.0, 85.0, 95.0, 12.5, 50.5, 90.0, 85.0],
];

// Variables para exportar
int estudianteConNotaMasAlta = 0;
double notaMasAltaGeneral = 0.0;

// Calcula la ganancia total de un producto
double calcularGananciaTotal(List<double> ventas) {
  double suma = 0;
  for (double venta in ventas) {
    suma += venta;
  }
  return suma;
}

// Encuentra la venta más alta de un producto
double encontrarVentaMasAlta(List<double> ventas) {
  double ventaMasAlta = ventas[0];
  for (double venta in ventas) {
    if (venta > ventaMasAlta) {
      ventaMasAlta = venta;
    }
  }
  return ventaMasAlta;
}

// Analiza las ventas y encuentra el producto más vendido
void analizarVentas() {
  notaMasAltaGeneral = encontrarVentaMasAlta(ventasProductos[0]);
  estudianteConNotaMasAlta = 0;

  for (int i = 0; i < ventasProductos.length; i++) {
    double gananciaTotal = calcularGananciaTotal(ventasProductos[i]);
    double ventaMasAlta = encontrarVentaMasAlta(ventasProductos[i]);

    print("Producto ${i + 1}:");
    print("   Ganancia total del producto: $gananciaTotal");
    print("   Venta más alta en la semana: $ventaMasAlta");

    if (ventaMasAlta > notaMasAltaGeneral) {
      notaMasAltaGeneral = ventaMasAlta;
      estudianteConNotaMasAlta = i;
    }
  }
}
