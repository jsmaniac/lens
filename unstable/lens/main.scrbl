#lang scribble/manual

@title{Unstable Lenses}

@defmodule[unstable/lens]

This library provides additional features for the
@racketmodname[lens] library that are non-final and
may change in future releases. Do not depend on
this library being backwards-compatible.

@include-section["view-set.scrbl"]
@include-section["syntax.scrbl"]
@include-section["sublist.scrbl"]
@include-section["arrow.scrbl"]
@include-section["isomorphism.scrbl"]
@include-section["mapper.scrbl"]
@include-section["string-split.scrbl"]
