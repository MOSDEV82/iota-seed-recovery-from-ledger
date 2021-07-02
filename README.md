# iota-seed-recovery-from-ledger 
Recover an IOTA seed from the ledger Nano S/X with your recovery phrase
Download the prebuild docker container OR build the container with docker file!

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

### Build docker image from Dockerfile

Build the docker container
```sh
  docker build . --tag iota-seed-recovery-from-ledger:latest
```

After building the container, start the docker container interactive
```sh
  docker run -it iota-seed-recovery-from-ledger
```

### Download prepared docker image (This image is build with my script)

```sh
  docker pull mosdev82/iota-seed-recovery-from-ledger
```

After pulling the container, start the docker container interactive
```sh
  docker run -it mosdev82/iota-seed-recovery-from-ledger
```

You will be prompted for the 24 words! After entering these words, you will get your 81 char Trinity SEED.
Use this SEED in Firefly to recover your coins!

For your own security, disable the network connection to your computer! But you are able to check the tool from MuXxer and mine short script.
I just add the first line in the requirements.txt, because it was needed.

Disclaimer: All what you do is your OWN RISK! I don't pay for loosing your token or OTHER assets, stored with your ledger mnemonics!
Use an virtual machine without network connection during entering your mnemonics!!!
