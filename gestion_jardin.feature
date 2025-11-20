Feature: Gestión de Mi Jardín
  Como usuario, quiero organizar mis plantas para llevar un control.

  @US05 @Core
  Scenario: Identificación exitosa de una planta por foto
    Given que el usuario "Luzmila" está en la pantalla "Añadir Planta"
    When toma una foto nítida de su planta y confirma la imagen
    Then el sistema muestra "Monstera Deliciosa" con 95% de coincidencia
    And habilita el botón "Agregar a Mi Jardín".

  @US06
  Scenario: Búsqueda manual de planta
    Given que el usuario selecciona "Buscar manualmente"
    When escribe "Helecho" en el buscador
    Then el sistema lista "Helecho de Boston" y "Helecho Espada".