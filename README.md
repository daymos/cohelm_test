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


### Next steps
I have to stop here for lack of time. But the next step I would introduce is to reprocess answers with low confidence. Ideally, I could reinitialize the llm with a lower temperature and see if I get a better confidence score. Failing that I could also introduce a difference model and ensamble the results with the best confidence. 
