# `timethis`

This module provides a context manager for measuring execution times:

```python
>>> from timethis import timethis
>>> with timethis('computing large sum'):
...     x = sum(range(10**7))
...
computing large sum: 0.203 seconds
```

Usage of `timethis` can be nested:

```python
>>> with timethis('figuring things out'):
...     with timethis('computing large sum'):
...         x = sum(range(10**7))
...     with timethis('finding some primes'):
...         y = [2] + [i for i in range(3, 10**4) if all(i % j != 0 for j in range(2, i // 2 + 1))]
...
│ computing large sum: 0.205 seconds
│ finding some primes: 0.305 seconds
figuring things out: 0.510 seconds
```

It's easy to use (for example) `logging` instead of `print`:

```python
>>> import logging
>>> with timethis('computing large sum', logging.warning):
...     x = sum(range(10**7))
...
WARNING:root:computing large sum: 0.218 seconds
```

[1]: https://docs.python.org/3/glossary.html#term-context-manager
[2]: https://docs.python.org/3/reference/compound_stmts.html#with
[3]: https://docs.python.org/3/reference/datamodel.html#context-managers
[4]: https://docs.python.org/3/library/timeit.html
[5]: https://github.com/dabeaz/python-cookbook/blob/master/src/14/profiling_and_timing_your_program/timethis.py
[6]: https://github.com/jasonamyers/python-class/blob/master/timethis.py
