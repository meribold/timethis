# `timethis`

This module provides a context manager for measuring execution times:

```python
>>> from timethis import timethis
>>> with timethis('computing large sum'):
...     x = sum(range(10**7))
...
computing large sum: 0.203 seconds
```

[1]: https://docs.python.org/3/glossary.html#term-context-manager
[2]: https://docs.python.org/3/reference/compound_stmts.html#with
[3]: https://docs.python.org/3/reference/datamodel.html#context-managers
[4]: https://docs.python.org/3/library/timeit.html
[5]: https://github.com/dabeaz/python-cookbook/blob/master/src/14/profiling_and_timing_your_program/timethis.py
[6]: https://github.com/jasonamyers/python-class/blob/master/timethis.py
