# echo $1
# Assume file is in a folder.
for f in $(ls $1):
do 
    ffmpeg -i $1/$f -ar 16000 wav/$f.wav
done
# audio to wav done.

