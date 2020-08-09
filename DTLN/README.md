# Dual-signal Transformation LSTM Network [*Paper*](http://arxiv.org/abs/2005.07551)

+ Tensorflow 2.x implementation of the stacked dual-signal transformation LSTM network (DTLN) for real-time noise suppression.

This approach combines a short-time Fourier transform (STFT) and a learned analysis and synthesis basis in a stacked-network approach with less than one million parameters. The model was trained on 500h of noisy speech provided by the challenge organizers. The network is capable of real-time processing (one frame in, one frame out) and reaches competitive results.
Combining these two types of signal transformations enables the DTLN to robustly extract information from magnitude spectra and incorporate phase information from the learned feature basis. The method shows state-of-the-art performance and outperforms the DNS-Challenge baseline by 0.24 points absolute in terms of the mean opinion score (MOS).

### Usage:

**run_evaluation.py** \
  Script to process a folder with optional subfolders containing .wav files with a trained DTLN model. With the pretrained model delivered with this repository a folder can be processed as following: \
  `$ python run_evaluation.py -i /path/to/input -o /path/for/processed -m ./pretrained_model/model.h5` \
  The evaluation script will create the new folder with the same structure as the input folder and the files will have the same name as the input files.
+  **./pretrained_model/** \
   * `model.h5`: Model weights as used in the DTLN model.
   
### Python dependencies:

The following packages will be required for this repository:
* TensorFlow (2.x)
* librosa
* wavinfo 
* soundfile
* numpy
