```ts
function id<T extends string>(type: T): string {
    return type;
}

type Foo = {
    bar: {
        baz: string;
    };
};

export type RecursiveKeyOf<TObj extends object> = {
    [TKey in keyof TObj & (string | number)]: TObj[TKey] extends any[]
        ? `${TKey}`
        : TObj[TKey] extends object
        ? `${TKey}` | `${TKey}.${RecursiveKeyOf<TObj[TKey]>}`
        : `${TKey}`;
}[keyof TObj & (string | number)];

console.log(id<RecursiveKeyOf<Foo>>("bar.baz.a"));

type Join<K, P> = K extends string | number
    ? P extends string | number
        ? `${K}${"" extends P ? "" : "."}${P}`
        : never
    : never;

type Prev = [
    never,
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    ...0[]
];

type Paths<T, D extends number = 10> = [D] extends [never]
    ? never
    : T extends object
    ? {
          [K in keyof T]-?:
              | [K]
              | (Paths<T[K], Prev[D]> extends infer P
                    ? P extends []
                        ? never
                        : Cons<K, P>
                    : never);
      }[keyof T]
    : [];

type Leaves<T, D extends number = 10> = [D] extends [never]
    ? never
    : T extends object
    ? { [K in keyof T]-?: Join<K, Leaves<T[K], Prev[D]>> }[keyof T]
    : "";

id<Leaves<Foo>>("bar.baz.a");

type DotPrefix<T extends string> = T extends "" ? "" : `.${T}`;

type DotNestedKeys<T> = (
    T extends object
        ? {
              [K in Exclude<keyof T, symbol>]: `${K}${DotPrefix<
                  DotNestedKeys<T[K]>
              >}`;
          }[Exclude<keyof T, symbol>]
        : ""
) extends infer D
    ? Extract<D, string>
    : never;

console.log(id<DotNestedKeys<OrderInfo>>("applicantDetails.firstName"));
```
