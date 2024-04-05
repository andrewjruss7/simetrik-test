Feature: Visualización del historial de pedidos

    Scenario: Usuario encuentra el historial de pedidos en el menú de navegación
        Given Soy un usuario registrado
        When Realizo el Inicio de sesión
        Then Debo visualizar la opción "historial de pedidos" en el menú de navegación

    Scenario: Usuario visualiza el historial de pedidos
        Given Soy un usuario registrado
        And Estoy en el menú de navegación
        When Ingreso en el "historial de pedidos"
        Then Se deben listar todos mis pedidos anteriores
        And En el detalle del pedido se deben mostrar la siguiente información
            | fecha_del_pedido  | type   |
            | número_del_pedido | type   |
            | estado            | type   |
            | ver_detalle       | button |

    Scenario: Usuario utiliza el buscador para filtrar la lista de pedidos
        Given Soy un usuario que realiza pedidos muy seguido
        When Estoy en la "lista de pedidos"
        Then Ingreso el número del pedido en el buscador
        And Debería mostrarse el pedido correspondiente al número ingresado

    Scenario: Usuario filtra los pedidos por producto (porque no recuerda el número del pedido)
        Given Soy un usuario que está buscando un pedido
        When Ingreso el nombre del producto en el buscador
        Then Deberían mostrarse los pedidos que contengan ese producto

    Scenario: Usuario visualiza el detalle del pedido
        Given Estoy viendo la lista de mis pedidos anteriores
        When Doy click en uno de mis pedidos
        Then Debo ver el detalle más detalles del pedido
        And Se deben listar los productos de ese pedido

    Scenario: Usuario visualiza la lista de productos
        Given Estoy en la lista de los productos de un pedido anterior
        Then Se debe visualizar la siguiente información
            | nombre_del_producto | type |
            | cantidad            | type |
            | precio              | type |
            | imagen_del_producto | type |

    Scenario: Visualización del historial de pedidos para un usuario sin pedidos anteriores
        Given No he realizado un pedido anteriormente
        When Ingreso en el "historial de pedidos"
        Then Se debe mostrar un mensaje indicando que no hay pedidos anteriores

    Scenario: Lista de pedidos extensa
        Given soy un usuario que realiza pedidos cada semana
        When ingreso en el "historial de pedidos"
        Then deberían mostrarse los pedidos de manera paginada
        And debería poder hacer clic en la siguiente página
        Then deberían mostrarse un máximo de 10 pedidos por página

    Scenario: Usuario está realizando su primer pedido
        Given Usuario registrado por primera vez
        When Ingreso en el "historial de pedidos"
        Then Se debe mostrar un mensaje indicando que finalice de realizar mi pedido
