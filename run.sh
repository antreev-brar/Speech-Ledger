# echo $1
# Assume file is in a folder.
cd $1
for f in *.mp3:
do 
    ffmpeg -i "$f" -ar 16000 "../wav/${f%.*}.wav"
done
cd ..
# audio to wav done.
mkdir dtln_out/
cd DTLN
python3 run_evaluation.py -i ../wav/ -o ../dtln_out/ -m ./pretrained_model/model.h5
cd ..
# dtln outputs stored in dtln_out folder.
cd Speaker-Diarization
python3 speakerDiarization.py
# speech diarized.
cd ..
python3 api.py


