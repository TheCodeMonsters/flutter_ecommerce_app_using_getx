Índice
- Guía de estilo
  - Convención de nombres
     - UpperCamelCase
     - lowerCamelCase
     - lowercase_with_underscores
  - Observaciones
  - Orden
  - Uso de llaves
Guía de documentación
  - Comentarios
  - Comentarios de documentación


## Guía de estilo
Reglas para diseñar y organizar el código.

Convención de nombres
En Dart utilizaremos estas tres convenciones:

- UpperCamelCase la primera letra de cada palabra escrita en mayúscula, incluyendo la primera.
- lowerCamelCase la primera letra de cada palabra escrita en mayúscula, excepto la primera.
- lowercase_with_underscores solo usar minúsculas, incluyendo acrónimos y separar las palabras por un subguión "_".

### UpperCamelCase
Debemos usar esta convención para nombrar:

- Classes
- Enums
- Typedefs
- Type parameters
- Extensions

```dart
// Classes (SliderMenu)
class SliderMenu { ... }

// Enums (Color).
enum Color { red, green, blue }

// Typedefs (Predicate).
typedef Predicate<T> = bool Function(T value);

//Type parameters (T).
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

// Extensions (MyFancyList).
extension MyFancyList<T> on List<T> { ... }
```

# lowerCamelCase
Debemos usar esta convención para nombrar:

- Class members
- Functions
- Variables
- Parameters
- Named parameters
- Constant/Final names

```dart
library peg_parser.source_scanner;

import 'file_system.dart';

// Named import (angular_components).
import 'package:angular_components/angular_components' as angular_components;
```

## Observaciones
Usar mayúsculas en acrónimos y abreviaturas de más de dos letras.

HttpConnectionInfo

IOStream

HttpRequest

Id

DBIOPort

TVVcr

- No colocar un subguión antes de un nombre, a menos que el identificador sea privado.
```dart
class Person {
  final _name;
  // ...
}

// No usar letras de prefijo, como por ejemplo la Notación húngara.

// Bien.
const defaultTimeout;

// Mal.
const kDefaultTimeout;
```


##  Orden
Para una mejor legibilidad en el código se recomienda seguir este orden, y cada sección debe estar separada por una línea en blanco.

- Colocar los imports de Dart antes que otros.
```dart
import 'dart:async';
import 'dart:html';

import 'package:bar/bar.dart';
import 'package:foo/foo.dart';
```

- Colocar los imports de package antes que los imports relativos.

```dart
import 'package:bar/bar.dart';
import 'package:foo/foo.dart';

import 'util.dart';
```

- Los exports deben estar en una sección separada después de los imports
```dart
import 'src/error.dart';
import 'src/foo_bar.dart';

export 'src/error.dart';
```

- Ordenarlos alfabéticamente
```dart
import 'package:bar/bar.dart';
import 'package:foo/foo.dart';

import 'foo.dart';
import 'foo/foo.dart';
```

## Uso de llaves

Uso normal de llaves.
```dart
if (isWeekDay) {
  print('Bike to work!');
} else {
  print('Go dancing or read a book!');
}
```
Se pueden omitir las llaves si tenemos un if sin else y todo cabe en la misma línea.
```dart
if (arg == null) return defaultValue;
```
Sin embargo aunque el return sea una sola línea pero no cabe en la primera se deben usar llaves.

```dart
// Bien.
if (overflowChars != other.overflowChars) {
  return overflowChars < other.overflowChars;
}

// Mal.
if (overflowChars != other.overflowChars)
  return overflowChars < other.overflowChars;
```


## Comentarios de documentación
Estos comentarios son especiales porque dartdoc los analiza y crea páginas de documentos para ellos.


Un comentario de documento es cualquier comentario que aparece antes de una declaración y utiliza la sintaxis especial /// que busca dartdoc.
```
/// The number of characters in this chunk when unsplit.
int get length => ...
```

Se recomienda empezar los comentarios de la documentación con un resumen de una sola oración.

```dart
// Bien.
/// Deletes the file at [path] from the file system.
void delete(String path) {
  ...
}

// MAl.
/// Depending on the state of the file system and the user's permissions,
/// certain operations may or may not be possible. If there is no file at
/// [path] or it can't be accessed, this function throws either [IOError]
/// or [PermissionError], respectively. Otherwise, this deletes the file.
void delete(String path) {
  ...
}
```

```dart
Agrega una línea en blanco después de la primera oración para separar el párrafo.
// Bien.
/// Deletes the file at [path].
///
/// Throws an [IOError] if the file could not be found. Throws a
/// [PermissionError] if the file is present but could not be deleted.
void delete(String path) {
  ...
}

// Mal.
/// Deletes the file at [path]. Throws an [IOError] if the file could not
/// be found. Throws a [PermissionError] if the file is present but could
/// not be deleted.
void delete(String path) {
  ...
}
```

Evita la redundancia.

Intenta comenzar los comentarios de funciones o métodos con verbos en tercera persona.

```dart
/// Returns `true` if every element satisfies the [predicate].
bool all(bool predicate(T element)) => ...

/// Starts the stopwatch if not already running.
void start() {
  ...
}
```

Puedes utilizar Markdown para documentar, por lo cual puedes incluir ejemplos de código en los comentarios del documento.
Sin embargo se recomienda no abusar del Markdown.

Usa corchetes para hacer referencia a identificadores.
```

/// Throws a [StateError] if ...
/// similar to [anotherMethod()], but ...

/// Similar to [Duration.inDays], but handles fractional days.

/// To create a point, call [Point()] or use [Point.polar()] to 
...
```

Otros lenguajes usan etiquetas para describir cuáles son los parámetros y los return de un método.

La convención en Dart es integrar eso en la descripción del método y resaltar los parámetros usando corchetes.

```dart
//Bien.
/// Defines a flag.
///
/// Throws an [ArgumentError] if there is already an option named [name] or
/// there is already an option using abbreviation [abbr]. Returns the new flag.
Flag addFlag(String name, String abbr) => ...

// Mal.
/// Defines a flag with the given name and abbreviation.
///
/// @param name The name of the flag.
/// @param abbr The abbreviation for the flag.
/// @returns The new flag.
/// @throws ArgumentError If there is already an option with
///     the given name or abbreviation.
Flag addFlag(String name, String abbr) => ...
```

Evita el uso de abreviaciones.

Prefiere utilizar "this" en lugar de "the" para referirse a instancias.


```dart
class Box {
  /// The value this wraps.
  var _value;

  /// True if this box contains a value.
  bool get hasValue => _value != null;
}
```
