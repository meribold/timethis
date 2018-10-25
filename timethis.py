from contextlib import contextmanager
from time import perf_counter as _timer

_time_stack = []


def _push_time():
    _time_stack.append(_timer())


def _pop_time(message=None, log=print):
    elapsed_time = _timer() - _time_stack.pop()
    if message is None:
        return
    depth = len(_time_stack)
    log('│ ' * depth + f'{message}: {elapsed_time:.3f} seconds')


@contextmanager
def timethis(message='', log=print):
    _push_time()
    try:
        yield
    finally:
        _pop_time(message, log)
