# echo $1
# Assume file is in a folder.
for f in $(ls $1):
do 
    ffmpeg -i $f -ar 16000 wav/$f.wav
done
# audio to wav done.
mkdir dtln_out/
python3 DTLN/run_evaluation.py -i wav/ -o dtln_out/ -m ./dtln_/pretrained_model/model.h5
# dtln outputs stored in dtln_out folder.
python3 Speaker-Diarization/speakerDiarization.py
# speech diarized.
python3 api.py

