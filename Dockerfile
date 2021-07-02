FROM debian:latest
# Update Debian Packagelist and OS
RUN apt-get -y clean && apt-get -y update && apt-get dist-upgrade -y

# Istall tzdata to prevent Time Zone Question
RUN apt-get -y install tzdata 
RUN dpkg-reconfigure --frontend noninteractive tzdata

# Install Git, Python and other required tools
RUN apt-get -y install git python python-pip rustc openssl libssl-dev

# Create /app directory and set as working directory
RUN mkdir /app
WORKDIR /app

# Clone from GITHUB Repository
RUN git clone https://github.com/muXxer/recover-iota-seed-from-ledger-mnemonics /app

# Copy new requirements.txt (added pyopenssl library)
COPY requirements.txt .

# Install requirements
RUN pip install -r requirements.txt

# run the ledger recovery
ENTRYPOINT ["python"]
CMD ["mnemonics_to_iota_seed.py"]
