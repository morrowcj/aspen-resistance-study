# Holstrom Resistance Study Data readme

This document will serve as a readme file for important data from the 2018
Holstrom project conducted by Sam Jaeger and Clay Morrow under the advisement
of Richard Lindroth at the University of Madison - Wisconsin. It will give
brief descriptions of the data present and will provide explanations of columns
within spreadsheets.

The purpose of this project was to test the Plant Vigor Hypothesis. (See
`Holstrom Experimental Protocol_morrowcj_Final.docx`)

Our experiment had 36 ramets each of fast-, moderate-, and slow-growing aspen genets for a total of 108 trees/genets. 

## `Choice_Assay/`

This folder contains data specific to the choice assay in which gypsy moth
larvae were given a choice between leaves of the different vigor categories.

### `leaf-and-larvae-data*`

These files contain the data collected from the experiment. Each row corresponds
to 1 leaf within a dish.

The '`*calibrated*` versions contain the estimates for leaf and larval initial
biomass. These calculations were done in `R` using the linear model function
(`lm()`). The `*calibrated-&-reduced` version only contains observations where
the larvae did not molt.

#### Columns

The Column key for potentially confusing columns is as follows:

* `SerialNo`: The serial number of the WisAsp tree from which leaves came

* `Dish.ID`: The unique petri-dish identifier

* `group`: vigor category

* `genet.lf`: the genet of the leaf

* `gen.num`: genet within dish - arbitrary

* `vial.num`: the ID printed on the leaf's water vial

* `lf.init.wetmass_mg` initial leaf wetmass in miligrams

* `lf.init.drymass_mg` '' drymass '' estimate

* `gm.init.wetmass_mg` '' larval wetmass '' calculated

* `gm.init.drymass_mg` '' drymass '' estimate - identical to `lf.init.drymass_group.calib_mg`

* `gm.end.drymass_mg` larval final drymass measured in mg

* `*.date_dmy` trial start and end dates

* `start/end_24.00.00` start and end time in 24:00:00 format

* `molting_bin` did the larva molt during trial? "1"=yes

* `rel.bmass.consumed*`: relative biomass consumed, calculated with different
wet-dry mass calibration methods. The `group` version is preferred.

* `leaf.preference`: proportion of total within-dish consumption that came
from leaf `x`. i.e. of all the leaf matter that the larva ate, what fraction
came from leaf `x`.

* `*.DW.*` mean and standard deviation for the phytocemistry components of
the genet. `Scin` = salicin, `Scort` = salicortin, `Tdin` = tremuloidin, `Tcin`
= tremulacin, `PGsum` = all 4 PGs.

## `Resistance_Study/`

This folder contains data specific to the field portion of this project in
which gypsy moth performance was measured after feeding upon trees in the field.

## `uplc_output/`

This folder contains the phytochemistry data from the project.
