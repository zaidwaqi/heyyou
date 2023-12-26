FROM quay.io/centos/centos:stream8

RUN dnf install -y python3.11 glibc-langpack-en

# Create and activate virtual environment
RUN python3.11 -m venv /venv
ENV PATH="/venv/bin:$PATH"

# Install Twine in Python
RUN python3.11 -m pip install build twine pytest

# Copy .pypirc file for PyPI credentials
COPY .pypirc /root/.pypirc

# Set virtual environment as entrypoint
ENTRYPOINT ["/bin/bash"]
