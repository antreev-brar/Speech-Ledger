# Speaker-Diarization [*Paper 1*](https://arxiv.org/pdf/1902.10107.pdf) [*Paper 2*](https://arxiv.org/abs/1810.04719)

This model is combination of:
* Text-independent Speaker recognition module based on VGG-Speaker-recognition acting as ***Encoder***.
* Speaker diarization based on UIS-RNN as ***Decoder***</br>
The two projects are linked by generating speaker embeddings to make everything easier, and also provide an intuitive display panel.

## Usage:
**speakerDiarization.py**
Uses pretrained uisrnn model in **pretrained** subdirectory and pretrained model weights from **ghostvlad/pretrained/weights.h5**.
```bash
$ python speakerDiarization.py
```
This will provide different speakers timestamps and make audio file of main speaker in **output** directory.

## Python Dependencies
* pytorch
* keras
* Tensorflow
* pyaudio
