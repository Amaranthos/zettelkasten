---
created: 20211201
updated: 20211215
tags:
---

# useMutationObserver

## Examples

```js
function useMutationObservable(
  targetEl,
  cb,
  options = { attributes: true, childList: true, subtree: true }
) {
  const [observer, setObserver] = useState(null);

  useEffect(() => {
    const obs = new MutationObserver(cb);
    setObserver(obs);
  }, [cb, options, setObserver]);

  useEffect(() => {
    if (!observer) return;
    observer.observe(targetEl, options);
    return () => {
      if (observer) {
        observer.disconnect();
      }
    };
  }, [observer, targetEl, options]);
}
```

## Resources

- [ ] [Guide to custom React Hooks with MutationObserver](https://blog.logrocket.com/guide-to-custom-react-hooks-with-mutationobserver/)

