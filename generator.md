---
created: 20220225
updated: 20220225
tags:
---

# Generator

> In [[computer-science]], a generator is a [[routine]] that can be used to control the iteration behaviour of a loop. All generators are also [[iterator]]s. A generator is very similar to a [[function]] that returns an array, in that a generator has parameters, can be called, and generates a [[sequence]] of values. However, instead of building an array containing all the values and returning them all at once, a generator [[yields]] the values one at a time, which requires less memory and allows the caller to get started processing the first few values immediately. In short, a generator looks like a function but behaves like an [[iterator]].
> &mdash; <cite>[wikipedia][1]</cite>

## Examples

```js
function* fib(limit) {
  let [prev, curr] = [0, 1];
  while (!limit || curr <= limit) {
    yield curr;
    [prev, curr] = [curr, prev + curr];
  }
}

for (let n of fib(10)) {
  console.log(n);
}
```

[1]: https://en.wikipedia.org/wiki/Generator_(computer_programming)

[//begin]: # "Autogenerated link references for markdown compatibility"
[computer-science]: computer-science "Computer Science"
[routine]: routine "routine"
[iterator]: iterator "Iterator"
[function]: function "Function"
[//end]: # "Autogenerated link references"
