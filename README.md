# haskell-encoding

This branch is intended to provide an updated and incrementally revised version of the original author's library [`encoding`](https://hackage.haskell.org/package/encoding) and [`unicode-collation`](https://hackage.haskell.org/package/unicode-collation).

Herein, we will improve several aspects of its implementation and reliabilty, which includes a more generic interface, the use of more general logging and exception handling models, revised and improved tests. The documentation needs examples.

In addition, the library will be optimized for runtime conversions as well as compile-time module generation. Its structure will be reorganized and additional build procedures will be supported.
In fact, a host of trivial performance improvements may be attempted, without touching the original author's algorithms.
Potential algorithmic improvements are of secondary concern at the moment.

Eventually, a set of benchmarks will be made available, in particular a comparison with [`text-icu`](https://hackage.haskell.org/package/text-icu) is of great interest.


At a slightly later point, the package will be made available for Stackage LTS and nightly builds.

Pull requests and comments are most certainly always welcome. :smile:


A list of steps needed to perform will be provided soon.
