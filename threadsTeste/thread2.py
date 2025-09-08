import time 
import threading
import random

def downloadArquivo(nome):
    tempo = random.randint()
    print(f"Download iniciado de {nome} tempo previsto {tempo}")
    print(f"Download de {nome} concluído")

    arquivos = ["imagem.jpg", "video.mov", "audio.mp3", "meme.gif"]

    threads = []

    for arquivo in arquivos:
        inicio = threading.Thread(target=downloadArquivo, args=(arquivo,))
        threads.append(inicio)
        inicio.start()

    for inicio in threads:
        inicio.join()

print("Downloads finalizados!")