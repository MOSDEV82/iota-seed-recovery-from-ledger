# iota-seed-recovery-from-ledger 
Recover an IOTA seed from the ledger Nano S/X with your recovery phrase

All thanks to MuXxer! He wrote basically the python program.
[MuXxer Recovery Seed ORIGINAL](https://github.com/muXxer/recover-iota-seed-from-ledger-mnemonics/)

## WARNING
Never give your seed or your recovery phrase to anyone! They will steal all your cryptocurrency token / money!
We will never ask you for this information!

## Step by step guide
### Install requirements

First of all you need to download Docker for Windows
[Download Docker](https://desktop.docker.com/win/stable/amd64/Docker%20Desktop%20Installer.exe?utm_source=docker&utm_medium=webreferral&utm_campaign=dd-smartbutton&utm_location=header)

After downloading and installing Docker in Windows you need this both files (Dockerfile and requirements.txt). Copy these files to a own directory on your harddisk.
Example: C:\iota

Open a shell (cmd) and change to this directory

Build the docker container
```sh
  docker build . --tag iota-seed-recovery-from-ledger:latest
```

After building the container, start the docker container interactive
```sh
  docker run -it iota-seed-recovery-from-ledger
```

You will be prompted for the 24 words!

For your own security, disable the network connection to your computer! But you are able to check the tool from MuXxer and mine short script.
I just add the first line in the requirements.txt, because it was needed.
