# mungee application

Purpose: Given a subset of the wikipedia dataset which has external (and broken) links, we would like to turn this dataset into a self-contained collection of documents with working links.

- `en/`       downloaded wikipedia contents
- `munged/`   munged `en` folder with localized links

To use, download documents from wikipedia or other sources into the `en` directory then run the `mungee.sh` script:

```bash
$ sh mungee.sh
```

This script will copy and transform files from `en` into `munged`.  These newly produced files are documents with links that localized to one server.


