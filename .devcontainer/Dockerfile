FROM debian:bookworm-slim

# Install Agda, Agda standard library, and minimal TeX Live environment
RUN apt-get update && apt-get install -y --no-install-recommends \
    agda-bin \
    agda-stdlib \
    git && \
    apt-get clean && rm -rf /var/lib/apt/lists/*


# Verify installations and expected file locations
RUN agda --version
RUN test -f /usr/bin/agda
RUN test -d /usr/share/agda-stdlib

# Manually create standard-library.agda-lib file to match Debian's structure
RUN echo "name: standard-library" > /usr/share/agda-stdlib/standard-library.agda-lib && \
    echo "include: ." >> /usr/share/agda-stdlib/standard-library.agda-lib

# Configure Agda to find the standard library correctly
RUN mkdir -p /root/.agda && \
    echo "/usr/share/agda-stdlib/standard-library.agda-lib" > /root/.agda/libraries && \
    echo "standard-library" > /root/.agda/defaults