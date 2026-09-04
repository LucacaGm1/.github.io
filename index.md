---
layout: page
title: "Proteção Contra Canais Laterais em Urnas Eletrônicas"
permalink: /
---

<div class="civic-banner">
  <div class="civic-tag">Pesquisa de Extensão &bull; UTFPR Ponta Grossa &amp; UFG</div>
  <h1 class="civic-title">Proteção Eletromagnética de Baixo Custo para a Urna Eletrônica Brasileira</h1>
  <div class="civic-meta">
    Investigação de segurança física sobre emanações de vídeo (TEMPEST) e validação de ruído espectral para preservação do sigilo do voto <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-5' | relative_url }}" class="cite-ref">[5]</a>.
  </div>
</div>

<div class="context-box">
  <h4>Sobre a Proposta</h4>
  <p>
    As urnas eletrônicas mais recentes (modelos UE2020 e UE2022) contam com blindagem que atenua naturalmente os sinais eletromagnéticos a partir de meio metro de distância <a href="{{ '/referencias/#ref-13' | relative_url }}" class="cite-ref">[13]</a>. No entanto, para cobrir modelos legados e neutralizar cenários com agentes muito próximos ou cabines encostadas em paredes vizinhas, este projeto de extensão da <strong>UTFPR Ponta Grossa</strong> e <strong>UFG</strong> avalia uma solução prática: o uso de monitores comuns transmitindo ruído visual ("chiado") para mascarar o sinal e resguardar o voto de mais de 155 milhões de eleitores <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-17' | relative_url }}" class="cite-ref">[17]</a>.
  </p>
</div>

<h2 style="font-size: 1.4rem; margin-top: 32px; margin-bottom: 14px;">Como Funciona o Ruído Protetor?</h2>

<p>
  Telas de computador e cabos de vídeo emitem ondas de rádio involuntárias enquanto funcionam <a href="{{ '/referencias/#ref-5' | relative_url }}" class="cite-ref">[5]</a>. Um receptor de Rádio Definido por Software (SDR) sintonizado na frequência certa pode interceptar essas ondas e tentar desenhar na tela o que o eleitor está vendo <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a>.
</p>

<div class="info-panel">
  <h4>A Solução Baseada em Estática de Vídeo</h4>
  <p style="font-size: 0.95rem; margin-bottom: 10px;">
    Ao posicionar uma tela auxiliar comum na seção eleitoral reproduzindo um sinal contínuo de estática ("chiado"), geramos uma interferência inofensiva exatamente na mesma frequência do sinal da urna <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-2' | relative_url }}" class="cite-ref">[2]</a>.
  </p>
  <p style="font-size: 0.95rem; margin-bottom: 0;">
    Essa sobreposição destrói a nitidez do sinal captado pelo rádio espião, transformando a imagem do voto em ruído ilegível sem exigir nenhuma alteração física no hardware lacrado da urna eletrônica <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-7' | relative_url }}" class="cite-ref">[7]</a>.
  </p>
</div>

<h2 style="font-size: 1.4rem; margin-top: 36px; margin-bottom: 14px;">Evidência Experimental em Laboratório</h2>

<p>
  Durante os ensaios no laboratório da UTFPR, capturamos o sinal de vídeo sem a presença do ruído protetor para demonstrar a viabilidade do ataque:
</p>

<div class="figure-frame">
  <img src="{{ '/assets/images/1mdaurna.png' | relative_url }}" alt="Reconstrução de tela da urna eletrônica a 1 metro de distância">
  <div class="figure-legend">
    <strong>Figura 1.</strong> Reconstrução de sinal de tela da Urna Eletrônica captada à distância de 1,0 metro sem acionamento de ruído protetor <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>. Com o monitor de estática ligado na mesma seção, a imagem é completamente neutralizada.
  </div>
</div>

<h2 style="font-size: 1.4rem; margin-top: 36px; margin-bottom: 14px;">Navegação do Portal</h2>

<p>
  Conheça os detalhes completos da pesquisa nas seções temáticas:
</p>

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(240px, 1fr)); gap: 16px; margin-top: 16px;">
  <div class="info-panel" style="margin-bottom: 0;">
    <h4><a href="{{ '/problema/' | relative_url }}">O Problema</a></h4>
    <p style="font-size: 0.9rem;">Entenda como os sinais vazam pelo ar e conheça a análise de plantas reais de seções eleitorais.</p>
  </div>

  <div class="info-panel" style="margin-bottom: 0;">
    <h4><a href="{{ '/sdr/' | relative_url }}">Rádios SDR</a></h4>
    <p style="font-size: 0.9rem;">Veja como funcionam os rádios autônomos e de bancada utilizados nos ensaios técnicos.</p>
  </div>

  <div class="info-panel" style="margin-bottom: 0;">
    <h4><a href="{{ '/sobre/' | relative_url }}">Sobre a Pesquisa</a></h4>
    <p style="font-size: 0.9rem;">Conheça a equipe de professores e estudantes da UTFPR e UFG e os objetivos junto ao TPS do TSE.</p>
  </div>

  <div class="info-panel" style="margin-bottom: 0;">
    <h4><a href="{{ '/referencias/' | relative_url }}">Referências</a></h4>
    <p style="font-size: 0.9rem;">Acesse o catálogo completo de artigos científicos, jurisprudências e normas técnicas.</p>
  </div>
</div>
