Aplicaciones similares:

-Expiration Date Scanner
-Wonder Fridge: Nevera

Detalle técnico de funcionalidades en el móvil:

Registro de alimentos
-El usuario ingresa productos con nombre, categoría, cantidad y fecha de vencimiento.
-Se almacena la información en una base de datos local (SQLite o Hive).

Organización visual
-Pantallas separadas para despensa y refrigerador.
-Listas dinámicas que muestran los productos ordenados por fecha de vencimiento.
-Filtros por categoría (lácteos, frutas, verduras, etc.).

Notificaciones de vencimiento
-Sistema de alertas que envía recordatorios días antes de la fecha de caducidad.
-Configuración de tiempo de aviso (ejemplo: 3 días antes).
-Uso de `flutter_local_notifications` para Android/iOS.


Arquitectura técnica

-Framework: Flutter (Dart).
-Gestión de estado: Provider o Riverpod para manejar datos entre pantallas.
-Base de datos local: SQLite (con `sqflite`) o Hive para almacenamiento rápido.
-Notificaciones: `flutter_local_notifications` para recordatorios.
-UI/UX: Material Design adaptado a una interfaz simple y amigable.
-Integración con servicios en la nube (Firebase) para sincronización entre dispositivos.


