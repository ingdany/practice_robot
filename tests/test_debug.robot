***Settings***
Library    DebugLibrary

***Variables***
${nombre}    Juan
${edad}    30

***Test Cases***
Mi Primer Caso de Prueba con DebugLibrary
    Log    Hola, ${nombre}!    
    Log    Tienes ${edad} años.
    # Log To Console    Nombre: ${nombre}
    # Log To Console    Edad: ${edad}
    Debug
    Should Be Equal    ${edad}    30
    Debug
    Log    La prueba ha terminado.