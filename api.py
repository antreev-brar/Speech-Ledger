import requests
import glob

headers = {'Authorization' : 'Token 3715119fd7753d33bedbd3c2832752ee7b0a10c7'}
data = {'user' : '310' ,'language' : 'HI'}
files=glob.glob('**/*_main.wav',recursive=True)

for f in files:
    file = {'audio_file' : open(f,'rb')}
    url = 'https://dev.liv.ai/liv_transcription_api/recordings/'
    res = requests.post(url, headers = headers, data = data, files = file)
    print(f,end=':')
    print(res.json())
