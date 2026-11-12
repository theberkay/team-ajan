# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## Para qué sirve

Hace que un trabajo suyo (código, cálculo de ingeniería, proyecto arquitectónico, diseño de producto / interfaz, tarea, investigación, texto, plan) no lo revise un solo par de ojos, sino «equipos» separados que se controlan entre sí; si lo desea, hace que lo corrijan hasta que no quede ningún error. Es un paquete de plugin para Claude Code. Contiene dos tipos de archivos: **agente** (instrucción que describe cómo trabaja un equipo) y **skill** (instrucción que describe cómo Claude dirige a los equipos).

La guía de áreas (`skills/takim-dongu/sablonlar/alanlar.md`) indica a los equipos qué revisar en estas áreas: código, ingeniería, mecánica, mecatrónica, electricidad, industria pesada, arquitectura, diseño y diseño gráfico, explicación de temas y tareas, presentación, investigación, documentación, medicina, derecho, política, historia, música. En medicina y derecho los equipos no dan diagnóstico, tratamiento ni opinión jurídica; solo revisan el texto y sus fuentes, y el resultado lleva la nota «consulte a un especialista».

## Instalación

1. Si recibió el paquete como archivo comprimido (zip), extráigalo primero en una carpeta.
2. Haga doble clic en `kur.cmd`. Verá en pantalla el mensaje «Kuruldu» (instalado).
3. Cierre Claude y vuelva a abrirlo.

`kur.cmd` copia solo los archivos de agentes y las tres carpetas de skills en la carpeta de usuario de Claude (`%USERPROFILE%\.claude`); sobrescribe los antiguos con el mismo nombre, así que no ponga archivos propios en esas tres carpetas ni con esos nombres. Muestra la carpeta de destino en pantalla. Cuando llegue una nueva versión, basta con volver a ejecutar el mismo archivo. Otras formas de instalación están al final.

## Su primera frase tras instalar

Abra Claude en la carpeta donde está el archivo a revisar y escriba una de las siguientes frases. La frase debe contener la palabra **«takım»** (equipo); si no, los equipos no se activan.

| Qué quiere | La frase a escribir |
|---|---|
| Solo revisar, sin tocar mi archivo | `que los equipos revisen rapor.md, sin tocarlo` |
| Revisar y corregir | `que los equipos corrijan hesap.md hasta que no quede ningún error` |
| Centrarse en una sola pregunta | `equipos, miren solo esto: ¿por qué este test falla de vez en cuando?` |
| La opinión de un solo equipo | `equipo rojo, ataca esta tarea` · `míralo con los ojos del equipo amarillo` · `equipo turquesa, busca derroche` |
| Que tengan en cuenta también mi nota | `da esto a los equipos como nota: …` |
| Dónde están | `¿cómo van los equipos?` |
| Seguir donde lo dejaron · detenerse | `equipos, continúen` · `detén los equipos` |

Los disparadores de las skills están escritos en turco; las peticiones que contienen «takım» / «takımlar» los activan de forma fiable; las peticiones en otros idiomas pueden funcionar, pero no se han probado.

Claude primero da un breve resumen (qué entendió, qué supuso, cuántos equipos trabajarán como máximo cuántas rondas) y empieza. Mientras trabaja puede pedir permiso para escribir archivos y ejecutar comandos; cuántas veces lo pedirá aún no se ha medido. Puede decir sí a los permisos de escritura en la carpeta `takim`; si no está seguro de un permiso de comando, diga no, y esa comprobación se informará como «no se pudo comprobar».

## Qué pasa con su archivo

- **Si dice «revisar», su archivo no cambia.** A los equipos se les indica que escriban informes y registros solo en su propia carpeta `takim` («solo revisión»); aun así se guarda una copia de su archivo en la carpeta `takim\yedek\`.
- **Si dice «corregir»,** Claude primero guarda una copia de su archivo en la carpeta `takim\yedek\` y le dice «su archivo va a cambiar, la copia de seguridad está aquí». Solo el equipo Azul escribe en su archivo.
- Si su petición es ambigua, Claude no toca su archivo.
- No se ha verificado que los equipos puedan leer archivos Word o PDF; Claude lo dice al principio y trabaja sobre una copia convertida a texto.

## Cuándo termina

Si dijo «revisar», termina tras una sola ronda de revisión: Claude explica lo que encontró y pregunta si se corrige. Si dijo «corregir», termina cuando los errores encontrados se han corregido y las correcciones se han vuelto a comprobar, y cuando se ha escrito cómo se cerrará todo lo que quedó a medias. También puede detenerse antes de terminar (por ejemplo, al llegar al número máximo de rondas, el «tope de rondas», o cuando surge algo que usted debe decidir); cuando se detiene, Claude explica el motivo y pregunta. La lista de casos de detención está en la sección 8 de las reglas.

No se ha medido cuánto dura una ronda; a más equipos, más tiempo y más uso.

## Equipos

| Equipo | Agente | Qué hace |
|---|---|---|
| 🔵 Azul | `mavi-yazar` | Escribe la obra, lleva cada objeción a una conclusión |
| 🔴 Rojo | `kirmizi-saldirgan` | Intenta romper las afirmaciones de la obra |
| 🩷 Rosa | `pembe-denetci` | Audita los hallazgos, cierra el recuento |
| 🟣 Morado | `mor-sorgucu` | Comprueba la comprensión, hace preguntas difíciles, investiga la causa |
| 🟢 Verde | `yesil-gercek` | Verifica la información externa en fuentes primarias, hace investigación previa |
| 🟠 Naranja | `turuncu-deneyci` | Ejecuta con sus propias manos, recalcula |
| 🩶 Gris | `gri-sadelestirici` | Pregunta «¿es realmente necesario?», mantiene el foco |
| ⚫ Negro | `siyah-hafiza` | Atrapa lo olvidado y lo que volvió a romperse; es la puerta |
| ⚪ Blanco | `beyaz-kayitci` | Verifica lo hecho, registra el trabajo sin dueño y la traza |
| 🟡 Amarillo | `sari-kullanici` | Prueba la obra con los ojos de quien la usará |
| 🩵 Turquesa | `turkuaz-verimlilik` | Encuentra el derroche de tokens, lecturas y llamadas y lo reduce al mínimo (se añade a un tamaño) |

La «obra» es su archivo o trabajo revisado. La pantalla de Claude solo reconoce ocho colores para los equipos; por eso el Gris aparece cian, y el Negro y el Blanco no tienen color. Reconozca cada equipo por su nombre.

## Tamaños y modos

El **tamaño** es cuántos equipos trabajarán. Si no lo dice, Claude lo elige según el tamaño del trabajo y lo comunica.

| Tamaño | Equipos | Tope de rondas | Para qué |
|---|---|---|---|
| Rápido | Azul, Rojo, Rosa | 2 | Trabajo pequeño, un solo archivo, control rápido |
| Normal | + Verde, Gris, Naranja | 5 | La mayoría de los trabajos |
| Completo | + Morado, Amarillo, Negro, Blanco | 10 | Trabajo crítico, de larga vida o caro de deshacer |

Se pueden añadir equipos uno a uno a un tamaño («tamaño rápido, añade también el equipo amarillo»); en tareas y textos Claude añade el Amarillo por su cuenta, y en trabajos que requieren ejecución el Naranja, y lo dice. Los topes de rondas son valores iniciales no probados; para cambiarlos basta con decirlo.

El **modo** es qué se mira: **amplio** (todo el trabajo) o **enfoque** (una sola pregunta). Si hace una sola pregunta, Claude elige el modo enfoque.

## Dónde está el resultado

- Claude le cuenta el resultado en el chat: una sola frase arriba, un breve resumen debajo; se dice por separado qué está **probado** y qué es *estimación*; su pregunta, si la hay, va al final.
- En la carpeta donde trabaja se crea una carpeta `takim`. Es el registro propio de los equipos; no necesita leerlo. La versión original de su archivo también está en esta carpeta (`takim\yedek\`); si está conforme con las correcciones, puede borrarla cuando termine el trabajo.
- Para dar una nota o un informe a los equipos, puede dejar el archivo en la carpeta `takim\gelen\`.
- Si inicia un trabajo nuevo en la misma carpeta, los registros antiguos no se borran; se mueven a `takim\arsiv\`.

Texto completo de las reglas: `skills/takim-dongu/sablonlar/kurallar.md`.

## Desinstalación

- Si instaló con `kur.cmd`: haga doble clic en `kaldir.cmd`. Solo borra los archivos de agentes del paquete y las tres carpetas de skills; no toca las carpetas `takim` de sus proyectos. Si queda algún archivo que no pudo borrar, lo dice en pantalla.
- Si lo instaló como plugin: escriba `/plugin` en Claude Code y quite el plugin desde la ventana que se abre (este paso no se ha verificado).
- Si lo copió en un solo proyecto: borre los archivos copiados de la carpeta `.claude` de ese proyecto.

## Otras formas de instalación (avanzado)

Use solo una. Si usa la vía de plugin junto con `kur.cmd`, los equipos aparecen dos veces en la lista.

**Como plugin.** Donde abajo dice `<takim-ajan klasörünün yolu>`, ponga la ruta completa de esta carpeta en su ordenador. En Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

El segundo comando no termina la instalación por sí solo: abre una ventana; allí elige el ámbito de usuario. No se ha verificado que una ruta de Windows se lea correctamente en este comando. Al instalarse como plugin, los nombres de agentes y skills llevan delante `takim-ajan:`.

**En un solo proyecto.** Copie el contenido de la carpeta `agents` en la carpeta `.claude\agents` del proyecto, y las tres carpetas que hay dentro de la carpeta `skills` en la carpeta `.claude\skills` del proyecto. Las tres carpetas de skills deben copiarse juntas.

## Contenido del paquete

| Lugar | Qué contiene |
|---|---|
| `agents/` | Los archivos de instrucciones de los equipos |
| `skills/` | Tres skills: `takim-dongu` (bucle y plantillas), `takim-tek` (un solo equipo), `takim-durum` (estado) |
| `tests/` | La comprobación propia del paquete (`tests/denetle.ps1`), escenarios de presión y tres ensayos en seco |
| `docs/` | `docs/koken.md` (de dónde viene), `docs/arastirma.md` (los métodos en que se basa) |
| `kur.cmd`, `kaldir.cmd` | Instalar / desinstalar con doble clic |

Versión 0.3.0. Lo que aún no se ha probado está en la lista al final de `docs/koken.md`.

Licencia: MIT (LICENSE)
