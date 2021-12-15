---
created: 20211201
updated: 20211215
tags:
---

# useLazyRef

## Examples

```js
const none = {};
function useLazyRef(init) {
  const value = useRef(none);
  return useState(() => ({
    get current() {
      if (value.current === none) {
        value.current = init();
      }
      return value.current;
    },
    set current(v) {
      value.current = v;
    },
  }))[0];
}
```

## Resources

- [ ] [Make useRef lazy — 4 ways](https://thoughtspile.github.io/2021/11/30/lazy-useref/)

