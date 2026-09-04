---
layout: page
title: "O Problema: Ataques TEMPEST"
permalink: /problema/
---

<div class="civic-banner">
  <div class="civic-tag">Vulnerabilidade Física // Espionagem por Ondas de Rádio</div>
  <h1 class="civic-title">Como as Emanações Eletromagnéticas Afetam as Telas de Votação</h1>
  <div class="civic-meta">
    Compreenda o fenômeno físico dos canais laterais (TEMPEST) e a disposição espacial de locais de votação <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-5' | relative_url }}" class="cite-ref">[5]</a>.
  </div>
</div>

<h2 style="font-size: 1.4rem; margin-top: 30px; margin-bottom: 14px;">O Que São os Ataques TEMPEST?</h2>

<p>
  Toda tela eletrônica gera sinais elétricos pulsantes para atualizar imagens dezenas de vezes por segundo, seguindo padrões de temporização de vídeo (como as normas VESA) <a href="{{ '/referencias/#ref-16' | relative_url }}" class="cite-ref">[16]</a>. Esses pulsos elétricos produzem ondas de rádio involuntárias que vazam através de cabos e conectores <a href="{{ '/referencias/#ref-5' | relative_url }}" class="cite-ref">[5]</a>.
</p>

<p>
  Com um receptor de Rádio Definido por Software (SDR) e programas de processamento de sinais, uma pessoa mal-intencionada pode sintonizar essas ondas de rádio e reconstituir a imagem da tela sem tocar na urna ou violar qualquer lacre físico <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a>.
</p>

<h2 style="font-size: 1.4rem; margin-top: 36px; margin-bottom: 14px;">Cenários de Risco Avaliados pelo Grupo</h2>

<p>
  A pesquisa da UTFPR Ponta Grossa mapeou duas situações em que esse ataque pode ocorrer na prática <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>:
</p>

<div class="info-panel" style="border-left: 4px solid var(--color-primary);">
  <h4>Cenário 1: Através de Parede de Alvenaria (~1,0 metro)</h4>
  <p style="font-size: 0.95rem; margin-bottom: 0;">
    Em escolas e prédios públicos, é muito comum que as cabines fiquem encostadas nas paredes que dividem salas vizinhas ou corredores. O receptor pode ser posicionado discretamente na sala contígua, captando os sinais que atravessam tijolos ou drywall sem que ninguém na seção perceba <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-2' | relative_url }}" class="cite-ref">[2]</a>.
  </p>
</div>

<div class="info-panel" style="border-left: 4px solid var(--color-utfpr);">
  <h4>Cenário 2: Agente Próximo à Cabine (&lt; 0,5 metro)</h4>
  <p style="font-size: 0.95rem; margin-bottom: 0;">
    As urnas brasileiras mais novas (UE2020 e UE2022) possuem blindagem que reduz bastante as emissões a mais de 0,5 metro de distância <a href="{{ '/referencias/#ref-13' | relative_url }}" class="cite-ref">[13]</a>. Porém, se alguém com livre circulação na sala &mdash; como um mesário ou fiscal &mdash; portar um receptor miniatura oculto a menos de meio metro da urna, essa proteção física pode ser superada <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
  </p>
</div>

<h2 style="font-size: 1.4rem; margin-top: 36px; margin-bottom: 14px;">A Disposição Real das Seções Eleitorais</h2>

<p>
  O grupo de pesquisa visitou e mapeou seções eleitorais reais em Ponta Grossa (PR), comprovando que a disposição de carteiras e biombos frequentemente coloca a urna a distâncias vulneráveis:
</p>

<div class="figure-frame">
  <img src="{{ '/assets/images/exemplode_secao_eleitoral_adjacente_a_rua.png' | relative_url }}" alt="Planta da Seção Eleitoral nº 47 de Ponta Grossa">
  <div class="figure-legend">
    <strong>Figura 2.</strong> Planta da Seção Eleitoral nº 47 de Ponta Grossa (PR) <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>. Observa-se a cabine de votação posicionada diretamente contra a parede vizinha, facilitando a recepção de sinais a partir da sala contígua ou da via pública.
  </div>
</div>

<h2 style="font-size: 1.4rem; margin-top: 36px; margin-bottom: 14px;">Comparação das Imagens Reconstituídas</h2>

<p>
  Abaixo estão as capturas obtidas no laboratório durante os testes de bancada, demonstrando como a distância afeta a nitidez do sinal captado:
</p>

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 16px; margin: 20px 0;">
  
  <div class="figure-frame" style="margin: 0;">
    <img src="{{ '/assets/images/1mdaurna.png' | relative_url }}" alt="Reconstrução a 1 metro da urna">
    <div class="figure-legend">
      <strong>Figura 3A.</strong> Captação a 1,0 metro de distância (Cenário 1). Os contornos e botões da tela de votação ainda são perceptíveis através do rádio <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
    </div>
  </div>

  <div class="figure-frame" style="margin: 0;">
    <img src="{{ '/assets/images/0,5mdaurna.png' | relative_url }}" alt="Reconstrução a 0,5 metro da urna">
    <div class="figure-legend">
      <strong>Figura 3B.</strong> Captação a 0,5 metro de distância (Cenário 2). Maior nitidez gráfica proporcionada pela extrema proximidade com o cabo de vídeo da urna <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
    </div>
  </div>

</div>
