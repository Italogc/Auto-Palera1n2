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






