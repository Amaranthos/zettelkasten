# useDebounce

## Examples

```js
const useDebounce = (callback, delay) => {
  const callbackRef = React.useRef(callback);
  React.useLayoutEffect(() => {
    callbackRef.current = callback;
  });
  return React.useMemo(
    () => debounce((...args) => callbackRef.current(...args), delay),
    [delay]
  );
};
```

## Resources

- [ ] [The Latest Ref Pattern in React](https://epicreact.dev/the-latest-ref-pattern-in-react/)
