---
layout: page
title: "Proteção Contra Canais Laterais em Urnas Eletrônicas"
permalink: /
---

<div class="paper-masthead">
  <div class="paper-context">Pesquisa Aplicada &bull; Cibersegurança e Defesa Eleitoral</div>
  <h1 class="paper-title">Mitigação de Baixo Custo para Preservação do Sigilo do Voto ante Canais Laterais Eletromagnéticos</h1>
  <div class="paper-meta">
    <strong>Pesquisadores:</strong> Lucas Brito, Leonardo Teodoro, Pedro Tomaz, Alyson Isaluski, Leandro Hyeda, Antônio Carlos de Oliveira-Jr. e Saulo Queiroz <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a><br>
    <strong>Instituições:</strong> Universidade Tecnológica Federal do Paraná (UTFPR Câmpus Ponta Grossa) &bull; Universidade Federal de Goiás (CEIA/UFG)<br>
    <strong>Veículo de Publicação:</strong> Simpósio Brasileiro de Segurança da Informação e de Sistemas Computacionais (SBSEG 2026) <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>
  </div>
</div>

<div class="abstract-box">
  <div class="abstract-label">Resumo Executivo</div>
  <p>
    A salvaguarda do sigilo do voto constitui garantia pétrea do sistema democrático brasileiro. Este trabalho investiga a viabilidade prática de ataques de canais laterais baseados em emanações eletromagnéticas involuntárias (ataques TEMPEST) emitidas por interfaces de vídeo da Urna Eletrônica Brasileira <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-5' | relative_url }}" class="cite-ref">[5]</a>. Embora revisões recentes de hardware (modelos UE2020 e UE2022) atenuem essas emissões a distâncias superiores a 0,5 metro <a href="{{ '/referencias/#ref-13' | relative_url }}" class="cite-ref">[13]</a>, demonstramos que cenários com agentes internos ou seções eleitorais contíguas a vias públicas impõem riscos residuais concretos. Como resposta, propõe-se e valida-se experimentalmente uma contramedida ativa de baixo custo baseada na injeção intencional de ruído espectral ("chiado") via monitores auxiliares, degradando a relação sinal-ruído (SNR) e inviabilizando a reconstrução gráfica por receptores de radiofrequência sem necessidade de reformas onerosas no parque de urnas <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
  </p>
</div>

<h2 style="font-size: 1.45rem; margin-top: 36px; margin-bottom: 16px;">
  <span class="section-num">§ 1.</span> O Mecanismo da Contramedida Defensiva
</h2>

<p>
  A abordagem convencional para neutralização de vazamentos TEMPEST envolve blindagens completas de gaiola de Faraday, cabos coaxiais duplamente blindados e filtragem pesada de alimentação. No contexto eleitoral brasileiro, que mobiliza aproximadamente <strong>155 milhões de eleitores</strong> <a href="{{ '/referencias/#ref-17' | relative_url }}" class="cite-ref">[17]</a> em quase 500 mil seções em todo o território nacional, reformas estruturais desse porte para equipamentos legados resultariam em custos operacionais e logísticos proibitivos.
</p>

<p>
  A contramedida investigada pela equipe da UTFPR adota o princípio de <strong>embaralhamento espectral intencional (defensive jamming)</strong> <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>:
</p>

<div class="tech-block">
  <div class="tech-block-title">Princípio Físico Operacional</div>
  <h4>Geração de Ruído em Frequências Harmônicas Coincidentes</h4>
  <p style="font-size: 0.95rem; margin-bottom: 12px;">
    Monitores ou telas convencionais adicionais são posicionados no perímetro da cabine de votação exibindo padrões dinâmicos de alta entropia (ruído estático de vídeo, popularmente denominado "chiado") <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a>.
  </p>
  <p style="font-size: 0.95rem; margin-bottom: 0;">
    Como os sinais de vídeo operam em frequências fundamentais e harmônicas bem mapeadas <a href="{{ '/referencias/#ref-2' | relative_url }}" class="cite-ref">[2]</a>, a estática do monitor auxiliar emite energia de radiofrequência sobreposta na mesma faixa do cabo da urna. Isso sobrecarrega a banda de captura do receptor SDR do invasor com componentes estocásticas, tornando o sinal reconstituído indecifrável <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-7' | relative_url }}" class="cite-ref">[7]</a>.
  </p>
</div>

<h2 style="font-size: 1.45rem; margin-top: 36px; margin-bottom: 16px;">
  <span class="section-num">§ 2.</span> Evidência Experimental de Laboratório
</h2>

<p>
  Durante a fase de testes controlados de bancada, a equipe utilizou receptores de Rádio Definido por Software sintonizados nas frequências harmônicas de vídeo para avaliar a inteligibilidade do sinal a diferentes distâncias sem a presença do ruído protetor:
</p>

<div class="scientific-figure">
  <img src="{{ '/assets/images/1mdaurna.png' | relative_url }}" alt="Reconstrução de sinal de vídeo obtida a 1 metro de distância">
  <div class="figure-meta">
    <strong>Figura 1.</strong> Reconstrução passiva de sinal gráfico da Urna Eletrônica a uma distância de 1,0 metro em ambiente de teste de laboratório, sem o acionamento do ruído protetor <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>. Observa-se a delineação dos contornos da tela de votação. A ativação do monitor auxiliar com estática suprime integralmente esse contraste, resultando em ruído gaussiano homogêneo.
  </div>
</div>

<h2 style="font-size: 1.45rem; margin-top: 36px; margin-bottom: 16px;">
  <span class="section-num">§ 3.</span> Estrutura do Portal Técnico
</h2>

<p>
  Para aprofundar a compreensão dos aspectos técnicos e práticos da pesquisa, explore os tópicos estruturados abaixo:
</p>

<ul style="line-height: 1.8;">
  <li><strong><a href="{{ '/problema/' | relative_url }}">O Problema &bull; Ataques TEMPEST</a>:</strong> Descrição dos vetores físicos de vazamento, mapeamento de seções eleitorais reais e análise comparativa dos cenários de ataque (1,0 m vs. 0,5 m).</li>
  <li><strong><a href="{{ '/sdr/' | relative_url }}">Rádios SDR</a>:</strong> Arquitetura dos receptores Ettus USRP B200 e USRP E312, características de portabilidade e correlação com riscos flagrados em auditorias eleitorais.</li>
  <li><strong><a href="{{ '/sobre/' | relative_url }}">Sobre a Pesquisa</a>:</strong> Coordenação acadêmica do Prof. Saulo Queiroz, pesquisadores, vínculos com o CEIA/UFG e metas de contribuição para o Teste Público de Segurança (TPS) do TSE.</li>
  <li><strong><a href="{{ '/referencias/' | relative_url }}">Referências Científicas</a>:</strong> Catálogo completo dos artigos publicados pelo grupo, literatura seminal de TEMPEST e documentação dos órgãos eleitorais.</li>
</ul>
