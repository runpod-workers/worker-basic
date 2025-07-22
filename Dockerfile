FROM python:3.10-slim

WORKDIR /
COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt
COPY rp_handler.py /
COPY test_input.json /

# Start the container
CMD ["python3", "-u", "rp_handler.py"]