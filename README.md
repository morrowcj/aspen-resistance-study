# Aspen Resistance Study Project
This repository will be used to conduct analyses on our Holstrom aspen resistance study project. There are 2 primary experiments in this project that will have their own subdirectories `choice-assay` and `wisasp_common-garden`

The instructions herein are for the Lindroth Lab Linux computer `Maximus`:

```shell
## results of `lsb_release -a` (distro info):

LSB Version:	core-9.20160110ubuntu0.2-amd64:core-9.20160110ubuntu0.2-noarch:printing-9.20160110ubuntu0.2-amd64:printing-9.20160110ubuntu0.2-noarch:security-9.20160110ubuntu0.2-amd64:security-9.20160110ubuntu0.2-noarch
Distributor ID:	Zorin
Description:	Zorin OS 12.4
Release:	12
Codename:	xenial
```

# Setup

All code in this document should be run from the project root directory unless otherwise specified. To ensure that your terminal starts in the proper working directory, locate the directory and move into it:

```shell
# Check starting directory
pwd
```

```
/home/morrowcj
```

```shell
# move to project directory
## relative to current directory
cd Documents/holstrom-resistance-study
## OR, absolute path (works from anywhere)
cd /home/morrowcj/Documents/holstrom-resistance-study/
```

## Copying data into the projects

### labstorage (L drive)

Phenotypic, plot layout, and identification data for WisAsp will be useful to our analyses. These data are located on the L drive (`"/labstorage/Lindroth_Lab/WisAsp Study/Phenotype data summary table"`). 

Find the most recent verision of the phenotype table and copy it to our project's data directory:

```shell
cp "/labstorage/Lindroth_Lab/WisAsp Study/Phenotype data summary table/WisAsp Summary Table DRAFT 6 Dec 2018.xlsx" ~/Documents/holstrom-resistance-study/data/
```

### Box.com data

Our data is housed on Box.com, so in order to use the data in this project, it has to be copied to our project folder. This will need to be done each time the data files are updated.

The `Box.com` foulder is mounted in the `/home/morrowcj/mnt/` folder. Each time the computer is restarted, it needs to be remounted: `mount /home/morrowcj/mount/Box.com` `[morrowcj's Box.com external password]`. 

When the folder is mounted, data can be copied with this code chunk:

```shell
# copy all files in the Hilldale/Data folder into the
  ## holstrom-resistance-study/data/ folder
cp -r ~/mnt/Box.com/lab-resources/projects/Hilldale/Data/* data/
```

This will take a while, due to the size of the photos (**only transfer individual files after initial transfer**)

To transfer individual files use `cp [target file] [destination directory/]`