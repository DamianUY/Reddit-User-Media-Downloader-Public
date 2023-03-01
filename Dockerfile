FROM python:3.11.2

RUN apt-get update && apt-get install -y git libsm6 libxext6 ffmpeg libfontconfig1 libxrender1 libgl1-mesa-glx
RUN git --version

WORKDIR /usr/src/app

RUN git clone https://github.com/DamianUY/Reddit-User-Media-Downloader-Public

WORKDIR /usr/src/app/Reddit-User-Media-Downloader-Public

RUN pip install imagededup==0.3.1 --no-dependencies
RUN pip install matplotlib==3.7.0
RUN pip install scikit-learn==1.2.1
RUN pip install PyWavelets~=1.4.1
RUN pip install youtube_dl==2021.12.17
RUN pip install cython==0.29.33
RUN pip install opencv-python==4.7.0.72
RUN pip install Pillow==9.4.0
RUN pip install tqdm==4.64.1
RUN pip install tensorflow==2.11.0

ENTRYPOINT ["python3", "reddit-media-downloader.py"]
