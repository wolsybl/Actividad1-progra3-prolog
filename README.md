# ProgIII G101 - Act01

Actividad 01 de Programación III (Grupo 101). Dos ejercicios resueltos en Prolog: un árbol genealógico y un problema clásico de inferencia lógica.

**Autor:** Wilson Andres Henao

## Requisitos

- [SWI-Prolog](https://www.swi-prolog.org/download/stable) instalado.

## Archivos

| Archivo | Contenido |
|---|---|
| `ejercicio1.pl` | Árbol genealógico de los Simpson |
| `ejercicio2.pl` | El Coronel West es un criminal |

## Ejercicio 1 — Árbol genealógico

Las relaciones directas (una sola generación) están definidas como **hechos**: `hombre/1`, `mujer/1`, `padre(Padre, Hijo)` y `madre(Madre, Hijo)`. Todas las relaciones de más de una generación se obtienen mediante **reglas**: `abuelo/2`, `abuela/2`, `nieto/2`, `nieta/2`, `hermano/2`, `hermana/2`, `tio/2`, `tia/2`, `sobrino/2`, `sobrina/2`, `primos/2` y `ancestro/2` (recursiva, cualquier número de generaciones).

### Ejecutar

```
swipl ejercicio1.pl
```

### Consultas de ejemplo

```prolog
?- abuelo(abraham, bart).
?- abuelo(X, bart).
?- abuela(X, bart).
?- hermana(X, bart).
?- tio(X, bart).
?- primos(bart, ling).
?- ancestro(X, bart).
```

## Ejercicio 2 — El Coronel West es un criminal

Formaliza el silogismo: "es un crimen para un estadounidense vender armas a naciones hostiles; Corea del Sur, enemigo de Estados Unidos, tiene misiles; todos sus misiles fueron vendidos por el Coronel West". La regla `criminal/1` deduce que West es un criminal a partir de los hechos base (`misil/1`, `tiene/2`, `enemigo/2`, `estadounidense/1`) y de las reglas intermedias `arma/1`, `hostil/1` y `vende/3`.

### Ejecutar

```
swipl ejercicio2.pl
```

### Consulta principal

```prolog
?- criminal(coronel_west).
true.
```

### Otras consultas de ejemplo

```prolog
?- criminal(X).
?- hostil(X).
?- vende(coronel_west, X, Z).
?- criminal(corea_del_sur).
```

## Notas de uso de Prolog

- Toda consulta se escribe en el prompt `?-` y termina en punto: `?- abuelo(X, bart).`
- `;` pide la siguiente solución; `Enter` sin `;` se queda con la actual.
- `halt.` cierra el intérprete.