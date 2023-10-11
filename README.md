# Mattia Spinelli's submission to Co:Helm coding challenge

### How to run the app
The easiest and best way is to load the notebook in Colab and follow the instructions in the notebook.

### How to run the docker image
I tested the docker image on a Linux Fedora11, with 64 GB + RTX6000 GPU x2 and it ran fine without quantization.
I used these commands:
```
docker build . -t app
docker run -d --name app_container app:latest
docker logs app_container --follow 
```

### Note
The quality of the results is better in the notebook because the notebook and the docker image code diverge a little. This is due to refactoring in going from the notebook to python repo and to last-minute improvements applied to the notebook that I didn't port to the Python app.
