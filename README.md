# Auto-Palera1n 2.0
Código fonte de jailbreak automatizado da equipe oficial do palera1n. Recusem imitações!
Todas demais formas de jailbreak do palera1n, visite:
https://github.com/Italogc/Palera1n


<h4>RECOMENDADO: Ubuntu_22.04 ou Linux_Mint21+ ou Debian11+</h4>

<h4>SUPORTA: iPhones, iPod Touchs e iPads:</h4>
<h4>• iOS15.0 ao 16.3.1</h4>
<h4>• SoC's A8, A8X, A9, A10, A10X e A11</h4>

<h4>COMANDOS:</h4>

<pre>sudo apt-get install git -y</pre>

<pre>sudo git clone --recursive https://github.com/Italogc/Auto-Palera1n2 && cd Auto-Palera1n2</pre>

<pre>sudo chmod 777 install.sh</pre>

<pre>sudo ./install.sh</pre>


<h4>PARA FAZER O JAILBREAK: (no lugar do XX.X.X bote sua versão atual do ios do seu aparelho!</h4>

<h2>1 - Para jailbreak Tethered:</h2>

<pre>cd palera1n</pre>

<pre>sudo ./palera1n.sh --tweaks XX.X.X</pre>


<h2>2 - Para jailbreak Semi-Tethered:</h2>

<pre>cd palera1n</pre>

<pre>sudo ./palera1n.sh --tweaks XX.X.X --semi-tethered</pre>


<h2>3 - Para desfazer o Jailbreak em caso de erros:</h2>

<pre>cd palera1n</pre>

<pre>sudo ./palera1n.sh --restorerootfs XX.X.X</pre>


<h2>4 - Comandos do USBMUXD2 (caso necessário)</h2>
<h3>4.1 - Com essa versão automatizada os comandos do usbmuxd2 da segunda janela de terminal já ficaram obsoletos, porque o seu aparelho já é reconhecido pelo terminal do jailbreak automaticamente, caso contrário é só desplugar e replugar o cabo usb no computador linux com o terminal do palera1n aberto.</h3>
<h3>4.2 - Ainda assim, aqui estão eles:</h3>

<h3>4.3 - Versão passada (legacy):</h3>
<h4>4.3.1 - Para ativar o usbmuxd2:</h4>
<pre>sudo /sbin/usbmuxd -f -p</pre>
<h4>4.3.2 - Para desativar o usbmuxd2:</h4>
<pre>sudo systemctl stop usbmuxd</pre>

<h3>4.4 - Versão Atual (2023):</h3>
<h4>4.4.1 - Para ativar o usbmuxd2:</h4>
<pre>sudo systemctl enable --now usbmuxd</pre>
<h4>4.4.2 - Para desativar o usbmuxd2:</h4>
<pre>sudo systemctl disable --now usbmuxd</pre>


<h2>5 - Problemas com o libimobiledevice (caso necessário)</h2>
<h3>5.1 - Abra uma janela de terminal e copie e cole os comandos abaixo:</h3>
<pre>/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"</pre>

<h3>5.2 - Aperte "ENTER" no teclado quando pedir...</h3>
<h3>5.3 - Bote os comandos que pedirem no terminal em 'NEXT STEPS'</h3>
<h3>5.4 - Depois disso:</h3>
<pre>sudo apt-get install build-essential</pre>
<pre>brew install gcc</pre>
<pre>brew unlink libimobiledevice</pre>
<pre>brew install --HEAD libimobiledevice</pre>

Discord oficial dos desenvolvedores oficiais do Palera1n:
https://discord.com/invite/kTWu45AKRU

Observação Importante: Tem um usuário fake no github com os nomes de "john" ou "cozmo" que diz que o palera1n é de sua autoria e que vai processar todos que botarem o Palera1n nessa plataforma, então caso vejam esse camarada na plataforma dando os crédito para si próprio ao invés de dar os créditos aos verdadeiros desenvolvedores da ferramenta, sugiro que ignorem esse usuário e me ajudem a denunciarem ele em massa para o github, pois no último natal ele botou no seu github um código malicioso que ferrou muitos aparelhos ios de usuarios pelo mundo. E saibam que eu sou apenas o criador e editor desse código que facilita e muito a vida de muitos usuários para melhor instalação dos documentos e arquivos necessários para utilizar o palera1n no seu sistema linux, e antes de mais nada eu não tiro os créditos por lei dos devidos e oficiais criadores da ferramenta Palera1n, ao invés de imitar tal usuário que se julga o legítimo dono de tal.


