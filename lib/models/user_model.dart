class TaskModel {
  String? id;
  String title;
  String description;
  String date;
  String category;
  bool status;

  // Constructor de la clase, algunos campos son obligatorios y otros opcionales.
  TaskModel({
    this.id, // El campo 'id' es opcional.
    required this.title, // 'title' es obligatorio.
    required this.description, // 'description' es obligatorio.
    required this.date, // 'date' es obligatorio.
    required this.category, // 'category' es obligatorio.
    required this.status, // 'status' es obligatorio.
  });

  // Método de fábrica que convierte un objeto JSON en una instancia de TaskModel.
  factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel(
        id: json["id"] ?? "", // Si 'id' no está presente, se asigna una cadena vacía.
        title: json["title"], // Obtiene el 'title' del JSON.
        description: json["description"], // Obtiene la 'description' del JSON.
        date: json["date"], // Obtiene la 'date' del JSON.
        category: json["category"], // Obtiene la 'category' del JSON.
        status: json["status"], // Obtiene el 'status' del JSON.
      );

  // Método que convierte una instancia de TaskModel a un mapa de clave-valor (JSON).
  Map<String, dynamic> toJson() => {
        "title": title, // Asigna el título.
        "description": description, // Asigna la descripción.
        "date": date, // Asigna la fecha.
        "category": category, // Asigna la categoría.
        "status": status, // Asigna el estado de la tarea.
      };
}
