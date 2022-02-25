---
created: 20220217
updated: 20220217
tags:
---

# useResource

## Examples

```js
const useResource = (callback, dependencies) => {
  // Ref holds the pending disposal function
  const disposeRef = useRef(null);

  const value = useMemo(() => {
    // Clean up prior resource
    if (disposeRef.current) disposeRef.current();
    disposeRef.current = null;

    // Provide a callback to capture a new disposal function
    const dispose = (f) => (disposeRef.current = f);

    // Invoke original callback
    return callback(dispose);
  }, dependencies);

  // Dispose on unmount
  // Note the double =>, this is for disposal only.
  useEffect(
    () => () => {
      if (disposeRef.current) disposeRef.current();
    },
    []
  );

  return value;
};
```

## Resources

- [ ] [React - The Missing Parts](https://acko.net/blog/react-the-missing-parts/)
