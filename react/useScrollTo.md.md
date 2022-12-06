---
created: 20221206
updated: 20221206
tags:
---

# useScrollTo

```js
const useScrollTo = () => {
  const ref = useRef(null);

  const scrollTo = useCallback(() => {
    ref.current?.scrollIntoView({ behaviour: "smooth" });
  });

  return [ref, scrollTo];
};
```

## Resources

- [ ] [Scroll to an element on click in React](https://bobbyhadz.com/blog/react-scroll-to-element-on-click)
