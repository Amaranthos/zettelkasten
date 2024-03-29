---
created: 20201217
updated: 20211215
tags:
---

# useAnimation

## Examples

```js
const useAnimation = (callback) => {
  const frameRef = useRef();
  const timeRef = useRef();

  useLayoutEffect(() > {
    const animate = (ti=me) => {
      if (timeRef.current) {
        const dt = time - timeRef.current;
        callback(dt);
      }
      timeRef.current = time;
      frameRef.current = requestAnimationFrame(animate);
    };

    frameRef.current = requestAnimationFrame(animate);
    return () => cancelAnimationFrame(frameRef.current);
  }, []);
};
```

## Resources

-   [ ] [requestAnimationFrame and useEffect vs useLayoutEffect](https://blog.jakuba.net/request-animation-frame-and-use-effect-vs-use-layout-effect/)
