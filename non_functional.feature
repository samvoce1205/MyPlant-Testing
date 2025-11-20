Feature: Calidad del Sistema
  Validación de rendimiento, seguridad y usabilidad.

  # Seguridad (US-NF05)
  Scenario: Encriptación de contraseñas
    Given un nuevo usuario se registra
    When ingresa la contraseña "MiPlanta123"
    Then el sistema la guarda en base de datos como Hash encriptado (bcrypt).

  # Rendimiento (US-NF01)
  Scenario: Tiempo de carga de pantalla principal
    Given el usuario tiene conexión 4G estable
    When abre la aplicación
    Then la pantalla "Mi Jardín" debe ser interactiva en menos de 3 segundos.

  # Fiabilidad (US-NF04)
  Scenario: Acceso Offline
    Given el usuario no tiene internet (Modo Avión)
    When ingresa a "Mi Jardín"
    Then debe ver la lista de sus plantas guardadas previamente en caché.

  # Usabilidad (US-NF02)
  Scenario: Modo Oscuro Automático
    Given el sistema operativo del móvil está en "Dark Mode"
    When se inicia la app MyPlant
    Then la interfaz debe mostrarse con la paleta de colores oscuros automáticamente.