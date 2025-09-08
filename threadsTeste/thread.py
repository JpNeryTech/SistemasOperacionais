# importando biblioteca
import threading
import time
import math

# Estrutura da thread
def estrutura(nome, inicio, fim):
    for i in range(inicio, fim +1):
        print(f"{nome} -> {i}")
        #pausa entre as durações de contagem
    time.sleep(1)

#Criar thread 
thread = threading.Thread(target=estrutura,
args=("Thread", 1, 10))
thread2 = threading.Thread(target=estrutura, 
args=("Thread-2", 10, 20))

#rodar
thread.start()
thread2.start()

thread.join()
thread2.join()