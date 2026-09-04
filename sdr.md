---
layout: page
title: "Dispositivos de Captura: Rádios SDR"
permalink: /sdr/
---

<div class="paper-masthead">
  <div class="paper-context">Engenharia de Rádio // Equipamentos e Demodulação</div>
  <h1 class="paper-title">Arquitetura dos Receptores de Rádio Definido por Software (SDR)</h1>
  <div class="paper-meta">
    Investigação dos dispositivos de recepção de RF e ferramentas computacionais aplicadas à espionagem de sinais de vídeo <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a>.
  </div>
</div>

<h2 style="font-size: 1.45rem; margin-top: 30px; margin-bottom: 16px;">
  <span class="section-num">§ 1.</span> O Papel do SDR na Cadeia de Interceptação
</h2>

<p>
  Em contraste com receptores de rádio convencionais que possuem circuitos integrados rígidos projetados exclusivamente para áudio analógico, os <strong>Rádios Definidos por Software (SDR)</strong> utilizam conversores analógico-digitais (ADC) de alta velocidade acoplados a matrizes de portas lógicas programáveis (FPGA) e barramentos de dados rápidos. O processamento de sinal &mdash; filtragem de canal, sincronismo de quadros e demodulação &mdash; é inteiramente delegado a software executado em tempo real ou processado offline <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a>.
</p>

<p>
  Nos ensaios realizados pela equipe da UTFPR, as ferramentas open-source baseadas no ecossistema <strong>GNU Radio</strong> e no módulo <code>gr-tempest</code> <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a> viabilizam a detecção cega das frequências de clock e taxa de quadros <a href="{{ '/referencias/#ref-2' | relative_url }}" class="cite-ref">[2]</a> <a href="{{ '/referencias/#ref-3' | relative_url }}" class="cite-ref">[3]</a>, reconstruindo a matriz de pixels a partir de amostras de radiofrequência brutas (I/Q).
</p>

<h2 style="font-size: 1.45rem; margin-top: 36px; margin-bottom: 16px;">
  <span class="section-num">§ 2.</span> Análise das Arquiteturas Estudadas
</h2>

<div class="tech-block">
  <div class="tech-block-title">Plataforma Autônoma Portátil // Classe de Risco Furtivo</div>
  <h4>Ettus USRP E312 / Série USRP E3xx</h4>
  <p style="font-size: 0.95rem; margin-bottom: 8px;">
    Esta família de SDRs representa o vetor mais crítico para o Cenário 2 (agente interno) <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>. O dispositivo integra um circuito System-on-Chip (SoC) com núcleos de processamento ARM rodando Linux embarcado, dispensando computador externo.
  </p>
  <p style="font-size: 0.95rem; margin-bottom: 0;">
    Alimentado por bateria interna de íons de lítio e pesando menos de 500 gramas em chassi metálico selado sem telas ou botões, pode ser facilmente transportado no bolso ou mochila por mesários e fiscais, gravando o espectro de radiofrequência silenciosamente durante o horário de votação para posterior extração dos votos digitados.
  </p>
</div>

<div class="tech-block">
  <div class="tech-block-title">Plataforma de Bancada // Referência Experimental</div>
  <h4>Ettus USRP B200</h4>
  <p style="font-size: 0.95rem; margin-bottom: 8px;">
    O USRP B200 é a plataforma flexível adotada na bancada experimental da UTFPR <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-3' | relative_url }}" class="cite-ref">[3]</a>. O equipamento faz o front-end de radiofrequência (sintonizando faixas de 70 MHz a 6 GHz) e transmite as amostras brutas via interface USB 3.0 para processamento imediato em computador de alto desempenho.
  </p>
  <p style="font-size: 0.95rem; margin-bottom: 0;">
    Embora dependente de um computador host externo, sua alta taxa de transferência (até 56 MHz de largura de banda instantânea) torna-o o equipamento ideal para testes de caracterização espectral e avaliação da eficácia da contramedida de ruído.
  </p>
</div>

<h2 style="font-size: 1.45rem; margin-top: 36px; margin-bottom: 16px;">
  <span class="section-num">§ 3.</span> Especificações Técnicas Comparadas
</h2>

<table>
  <thead>
    <tr>
      <th>Parâmetro</th>
      <th>Ettus USRP E312 (Portátil)</th>
      <th>Ettus USRP B200 (Bancada)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Fonte de Alimentação</strong></td>
      <td>Bateria interna recarregável</td>
      <td>Barramento USB 3.0 ou fonte externa</td>
    </tr>
    <tr>
      <td><strong>Capacidade de Processamento</strong></td>
      <td>Dual-core ARM Cortex-A9 + Xilinx Zynq FPGA</td>
      <td>Spartan-6 FPGA (requer PC host)</td>
    </tr>
    <tr>
      <td><strong>Armazenamento de Amostras</strong></td>
      <td>Cartão MicroSD / eMMC integrado (autônomo)</td>
      <td>Armazenamento em disco do computador host</td>
    </tr>
    <tr>
      <td><strong>Faixa de Cobertura de RF</strong></td>
      <td>70 MHz a 6,0 GHz</td>
      <td>70 MHz a 6,0 GHz</td>
    </tr>
    <tr>
      <td><strong>Associação a Cenários</strong></td>
      <td>Cenário 2 (Operador infiltrado / &lt; 0,5 m)</td>
      <td>Cenário 1 (Sala adjacente com veículo / &asymp; 1,0 m)</td>
    </tr>
  </tbody>
</table>

<h2 style="font-size: 1.45rem; margin-top: 36px; margin-bottom: 16px;">
  <span class="section-num">§ 4.</span> Precedentes e Jurisprudência Eleitoral
</h2>

<p>
  A possibilidade de utilização de dispositivos eletrônicos compactos em seções eleitorais não é uma hipótese teórica abstrata. A jurisprudência eleitoral brasileira já registra cassações concretas motivadas pelo porte não autorizado de tecnologias de vigilância em cabines de votação, com destaque para o acórdão do TRE-PA no <strong>Recurso Eleitoral nº 0600629-58.2024.6.14.0074</strong> (município de Ourilândia do Norte, PA) <a href="{{ '/referencias/#ref-15' | relative_url }}" class="cite-ref">[15]</a>, no qual eleitores foram cooptados mediante entrega de óculos equipados com microcâmeras embutidas para comprovação do voto.
</p>

<p>
  Enquanto a vigilância óptica depende de lentes visíveis e linha de visada desobstruída para o painel da urna (podendo ser coibida por inspeção visual), os receptores SDR interceptam ondas de radiofrequência passivas capazes de atravessar biombos, carteiras e alvenarias, reforçando a necessidade impreterível de <strong>contramedidas ativas baseadas em ruído eletromagnético</strong> <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
</p>
