# rmold

This tool removes long ago modified files and empty directories from given directory.

## Usage

```sh
./rmold.sh filemask numofdays
```

* **filemask** - directory name or file mask. Check "find" tool man page to see description.
* **numofdays** - number of days.

## Sample

```sh
./rmold.sh "/d/tmp/*" 21
```

Remoce all files in ``/d/tmp`` directory that are older than 3 weeks.
