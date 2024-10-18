class UserModel {
  String? id;
  String fullName;
  String email;

  // Constructor de la clase, con 'id' opcional y 'fullName' y 'email' obligatorios.
  UserModel({
    this.id, // 'id' es opcional.
    required this.fullName, // 'fullName' es obligatorio.
    required this.email, // 'email' es obligatorio.
  });

  // Método que convierte una instancia de UserModel a un mapa de clave-valor (JSON).
  Map<String, dynamic> toJson() => {
        "id": id, // Asigna el valor de 'id'.
        "fullName": fullName, // Asigna el nombre completo.
        "email": email, // Asigna el email.
      };
}
