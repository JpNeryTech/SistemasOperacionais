import threading #Importamos a threads aqui vai permitir executar tarefas ao mesmo tempo
import time #importamos o time ele é usado para fazer pausas (sleep)

def thread1(): 
    for i in range(1, 11): #Aqui e o loop que vai percorrer de 1 até 10 (Range = serve para ter a sequência INICIO e FIM) e tambem poderia ter a quant de passo por exemplo pular de 1 em 1 ou 2 em 2
        print(f"Thread-1 {i}")
        time.sleep(1) #Aqui vai pausar o programa por 1 segundo antes de imprimir o proximo número
         
def thread2():
    for i in range(5, 61): #vai ate 61 porque o range inclui o inicio mas ele tira o fim, então se estivesse ate 60 apareceria até 59
        print(f"Thread-2: {i}")
        time.sleep(1)

t1 = threading.Thread(target=thread1) #Cria a thread que vai executar a funcao que criamos em cima thread1
t2 = threading.Thread(target=thread2) #Cria a thread que vai executar a outra funcao

#As threads foram criadas porem nao foram inicializadas 

t1.start() #start serve para iniciar a execucao
t2.start()

#Agora sim todas as threads foram criadas e estao em execucao e rodando ao mesmo tempo

t1.join() #Join faz com que o programa espere cada thread terminar antes de continuar
t2.join() #Sem o join o programa poderia terminar antes da thread assim provavelmente iria faltar algum numero

print("Threads FINALIZADAS!!")