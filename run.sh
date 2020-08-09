#!/bin/bash
# mp3 to wav conversion
pushd $1
for i in *.mp3
do 
    ffmpeg -i "$i" -ar 16000 "../wav/${i%.*}.wav"
done
popd
# make dtln_out folder
mkdir dtln_out/
# DTLN processing
pushd DTLN
python3 run_evaluation.py -i ../wav/ -o ../dtln_out/ -m ./pretrained_model/model.h5
popd
# Speaker Diaraization
pushd Speaker-Diarization
python3 speakerDiarization.py
popd
# Transcription API
python3 api.py


