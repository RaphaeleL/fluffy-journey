# Fluffy Journey

fluffy-journey is an interpreted programming language. It is dynamically typed and comes with built-int garbage Colletion. The Syntax is Something between Python, C and JS / TS. As an Interpreted Language it is pretty fast. Oh and it is implemented with no external dependencies.

## Syntax

> see the [examples](https://github.com/RaphaeleL/fluffy-journey/tree/main/examples)-Directory for more

### Variables

```
let a = 5;
let b = 25;
a = a + 5;
```

### Loops

```
for (let i = 0; i < 10; i++) {
  a = i + 1;
}

while (b > a) {
  b = b - 5;
  break;
}
```

### If Statements

```
if (b == 5 || a == b) {
  print("b is a");
} else if (a == (b-5)) {
  // ...
} else {
  // ...
}
```

### Strings

```
let c = "Hello, World!";
c = str_split(c, " ");
type(c);  // "ARRAY"
len(c);   // 2
```

### Arrays

```
let d = [5, true, "Psychic"];
d[0];         // 5
array_pop();  // "Psychic"
array_push(d, 10);
```

### Slices

```
let s = d[0:2]; // [5, true]
```

### Functions

```
let fib = fn(x) {
  if (x < 2) {
    return x;
  }
  return fib(x-1) + fib(x-2);
}
```

## Usage

### Build 

```bash 
make
```

### Interprete a File

```bash 
bin/fluffy-journey <filename>
```

### Installation 

```bash 
sudo make install
```
