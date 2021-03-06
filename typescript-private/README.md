# TypeScript contribution layer for Spacemacs

![logo](img/TypeScript.png)

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc/generate-toc again -->
**Table of Contents**

- [TypeScript contribution layer for Spacemacs](#typescript-contribution-layer-for-spacemacs)
    - [Description](#description)
    - [Install](#install)
        - [Layer](#layer)
        - [Prerequisites](#prerequisites)
    - [Key bindings](#key-bindings)

<!-- markdown-toc end -->

## Description

This layer adds support for TypeScript editing via [typescript-tools][] and
[emacs-tss][].

This layer provides:
- syntax coloring
- error highlighting
- auto-completion via Flycheck
- jump-to-definition
- type inference

[Typescript](https://github.com/Microsoft/TypeScript)
[Emacs-Tss](https://github.com/aki2o/emacs-tss)


## Install

### Layer

To use this contribution add it to your `~/.spacemacs`

```elisp
(setq-default dotspacemacs-configuration-layers '(typescript))
```

### Prerequisites

You'll need [typescript-tools][] and fairly obviously also the TypeScript
compiler:

```sh
$ npm install typescript
$ git clone git://github.com/clausreinke/typescript-tools.git
$ cd typescript-tools/
$ npm install -g
```

or

- The typescript project for compiling to Javascript. (tsc)

```npm install -g typescript```

- The typescript-tools project for type annotations, and flychecking. (tss)

```npm install -g clausreinke/typescript-tools```

## Key bindings

Key Binding   | Description
--------------|------------------------------------------------------------
`<SPC> m g g` | Jump to definition
`<SPC> m h h` | Show popup help (with type info)

[emacs-tss]: https://github.com/aki2o/emacs-tss
[typescript-tools]: https://github.com/clausreinke/typescript-tools
