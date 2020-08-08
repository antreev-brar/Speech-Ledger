t1= 20
t2= 30
t3= 40
t4= 45
from pydub import AudioSegment
t1 = t1 * 1000 #Works in milliseconds
t2 = t2 * 1000
t3 = t3 * 1000
t4 = t4 * 1000
newAudio = AudioSegment.from_wav("test00clean.wav")
newAudio = newAudio[t1:t2]
newAudio2 = AudioSegment.from_wav("test00clean.wav")
newAudio2 = newAudio2[t3:t4]
final = newAudio + newAudio2
final.export('newSong3.wav', format="wav")