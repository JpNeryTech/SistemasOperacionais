# Atividade 04 – Construção de Kernel

**Aluno:** João Pedro Pereira Nery 

## 1. Versão do Kernel

Compilei a versão **Linux 6.11.4**. Escolhi essa versão porque é **recente e estável**, então dava para testar novidades sem arriscar instabilidade. Também é bem documentada e fácil de encontrar no site oficial do kernel.

## 2. Configuração modificada

No `menuconfig` habilitei o **F2FS**, que é um sistema de arquivos feito para SSDs e memória flash. Fiz isso para testar uma funcionalidade nova que não vem habilitada por padrão.  
O que eu espero é que, se eu usar o sistema em um SSD, ele fique **mais rápido e eficiente na leitura e gravação de arquivos**.

## 3. Problemas durante a compilação

Não deu erro crítico, só apareceram algumas **warnings do compilador**, que são normais.  
Se desse algum erro sério, meu plano seria **ler a mensagem, verificar dependências ou configurações, instalar o que faltasse e tentar de novo**.

## 4. Riscos e benefícios de usar um kernel compilado

**Riscos:**  
- O sistema pode **não iniciar** se o kernel estiver mal configurado.  
- Alguns programas ou drivers podem **parar de funcionar**.  
- Você precisa cuidar manualmente das atualizações.

**Benefícios:**  
- Dá pra **personalizar o kernel** para o seu hardware.  
- Pode ativar recursos que o kernel da distro não traz por padrão.  
- Ajuda a entender **como o sistema realmente funciona** por dentro.

## 5. Quando vale a pena compilar seu próprio kernel

1. **Otimizar para seu computador ou servidor**, removendo coisas que não usa e deixando só o necessário.  
2. **Habilitar recursos novos ou específicos**, como sistemas de arquivos diferentes ou opções de segurança.  

Também é interessante para estudar, desenvolver kernels ou ajustar sistemas embarcados.

## 6. Plano de contingência caso o sistema não inicialize

- Inicializar pelo **kernel antigo** no GRUB.  
- Recompilar o kernel corrigindo o problema.  
- Se necessário, usar um **live CD/USB** para acessar o sistema, restaurar arquivos ou reinstalar o kernel estável.
