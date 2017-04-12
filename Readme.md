
# makefile-assert

An easy way to assert that an environment variable is defined in your Node.js project's `Makefile`.

---

### Example

For a makefile like...

```make
ifneq ($(wildcard ./node_modules),)
  include ./node_modules/makefile-assert/Makefile
endif

deploy: assert-VERSION
  @ ./node_modules/.bin/np $(VERSION)
```

Running `make deploy` by itself will print out...

```bash
$ make deploy

  Error: You must pass in the `VERSION` environment variable.

make: *** [assert-VERSION] Error 1
```

But if you set the `VERSION` variable, it will work just fine...

```bash
$ make deploy VERSION=2.0.0
Deploying version 2.0.0 ...
```

---

### Installation

```bash
yarn add makefile-assert
```

```bash
npm install --save makefile-assert
```

---

### Usage

To use it, `include` this module's `Makefile` in your own...

```make
ifneq ($(wildcard ./node_modules),)
  include ./node_modules/makefile-assert/Makefile
endif
```

And then you can add the `assert-%` as a prerequisite to your other targets...

```make
target: assert-VARIABLE
```
