# Entrega Santiago Marque - 286903
#!/bin/bash

mostrar_menu() {
    clear 
    echo ""
    echo "============================== ENTREGA TALLER =============================="
    echo ""
    echo "1 - ¿QUIÉN SOY YO?"
    echo "2 - FECHA Y HORA"
    echo "3 - HISTORIA DE BASH"
    echo "4 - SALIR"
    echo ""
    echo "============================================================================"
    echo ""
}

volver_menu() {
    echo ""
    read -p "¿DESEA VOLVER AL MENÚ PRINCIPAL? (SI/NO): " respuesta
    echo ""

    case $respuesta in 
        Si|si|s|S|SI)
            clear
            mostrar_menu
            ;;
        No|no|n|N|NO)
            clear
            echo ""
            echo "============================================================================"
            echo ""
            echo "                           ¡HASTA LUEGO $nombre!                             "
            echo ""
            echo "============================================================================"
            echo ""
            break 
            ;;
        *)
            echo "Seleccione una opción válida."
            volver_menu
            ;;
    esac
}

while true
do
    mostrar_menu
    read -p "ELIJA UNA OPCIÓN: " opcion
    echo ""
    
    case $opcion in 
        1)
            clear
            echo ""
            echo "============================== ¿QUIÉN SOY YO? =============================="
            echo ""
            read -p "INGRESE SU NOMBRE: " nombre
            echo ""
            echo "                             USTED ES $nombre!                              " 
            echo ""
            echo "============================================================================"
            echo ""
            volver_menu
            ;;
        2)
            clear
            echo ""
            echo "=============================== FECHA Y HORA ==============================="
            echo ""
            echo "                   LA FECHA ACTUAL ES: $(date '+%Y-%m-%d')                  "
            echo ""
            echo "                   LA HORA ACTUAL ES: $(date '+%H:%M:%S')                   "
            echo ""
            echo "============================================================================"
            echo ""
            volver_menu
            ;;
        3)
            clear
            echo ""
            echo "============================= HISTORIA DE BASH ============================="
            echo ""
            echo "
BASH, O BOURNE AGAIN SHELL, ES UN INTÉRPRETE DE COMANDOS QUE PROPORCIONA UNA INTERFAZ 
DE LÍNEA DE COMANDOS PARA UNIX Y SISTEMAS SIMILARES. FUE CREADO COMO UN REEMPLAZO MEJORADO 
PARA EL SHELL BOURNE ORIGINAL (SH) Y HA EVOLUCIONADO SIGNIFICATIVAMENTE DESDE SU CREACIÓN."
            echo "
A LO LARGO DE SU HISTORIA, BASH HA EXPERIMENTADO VARIOS HITOS IMPORTANTES:
- CREADO POR BRIAN FOX EN 1989 COMO UN SHELL COMPATIBLE CON POSIX.
- BASH SE CONVIRTIÓ EN EL SHELL POR DEFECTO EN MUCHOS SISTEMAS UNIX Y LINUX.
- INCORPORACIÓN DE NUEVAS CARACTERÍSTICAS COMO LA EXPANSIÓN DE VARIABLES Y EL HISTORIAL DE COMANDOS.
- AMPLIAMENTE ADOPTADO COMO UN ESTÁNDAR DE FACTO EN SISTEMAS BASADOS EN UNIX.
- CONTINUA EVOLUCIÓN Y MANTENIMIENTO POR PARTE DE LA COMUNIDAD DE SOFTWARE LIBRE."
            echo "
HOY EN DÍA, BASH SIGUE SIENDO AMPLIAMENTE UTILIZADO DEBIDO A SU POTENCIA Y FLEXIBILIDAD. 
ES EL SHELL POR DEFECTO EN LA MAYORÍA DE LAS DISTRIBUCIONES LINUX Y SE UTILIZA EN SCRIPTS DE 
AUTOMATIZACIÓN, ADMINISTRACIÓN DE SISTEMAS Y DESARROLLO DE SOFTWARE."
            echo "
EN RESUMEN, BASH HA JUGADO UN PAPEL CRUCIAL EN LA EVOLUCIÓN DEL SOFTWARE UNIX Y LINUX, 
PROPORCIONANDO A LOS USUARIOS Y ADMINISTRADORES UNA HERRAMIENTA PODEROSA PARA INTERACTUAR 
CON SISTEMAS OPERATIVOS DE MANERA EFICIENTE Y EFECTIVA."
            echo ""
            echo "============================================================================"
            echo ""
            volver_menu
            ;;
        4)
            clear
            echo ""
            echo "============================================================================"
            echo ""
            echo "                           ¡HASTA LUEGO $nombre!                             "
            echo ""
            echo "============================================================================"
            echo ""
            break 
            ;;
        *)
            echo "Seleccione una opción válida."
            ;;
    esac
done
