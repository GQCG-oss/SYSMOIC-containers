# Docker/Apptainer for SYSMOIC

## HPC setup
0. Make sure the following exports are added to your .bashrc. If not, add them and relogin to the HPC (you should only need to do this once).
```bash
export APPTAINER_CACHEDIR=$VSC_SCRATCH_VO_USER/containers/cache 
export APPTAINER_TMPDIR=$VSC_SCRATCH_VO_USER/containers/tmp 
export APPTAINER_PULLFOLDER=$VSC_SCRATCH_VO_USER/containers
```
>Ensure you're not using an empty bash variable. Check the `$VSC_SCRATCH_VO_USER` variable using
```bash
echo $VSC_SCRATCH_VO_USER
```
>if this returns a blank line, try
```bash
echo $VSC_SCRATCH
```
>and use this variable for defining the `APPTAINER_XDIR`s if needed.

1. Pull the .sif to your $VSC_SCRATCH_VO_USER:

```bash
apptainer pull sysmoic-2024.2.sif oras://ghcr.io/gqcg-oss/sysmoic-containers/sysmoic-2024.2-apptainer:master
```

2. Run the required programs (e.g. `MOMO`) as:
```bash
apptainer run ${APPTAINER_PULLFOLDER}/sysmoic-2024.2.sif MOMO
```

## Further use
See the [SYSMOIC manual](http://sysmoic.chem.unisa.it/MANUAL/) for calculating induced currents.
The SYSMOIC code is based on gaussian for its electronic structure calculations. See https://github.com/GQCG-edu/modeling-organics for running Gaussian on the cluster.
