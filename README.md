# Flipkart Grid 2.0 : Software Development Challenge
# *Solving for Voice Interactions in Indian Houses & Neighborhoods*
<img src="assets/flipkart-grid-logo.jpg"></img>

## Contributors

<table>
  <tr>
    <td align="center"><a href="https://github.com/antreev-brar"><img src="https://avatars3.githubusercontent.com/u/57298405?s=460&u=12872e3c1a80847f597ec1cde810f33b75ccbad9&v=4" width="100px;" alt=""/><br /><sub><b><i>Antreev Singh Brar</i></b></sub></a></td>
   <td align="center"><a href="https://github.com/gurbaaz27"><img src="https://avatars0.githubusercontent.com/u/60743677?s=460&u=339e0534f4782ae1d822cf07474ec3c5653a3db5&v=4" width="100px;" alt=""/><br /><sub><b><i>Gurbaaz Singh Nandra</i></b></sub></a></td>
    <td align="center"><a href="https://github.com/SomTambe"><img src="https://avatars3.githubusercontent.com/u/20859602?s=460&u=b5305f8206d736e2e421c3cbb3ee2a5e0c2a0a28&v=4" width="100px;" alt=""/><br /><sub><b><i>Som Tambe</i></b></sub></a></td>
  </tr>
</table>

## Github Repository Link   

https://github.com/antreev-brar/FlipkartGrid

## Usage
* Clone the repository to 
  * Local System:
  ```bash
  git clone https://github.com/antreev-brar/FlipkartGrid.git
  ```
  * Google Colab:
  ```bash
  !git clone https://github.com/antreev-brar/FlipkartGrid.git
  ```
* Install the dependencies
  * For Windows:
  ```bash
  pip install -r requirements.txt
  ```
  * For Linux/Mac:
  ```bash
  pip3 install -r requirements.txt
  ```
  * For Google Colab:
  ```bash
  !pip install -r requirements.txt
  ```
* Execute the bash script for whole process:
  * Local System:
  ```bash
  chmod u+x run.sh
  ./run.sh input-folder-name
  ```
  * Google Colab:
  ```bash
  !chmod u+x run.sh
  !./run.sh input-folder-name
  ```
  **NOTE**: By default, we have made **mp3** folder for input-folder-name. So write **mp3** in the command line in that place to use default.
  
## Post Execution Process
* **ffmpeg** converts .mp3 audios and populate the .wav audios in **wav** folder.
* **DTLN** performs noise suppression and stores processed wavs in **output** folder.
* **Speaker-Diarization** identifies main speaker and stores audio of main speaker in **output** folder.
* **transcription_api.py** processes each file and stores the transcriptions in **transcription** folder.

## Relevant Links
* [Demonstartion in Colab](https://colab.research.google.com/drive/18cd1lg0DKLcm7ePbJ67IEWER89Bp-YR0?usp=sharing)
* [Video Demonstration](#)
* [Audio Clips](https://drive.google.com/drive/folders/1PzCtO1VivCnh-Pa_QnBKvpTWxotJkPTc?usp=sharing)
* [Transcripted JSON files](https://drive.google.com/drive/folders/1UfyjHkWE4rEfm-6cLETjHEBXNVw2n1W6?usp=sharing)

## Acknowledgments
* [DTLN](https://github.com/breizhn/DTLN) ([*Paper*](https://arxiv.org/abs/2005.07551))
* [Speaker-Diarization](https://github.com/taylorlu/Speaker-Diarization) ([*Paper1*](https://arxiv.org/pdf/1902.10107.pdf)) ([*Paper2*](https://arxiv.org/abs/1810.04719))
