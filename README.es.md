🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

# Team Ajan

## Para qué sirve

Hace que tu trabajo (código, un cálculo de ingeniería, un proyecto de arquitectura, un diseño de producto / interfaz, una tarea, una investigación, un texto, un plan) no lo revise un solo par de ojos, sino "equipos" separados que se controlan entre sí; si quieres, hace que lo corrijan hasta que no quede ningún error. Es un paquete de complementos para Claude Code. Contiene dos tipos de archivos: **agentes** (instrucciones que describen cómo trabaja un equipo) y **habilidades** (instrucciones que describen cómo Claude dirige a los equipos).

## Instalación

1. Si recibiste el paquete como archivo comprimido (zip), primero extráelo en una carpeta.
2. Haz doble clic en el archivo `kur.cmd`. Debes ver "Kuruldu" en la pantalla.
3. Cierra Claude y vuelve a abrirlo.

`kur.cmd` solo copia los archivos de agentes y las tres carpetas de habilidades a la carpeta de usuario de Claude (`%USERPROFILE%\.claude`); sobrescribe los archivos antiguos con el mismo nombre, así que no pongas tus propios archivos en esas tres carpetas ni con esos nombres. Muestra la carpeta de destino en la pantalla. Cuando salga una versión nueva, basta con volver a ejecutar el mismo archivo. Las otras formas de instalación están al final.

## Tu primera frase después de instalar

Abre Claude en la carpeta donde está el archivo que se va a revisar y escribe una de las siguientes frases. La frase debe contener la palabra **"takım"** (equipo); si no la contiene, los equipos no se activan.

| Qué quieres | La frase que escribes |
|---|---|
| Que solo revisen, sin tocar mi archivo | `haz que los equipos revisen informe.md, sin tocarlo` |
| Que revisen y corrijan | `que los equipos corrijan calculo.md hasta que no quede ningún error` |
| Que se centren en una sola pregunta | `equipos, mirad solo esto: ¿por qué esta prueba falla de vez en cuando?` |
| La opinión de un solo equipo | `que el equipo rojo ataque esta tarea` · `míralo con los ojos del equipo amarillo` · `que el equipo turquesa busque desperdicio` |
| Que tengan en cuenta también mi nota | `pásales esto a los equipos como nota: …` |
| En qué punto están | `¿cómo van los equipos?` |
| Que sigan donde lo dejaron · que paren | `que los equipos continúen` · `detén a los equipos` |

Los activadores de las habilidades están escritos en turco; las peticiones que contienen "takım" / "takımlar" los activan de forma fiable; las peticiones en otros idiomas pueden funcionar, pero no se han probado.

Claude primero da un breve resumen (qué entendió, qué supuso, cuántos equipos trabajarán durante como máximo cuántas rondas) y empieza. Mientras trabaja puede pedir permiso para escribir archivos y ejecutar comandos; aún no se ha medido cuántas veces lo pedirá. Puedes aceptar los permisos de escritura en la carpeta `takim`; si no estás seguro de un permiso de comando, recházalo y esa comprobación se informará como "no se pudo comprobar".

## Qué le pasa a tu archivo

- **Si dices "revisar", tu archivo no cambia.** A los equipos se les indica que escriban informes y registros solo en su propia carpeta `takim` ("solo revisión"); aun así, se guarda una copia de tu archivo en la carpeta `takim\yedek\`.
- **Si dices "corregir",** Claude primero guarda una copia de tu archivo en la carpeta `takim\yedek\` y te dice "tu archivo va a cambiar, la copia de seguridad está aquí". Solo el equipo Azul escribe en tu archivo.
- Si tu petición es ambigua, Claude no toca tu archivo.
- No se ha comprobado que los equipos puedan leer archivos Word o PDF; Claude lo dice al principio y trabaja sobre una copia convertida a texto.

## Cuándo termina

Si dijiste "revisar", termina tras una sola ronda de revisión: Claude explica lo que se encontró y pregunta si debe corregirse. Si dijiste "corregir", termina cuando los errores encontrados se han corregido, las correcciones se han vuelto a comprobar y se ha dejado escrito cómo se cerrará cada cosa que quedó a medias. También puede detenerse antes de terminar (por ejemplo, al llegar al número máximo de rondas, el "tope de rondas", o cuando surge algo que debes decidir tú); cuando se detiene, Claude explica el motivo y pregunta. La lista de casos de detención está en la sección 8 de las reglas.

No se ha medido cuánto dura una ronda; cuantos más equipos, más aumentan el tiempo y el consumo.

## Equipos

| Equipo | Agente | Qué hace |
|---|---|---|
| 🔵 Azul | `mavi-yazar` | Escribe la obra, lleva cada objeción a una conclusión |
| 🔴 Rojo | `kirmizi-saldirgan` | Intenta desmontar las afirmaciones de la obra |
| 🩷 Rosa | `pembe-denetci` | Audita los hallazgos, cierra el recuento |
| 🟣 Morado | `mor-sorgucu` | Comprueba la comprensión, hace preguntas difíciles, investiga las causas |
| 🟢 Verde | `yesil-gercek` | Verifica la información externa en fuentes primarias, hace investigación previa |
| 🟠 Naranja | `turuncu-deneyci` | Ejecuta con sus propias manos, recalcula |
| 🩶 Gris | `gri-sadelestirici` | Pregunta "¿de verdad hace falta?", mantiene el foco |
| ⚫ Negro | `siyah-hafiza` | Detecta lo olvidado y lo que se ha vuelto a estropear; es la puerta |
| ⚪ Blanco | `beyaz-kayitci` | Verifica lo hecho, registra el trabajo sin responsable y el rastro |
| 🟡 Amarillo | `sari-kullanici` | Prueba la obra con los ojos de quien la va a usar |
| 🩵 Turquesa | `turkuaz-verimlilik` | Encuentra el desperdicio de tokens, lecturas y llamadas y lo reduce al mínimo (se añade a un tamaño) |

La "obra" es el archivo o trabajo que se revisa. La pantalla de Claude solo reconoce ocho colores para los equipos; por eso el Gris aparece en cian y el Negro y el Blanco no tienen color. Reconoce a cada equipo por su nombre.

## Tamaños y modos

El **tamaño** es cuántos equipos trabajarán. Si no lo dices, Claude lo elige según el tamaño del trabajo y te lo comunica.

| Tamaño | Equipos | Tope de rondas | Para qué |
|---|---|---|---|
| Rápido | Azul, Rojo, Rosa | 2 | Trabajo pequeño, un solo archivo, comprobación rápida |
| Normal | + Verde, Gris, Naranja | 5 | La mayoría de los trabajos |
| Completo | + Morado, Amarillo, Negro, Blanco | 10 | Trabajo crítico, de larga vida o costoso de deshacer |

Se pueden añadir equipos sueltos a un tamaño ("tamaño rápido, añade también el equipo amarillo"); Claude añade por su cuenta el Amarillo en tareas y textos, y el Naranja en trabajos que requieren ejecución, y lo indica. Los topes de rondas son valores iniciales no probados; para cambiarlos, basta con decirlo.

El **modo** es qué se va a revisar: **amplio** (todo el trabajo) o **enfocado** (una sola pregunta). Si haces una sola pregunta, Claude elige el modo enfocado.

## Dónde está el resultado

- Claude te cuenta el resultado en el chat: una frase arriba y un breve resumen debajo; se indica por separado qué está **demostrado** y qué es *una estimación*; si tiene alguna pregunta, aparece al final.
- En la carpeta donde trabajas se crea una carpeta `takim`. Es el registro propio de los equipos; no necesitas leerlo. La versión original de tu archivo también está en esta carpeta (`takim\yedek\`); si estás conforme con las correcciones, puedes borrarla cuando termine el trabajo.
- Para dar a los equipos una nota o un informe, puedes dejar el archivo en la carpeta `takim\gelen\`.
- Si inicias un trabajo nuevo en la misma carpeta, los registros antiguos no se borran; se mueven a `takim\arsiv\`.

Texto completo de las reglas: `skills/takim-dongu/sablonlar/kurallar.md`.

## Desinstalación

- Si lo instalaste con `kur.cmd`: haz doble clic en el archivo `kaldir.cmd`. Solo borra los archivos de agentes del paquete y las tres carpetas de habilidades; no toca las carpetas `takim` de tus proyectos. Si queda algún archivo que no pudo borrar, lo indica en la pantalla.
- Si lo instalaste como complemento: escribe `/plugin` en Claude Code y quita el complemento desde la ventana que se abre (este paso no se ha comprobado).
- Si lo copiaste en un solo proyecto: borra los archivos que copiaste de la carpeta `.claude` de ese proyecto.

## Otras formas de instalación (avanzado)

Usa solo una. Si usas la vía de complemento junto con `kur.cmd`, los equipos aparecen dos veces en la lista.

**Como complemento.** Donde abajo pone `<takim-ajan klasörünün yolu>`, escribe la ruta completa de esta carpeta en tu ordenador. Dentro de Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

El segundo comando no completa la instalación por sí solo: abre una ventana donde eliges el ámbito de usuario. No se ha comprobado que una ruta de Windows se lea correctamente en este comando. Una vez instalado como complemento, los nombres de agentes y habilidades llevan delante `takim-ajan:`.

**En un solo proyecto.** Copia el contenido de la carpeta `agents` a la carpeta `.claude\agents` del proyecto, y las tres carpetas que hay dentro de la carpeta `skills` a la carpeta `.claude\skills` del proyecto. Las tres carpetas de habilidades deben copiarse juntas.

## Contenido del paquete

| Ubicación | Qué contiene |
|---|---|
| `agents/` | Los archivos de instrucciones de los equipos |
| `skills/` | Tres habilidades: `takim-dongu` (ciclo y plantillas), `takim-tek` (un solo equipo), `takim-durum` (estado) |
| `tests/` | La comprobación propia del paquete (`tests/denetle.ps1`), escenarios de presión y tres ensayos en seco |
| `docs/` | `docs/koken.md` (de dónde viene), `docs/arastirma.md` (los métodos en que se basa) |
| `kur.cmd`, `kaldir.cmd` | Instalar / desinstalar con doble clic |

Versión 0.2.4. Lo que aún no se ha probado figura al final de `docs/koken.md`.
