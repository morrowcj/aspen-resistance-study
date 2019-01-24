# Using `lftp` to copy new files

first enter execute `lftp` and then the following

```
lftp :~> set ftps:initial-prot ""
lftp :~> set ftp:ssl-force true
lftp :~> set ftp:ssl-protect-data true
lftp :~> open ftps://ftp.box.com:990
lftp ftp.box.com:~> user username@indiana.edu
```

Then we can check what files will transfer

* To Box

```shell
mirror --reverse --only-newer -v --scan-all-first --dry-run [remote dir] [local dir]
```

* From Box

```shell
mirror --only-newer -v --scan-all-first --dry-run [remote dir] [local dir]
```

To complete the copy, remove the `--dry-run` option.
