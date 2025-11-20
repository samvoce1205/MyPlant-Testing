Feature: Diagnóstico de Enfermedades por IA
  Como usuario, quiero saber qué le pasa a mi planta enferma.

  @US15 @Core
  Scenario: Diagnóstico positivo de hongo
    Given que el usuario sube una foto de una hoja con manchas amarillas
    When la IA procesa la imagen
    Then el sistema retorna el diagnóstico "Hongo por exceso de riego"
    And muestra un botón para ver la "Guía de Tratamiento".

  @US15
  Scenario: Diagnóstico no concluyente
    Given que el usuario sube una foto borrosa
    When la IA procesa la imagen
    Then el sistema muestra el mensaje "Imagen no clara, intente de nuevo".