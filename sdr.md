---
layout: page
title: "Dispositivos de Captura: Rádios SDR"
permalink: /sdr/
---

<div class="civic-banner">
  <div class="civic-tag">Engenharia e Equipamentos // Rádios SDR</div>
  <h1 class="civic-title">Os Dispositivos Usados na Interceptação de Sinais</h1>
  <div class="civic-meta">
    Entenda como funcionam os Rádios Definidos por Software e as diferenças entre modelos portáteis e de bancada <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a>.
  </div>
</div>

<h2 style="font-size: 1.4rem; margin-top: 30px; margin-bottom: 14px;">O Que É um Rádio SDR?</h2>

<p>
  Um rádio comum de carro ou de casa só consegue sintonizar estações de som analógicas previamente programadas. Já um <strong>Rádio Definido por Software (SDR)</strong> é um equipamento versátil que usa programas de computador para receber e processar praticamente qualquer faixa de frequência de ondas de rádio <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a>.
</p>

<p>
  Com ferramentas livres como o <strong>GNU Radio</strong> e o módulo <code>gr-tempest</code> <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a>, os sinais capturados pela antena são decodificados em tempo real para transformar ondas eletromagnéticas em imagens de tela <a href="{{ '/referencias/#ref-2' | relative_url }}" class="cite-ref">[2]</a> <a href="{{ '/referencias/#ref-3' | relative_url }}" class="cite-ref">[3]</a>.
</p>

<h2 style="font-size: 1.4rem; margin-top: 36px; margin-bottom: 14px;">Os Modelos Analisados na Pesquisa</h2>

<div class="info-panel" style="border-left: 4px solid #b91c1c;">
  <div style="font-size: 0.8rem; font-weight: 700; color: #b91c1c; text-transform: uppercase; margin-bottom: 6px;">Maior Risco de Discrição // Autônomo</div>
  <h4>Ettus USRP E312 (Portátil a Bateria)</h4>
  <p style="font-size: 0.95rem; margin-bottom: 8px;">
    Este modelo é o mais preocupante para o ambiente de votação (Cenário 2) <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>. Ele possui um computador embutido rodando Linux e funciona totalmente a bateria, sem precisar de tomadas ou fios externos.
  </p>
  <p style="font-size: 0.95rem; margin-bottom: 0;">
    Como é uma caixa de metal discreta que cabe facilmente no bolso ou em uma mochila, ele poderia ser operado silenciosamente para gravar os dados de radiofrequência e analisá-los depois.
  </p>
</div>

<div class="info-panel" style="border-left: 4px solid var(--color-primary);">
  <div style="font-size: 0.8rem; font-weight: 700; color: var(--color-primary); text-transform: uppercase; margin-bottom: 6px;">Modelo de Laboratório // Conectado a Computador</div>
  <h4>Ettus USRP B200 (Bancada)</h4>
  <p style="font-size: 0.95rem; margin-bottom: 8px;">
    É o equipamento de referência utilizado pela equipe da UTFPR nos ensaios práticos <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-3' | relative_url }}" class="cite-ref">[3]</a>.
  </p>
  <p style="font-size: 0.95rem; margin-bottom: 0;">
    Ele precisa estar conectado a um computador potente por cabo USB 3.0 para processar as imagens. Por ser mais volumoso e depender de notebook, é típico para ataques montados em salas vizinhas ou veículos próximos (Cenário 1) <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
  </p>
</div>

<h2 style="font-size: 1.4rem; margin-top: 36px; margin-bottom: 14px;">Comparativo de Características</h2>

<table>
  <thead>
    <tr>
      <th>Característica</th>
      <th>USRP E312 (Portátil)</th>
      <th>USRP B200 (Bancada)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Alimentação</strong></td>
      <td>Bateria interna própria</td>
      <td>Cabo USB ou fonte externa</td>
    </tr>
    <tr>
      <td><strong>Processamento</strong></td>
      <td>Processador e memória internos</td>
      <td>Depende de computador conectado</td>
    </tr>
    <tr>
      <td><strong>Armazenamento</strong></td>
      <td>Cartão de memória integrado</td>
      <td>Disco rígido do computador</td>
    </tr>
    <tr>
      <td><strong>Faixa de Cobertura</strong></td>
      <td>70 MHz a 6 GHz</td>
      <td>70 MHz a 6 GHz</td>
    </tr>
    <tr>
      <td><strong>Cenário Típico</strong></td>
      <td>Cenário 2 (Operador próximo / &lt;0,5m)</td>
      <td>Cenário 1 (Sala vizinha / ~1,0m)</td>
    </tr>
  </tbody>
</table>

<h2 style="font-size: 1.4rem; margin-top: 36px; margin-bottom: 14px;">Precedentes e Casos Reais na Justiça Eleitoral</h2>

<p>
  O risco de uso de equipamentos eletrônicos para burlar o sigilo do voto é uma preocupação real para os tribunais. No Pará, o TRE-PA cassou o mandato de um vereador no município de Ourilândia do Norte após ser comprovado o uso de armações de óculos com microcâmeras para fiscalizar o voto de eleitores <a href="{{ '/referencias/#ref-15' | relative_url }}" class="cite-ref">[15]</a>.
</p>

<p>
  Diferente de câmeras &mdash; que exigem lente apontada diretamente para a tela e podem ser notadas &mdash;, o rádio SDR capta ondas invisíveis que atravessam paredes. Por isso, medidas como o <strong>ruído protetor nos monitores da seção</strong> são indispensáveis para garantir a tranquilidade do eleitor <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
</p>
