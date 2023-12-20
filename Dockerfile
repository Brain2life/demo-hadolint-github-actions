# Use a specific version of Ubuntu to ensure consistency.
# Replace '20.04' with the desired version as per your requirements.
FROM ubuntu:20.04

# Install curl with a specific version and clean up the apt cache to reduce the image size.
# Use `--no-install-recommends` to avoid installing unnecessary packages.
# Replace '7.68.0-1ubuntu2.5' with the version of curl available and compatible with your chosen Ubuntu version.
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl=7.68.0-1ubuntu2.5 && \
    rm -rf /var/lib/apt/lists/*

# The CMD instruction does not need modification.
CMD ["echo", "Hello, world!"]