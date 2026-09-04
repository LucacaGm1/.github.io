---
layout: page
title: "O Problema: Ataques TEMPEST"
permalink: /problema/
---

<div class="paper-masthead">
  <div class="paper-context">Fundamentação Técnica // Vetores de Ataque</div>
  <h1 class="paper-title">Canais Laterais Eletromagnéticos em Interfaces Gráficas de Votação</h1>
  <div class="paper-meta">
    Análise física dos vetores de radiação não intencional e vulnerabilidades topológicas em locais de votação <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-5' | relative_url }}" class="cite-ref">[5]</a>.
  </div>
</div>

<h2 style="font-size: 1.45rem; margin-top: 30px; margin-bottom: 16px;">
  <span class="section-num">§ 1.</span> O Fenômeno Físico da Radiação TEMPEST
</h2>

<p>
  Telas digitais e circuitos integrados gráficos operam com variações de corrente de alta frequência reguladas por sinais de sincronismo estritos (padrões VESA DMT) <a href="{{ '/referencias/#ref-16' | relative_url }}" class="cite-ref">[16]</a>. As linhas de transmissão condutoras &mdash; como cabos de conexão interna e pistas de circuitos impressos &mdash; atuam como antenas não intencionais, emitindo ondas eletromagnéticas proporcionais à intensidade e aos pulsos do sinal gráfico exibido <a href="{{ '/referencias/#ref-5' | relative_url }}" class="cite-ref">[5]</a> <a href="{{ '/referencias/#ref-7' | relative_url }}" class="cite-ref">[7]</a>.
</p>

<p>
  Com o emprego de Rádios Definidos por Software (SDR) e algoritmos de processamento digital, adversários posicionados fora do campo visual do eleitor conseguem sintonizar essas emanações harmônicas e sincronizar linhas e quadros para reconstruir em tempo real a imagem renderizada na tela da cabine de votação <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a>.
</p>

<h2 style="font-size: 1.45rem; margin-top: 36px; margin-bottom: 16px;">
  <span class="section-num">§ 2.</span> Cenários de Ameaça Mapeados pela Pesquisa
</h2>

<p>
  O estudo da UTFPR Ponta Grossa em conjunto com a UFG estruturou dois cenários críticos onde o sigilo do voto pode ser comprometido <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>:
</p>

<div class="tech-block">
  <div class="tech-block-title">Cenário 1 // Distância &asymp; 1,0 Metro (Através de Divisórias)</div>
  <h4>Captação em Ambiente Adjacente sem Contato Visual</h4>
  <p style="font-size: 0.95rem; margin-bottom: 0;">
    Em escolas e colégios eleitorais, cabines de votação costumam ser encostadas nas paredes que dividem salas de aula ou dão para corredores e áreas externas. O atacante posiciona uma antena de recepção na sala vizinha. As paredes comuns de alvenaria ou gesso acartonado (drywall) atenuam pouco as frequências harmônicas de interesse, permitindo a extração do sinal residual sem presença física na seção <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-2' | relative_url }}" class="cite-ref">[2]</a>.
  </p>
</div>

<div class="tech-block">
  <div class="tech-block-title">Cenário 2 // Distância &lt; 0,5 Metro (Proximidade Extrema / Agente Infiltrado)</div>
  <h4>Superação da Blindagem Passiva por Dispositivo Oculto</h4>
  <p style="font-size: 0.95rem; margin-bottom: 0;">
    As especificações de segurança dos modelos mais recentes de urnas (UE2020 e UE2022) incluem blindagens que reduzem expressivamente as emissões a partir de meio metro de distância <a href="{{ '/referencias/#ref-13' | relative_url }}" class="cite-ref">[13]</a>. Contudo, um agente interno cooptado &mdash; como mesário, fiscal de partido ou técnico credenciado portando um SDR miniatura a bateria &mdash; pode operar a menos de 50 centímetros da urna, superando o limiar de proteção da carcaça <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
  </p>
</div>

<h2 style="font-size: 1.45rem; margin-top: 36px; margin-bottom: 16px;">
  <span class="section-num">§ 3.</span> Contexto Físico Real de Seções Eleitorais
</h2>

<p>
  A viabilidade de ambos os cenários foi verificada a partir de levantamentos empíricos de plantas e disposições de salas em zonas eleitorais de Ponta Grossa (PR):
</p>

<div class="scientific-figure">
  <img src="{{ '/assets/images/exemplode_secao_eleitoral_adjacente_a_rua.png' | relative_url }}" alt="Planta esquemática de seção eleitoral">
  <div class="figure-meta">
    <strong>Figura 2.</strong> Disposição espacial real observada na Seção Eleitoral nº 47 em Ponta Grossa (PR) <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>. Note-se a contiguidade física imediata entre a urna eletrônica, a parede de divisa e a circulação externa, viabilizando o Cenário 1 sem interferência na dinâmica dos mesários.
  </div>
</div>

<h2 style="font-size: 1.45rem; margin-top: 36px; margin-bottom: 16px;">
  <span class="section-num">§ 4.</span> Comparação Espectral da Reconstrução
</h2>

<p>
  Abaixo confrontam-se as amostras capturadas e demoduladas experimentalmente a 1,0 m e 0,5 m da urna eletrônica sob as mesmas condições de teste de bancada:
</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin: 20px 0;">
  
  <div class="scientific-figure" style="margin: 0;">
    <img src="{{ '/assets/images/1mdaurna.png' | relative_url }}" alt="Captação a 1 metro">
    <div class="figure-meta">
      <strong>Figura 3A.</strong> Captação a 1,0 m de distância (Cenário 1). O contraste visual revela a estrutura e os botões da tela <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
    </div>
  </div>

  <div class="scientific-figure" style="margin: 0;">
    <img src="{{ '/assets/images/0,5mdaurna.png' | relative_url }}" alt="Captação a 0,5 metro">
    <div class="figure-meta">
      <strong>Figura 3B.</strong> Captação a 0,5 m de distância (Cenário 2). Nitidez gráfica acentuada devido à alta relação sinal-ruído (SNR) <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
    </div>
  </div>

</div>
