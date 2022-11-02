from concurrent.futures import ProcessPoolExecutor, as_completed
from remote_pdb import RemotePdb
import multiprocessing as mp

vals = range(10000)


def _process_one(val: int) -> int:
    _identity = mp.current_process()._identity[0]
    print(f"Running {val} in {_identity}")
    RemotePdb('localhost', 4000+_identity).set_trace()
    return val**2


def main():
    breakpoint()
    tasks = []
    with ProcessPoolExecutor(max_workers=8) as executor:
        tasks = [executor.submit(_process_one, v) for v in vals]

    for t in as_completed(tasks):
        print(t.result())


if __name__ == "__main__":
    main()
