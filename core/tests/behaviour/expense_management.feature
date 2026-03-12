Feature: Gestión de gastos
  Como estudiante
  Quiero registrar mis gastos
  Para controlar cuánto dinero gasto

  Scenario: Crear un gasto y comprobar cual es el total que llevo gastado
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    Then el total de dinero gastado debe ser 5 euros

  Scenario: Eliminar un gasto y comprobar cual es el total que llevo gastado
    Given un gestor con un gasto de 5 euros
    When elimino el gasto con id 1
    Then debe haber 0 gastos registrados

  Scenario: Crear y eliminar un gasto y comprobar que no he gastado dinero
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    And elimino el gasto con id 1
    Then debe haber 0 gastos registrados

  Scenario: Crear dos gastos diferentes y comprobar que el total que llevo gastado es la suma de ambos
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    And añado un gasto de 10 euros llamado Comida
    Then el total de dinero gastado debe ser 15 euros

  Scenario: Crear tres gastos diferentes que sumen 30 euros hace que el total sean 30 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Bizum
    And añado un gasto de 7 euros llamado Choripapa
    And añado un gasto de 13 euros llamado Cumpleaños
    Then el total de dinero gastado debe ser 30 euros

  Scenario: Crear tres gastos de 10, 30, 30 euros y elimino el ultimo gasto la suma son 40 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Libro
    And añado un gasto de 30 euros llamado Supermercado
    And añado un gasto de 30 euros llamado Aliexpress
    And elimino el gasto con id 3
    Then el total de dinero gastado debe ser 40 euros

  Scenario: Crear tres gastos de 10, 30, 30 euros y elimino el ultimo gasto la suma son 40 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Libro
    And añado un gasto de 30 euros llamado Supermercado
    And añado un gasto de 30 euros llamado Aliexpress
    And elimino el gasto con id 3
    Then el total de dinero gastado debe ser 40 euros
  
  Scenario: Crear 2 gastos en un gestor con un gasto de 20 euros y al eliminar el ultimo gasto por su titulo debe haber 2 gastos
    Given un gestor con un gasto de 20 euros
    When añado un gasto de 10 euros llamado Fruta
    And añado un gasto de 20 euros llamado Chocolate
    And elimino el gasto con título Chocolate
    Then debe haber 2 gastos registrados

  Scenario: Crear 2 gastos de 20, 30 euros y buscar uno de ellos por su titulo
    Given un gestor de gastos vacío
    When añado un gasto de 20 euros llamado Videojuego
    And añado un gasto de 30 euros llamado Mando
    And busco un gasto con título Mando
    Then debe haber 1 resultados con ese título

  Scenario: Crear 3 gastos de 20, 30 euros, 30 euros, actualizar la cantidad de id 1, eliminar el ultimo y comprobar el total gastado
    Given un gestor de gastos vacío
    When añado un gasto de 20 euros llamado Videojuego
    And añado un gasto de 30 euros llamado Mando
    And añado un gasto de 30 euros llamado Cargador
    And actualizo el gasto con id 1 a 70 euros
    And elimino el gasto con id 3
    Then el total de dinero gastado debe ser 100 euros
  
  Scenario: Crear 3 gastos de 20, 30 euros, 30 euros, actualizar la cantidad del primero por su titulo, eliminar el ultimo y comprobar el total gastado
    Given un gestor de gastos vacío
    When añado un gasto de 20 euros llamado Videojuego
    And añado un gasto de 30 euros llamado Mando
    And añado un gasto de 30 euros llamado Cargador
    And actualizo el gasto con título Videojuego a 80 euros
    And elimino el gasto con id 3
    Then el total de dinero gastado debe ser 110 euros
  
  