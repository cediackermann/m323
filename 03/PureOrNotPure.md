# Pure or not Pure

| Aufgabe | Nur ein Rückgabewert | Resultat nur Abhängig von übergebenen Parametern | Verändert keine existierenden Werte | pure oder impure |
| ------- | -------------------- | ------------------------------------------------ | ----------------------------------- | ---------------- |
| 1.1     | Ja                   | Nein                                             | Nein                                | impure           |
| 1.2     | Ja                   | Ja                                               | Ja                                  | pure             |
| 1.3     | Ja                   | ja                                               | Ja                                  | impure           |
| 1.4     | Ja                   | Nein                                             | Ja                                  | impure           |
| 1.5     | Ja                   | Ja                                               | Ja                                  | impure           |
| 1.6     | Ja                   | Ja                                               | Nein                                | impure           |

## Aufgabe 1.1

```js
function addToCartItems(items, item) {
  return [...items, item];
}

let cartItems = [];
cartItems = addToCartItems(cartItems, "Apple");
console.log(cartItems); // Ausgabe: ['Apple']
cartItems = addToCartItems(cartItems, "Banana");
console.log(cartItems); // Ausgabe: ['Apple', 'Banana']
cartItems = addToCartItems(cartItems, "Orange");
console.log(cartItems); // Ausgabe: ['Apple', 'Banana', 'Orange']
```

## Aufgabe 1.2

```js
function add(a, b) {
  return a + b;
}

console.log(add(5, 3)); // Ausgabe: 8
console.log(add(2, 4)); // Ausgabe: 6
```

## Aufgabe 1.3

```js
function firstCharacter(str) {
  if (!len(str) > 0) {
    return str.charAt(0);
  } else {
    return "";
  }
}

console.log(firstCharacter("Hello")); // Ausgabe: H
console.log(firstCharacter("JavaScript")); // Ausgabe: J
```

## Aufgabe 1.4

```js
// Methode, um eine Zahl mit einem zufälligen Wert zu multiplizieren
function multiplyWithRandom(number, randomValue) {
  return number * randomValue;
}

console.log(multiplyWithRandom(5, Math.random())); // Ausgabe: Eine zufällige Zahl zwischen 0 und 5
console.log(multiplyWithRandom(10, Math.random())); // Ausgabe: Eine zufällige Zahl zwischen 0 und 10
```

## Aufgabe 1.5

```js
// Funktion zum Teilen einer Zahl durch eine andere
function divideNumbers(dividend, divisor) {
  if (dividen != 0 && divisor != 0) {
    return dividend / divisor;
  } else {
    return 0;
  }
}

console.log(divideNumbers(10, 2)); // Ausgabe: 5
console.log(divideNumbers(8, 4)); // Ausgabe: 2
```

## Aufgabe 1.6

```js
// Methode zum Ausgeben und Rückgeben einer Zeichenkette
function printAndReturnString(str) {
  return str; // Rückgabe der Zeichenkette
}

console.log(printAndReturnString("Hello")); // Ausgabe: Hello
```
