# mungee application

Purpose: Given a subset of the wikipedia dataset which has external (and broken) links, we would like to turn this dataset into a self-contained collection of documents with working links.

- `en/`       downloaded wikipedia contents
- `munged/`   munged `en` folder with localized links

To use, download documents from wikipedia or other sources into the `en` directory then run the `mungee.sh` script:

```bash
$ sh mungee.sh
```

This will produced files with nonsensical links in `mungeed`.  These files, however, will have links that are localized to one server.


