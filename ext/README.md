# Froyo External Modules

## What?

These are Froyo extensions, code added to Froyo source

These should be compiled with the `module` flag & added to
`/lib/froyo/ext`

To add them to your source, use the `include` keyword,
followed by the module you want to add

The `include` keyword - currently - only takes one argument,
so instead of doing:

```
include first second third
```

you will need to do:

```
include first
include second
include third
```
