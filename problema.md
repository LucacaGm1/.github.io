---
layout: page
title: "O Problema: Ataques TEMPEST"
permalink: /problema/
---

<div class="hero-banner">
  <div class="badge-tag">Análise de Vulnerabilidade</div>
  <h2 style="margin-top: 0; margin-bottom: 12px; font-size: 1.65rem;">Vazamento Eletromagnético e Canais Laterais em Telas</h2>
  <p style="margin-bottom: 0; font-size: 1.05rem; line-height: 1.7;">
    Sinais elétricos de alta frequência trafegando entre processadores gráficos e displays emitem radiação eletromagnética residual que se propaga pelo ar <a href="{{ '/referencias/#ref-5' | relative_url }}" class="cite-ref">[5]</a> <a href="{{ '/referencias/#ref-16' | relative_url }}" class="cite-ref">[16]</a>. Utilizando receptores de Rádio Definido por Software (SDR) de custo acessível, atacantes podem interceptar passivamente essas emissões e reproduzir o conteúdo exibido na tela sem necessidade de conexão física ou invasão de software <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a>.
  </p>
</div>

<div class="grid-2" style="align-items: start;">
  
  <!-- Coluna da Esquerda: Cenários Críticos Identificados -->
  <div>
    <h3 style="margin-bottom: 16px;">Cenários de Ameaça Mapeados</h3>
    
    <div class="clean-card" style="border-left: 4px solid var(--brand-accent);">
      <div class="badge-tag" style="margin-bottom: 8px;">Cenário 1 &bull; Através de Alvenaria</div>
      <h4>Captura em Sala Adjacente ou Corredor Externo (~1 metro)</h4>
      <p style="font-size: 0.95rem;">
        Em diversas escolas e prédios públicos utilizados como locais de votação, as cabines são posicionadas encostadas em paredes divisórias de salas de aula vizinhas ou voltadas para janelas e calçadas <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
      </p>
      <p style="font-size: 0.95rem; margin-bottom: 0;">
        Um receptor SDR instalado no cômodo contíguo consegue capturar as emanações residuais que atravessam a parede, decodificando os votos sem levantar qualquer suspeita no interior da seção eleitoral <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-2' | relative_url }}" class="cite-ref">[2]</a>.
      </p>
    </div>

    <div class="clean-card" style="border-left: 4px solid #f59e0b;">
      <div class="badge-tag" style="margin-bottom: 8px; color: #b45309; background: #fef3c7; border-color: #fde68a;">Cenário 2 &bull; Agente Interno</div>
      <h4>Operação Discreta em Proximidade Extrema (&lt; 0,5 metro)</h4>
      <p style="font-size: 0.95rem;">
        Mesários, fiscais partidários ou terceiros que tenham permanência autorizada no recinto podem portar dispositivos de gravação de RF compactos alimentados por bateria <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
      </p>
      <p style="font-size: 0.95rem; margin-bottom: 0;">
        Nessa faixa de proximidade extrema, até mesmo a atenuação natural de carcaça das urnas eletrônicas mais recentes (UE2020 e UE2022) <a href="{{ '/referencias/#ref-13' | relative_url }}" class="cite-ref">[13]</a> pode ser suplantada por receptores de alta sensibilidade <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
      </p>
    </div>

    <div class="clean-card">
      <h4>Contexto Físico das Seções Eleitorais</h4>
      <p style="font-size: 0.92rem; margin-bottom: 0;">
        O mapeamento em campo realizado pela pesquisa em Ponta Grossa (PR) constatou que a disposição espacial de carteiras e biombos frequentemente coloca o equipamento a distâncias vulneráveis em relação a janelas, pátios ou corredores de livre circulação <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
      </p>
    </div>
  </div>

  <!-- Coluna da Direita: Evidências Visuais e Comparativo -->
  <div>
    <h3 style="margin-bottom: 16px;">Evidência Experimental e Planta Real</h3>

    <div class="figure-container">
      <img src="{{ '/assets/images/exemplode_secao_eleitoral_adjacente_a_rua.png' | relative_url }}" alt="Planta de seção eleitoral adjacente à via pública" class="figure-img">
      <div class="figure-caption">
        <strong>Figura 2:</strong> Levantamento de seção eleitoral física em Ponta Grossa (PR), ilustrando a vulnerabilidade da proximidade entre as cabines de votação e áreas de acesso público externo <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
      </div>
    </div>

    <h4 style="margin-top: 24px; margin-bottom: 12px;">Comparação da Reconstituição do Sinal por Distância</h4>
    
    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px;">
      <div class="figure-container" style="margin: 0; padding: 12px;">
        <img src="{{ '/assets/images/1mdaurna.png' | relative_url }}" alt="Reconstrução a 1 metro" class="figure-img">
        <div class="figure-caption" style="font-size: 0.8rem; margin-top: 8px;">
          <strong>Distância de 1,0 m</strong><br>Captação simulando sala adjacente com parede divisória <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
        </div>
      </div>

      <div class="figure-container" style="margin: 0; padding: 12px;">
        <img src="{{ '/assets/images/0,5mdaurna.png' | relative_url }}" alt="Reconstrução a 0,5 metro" class="figure-img">
        <div class="figure-caption" style="font-size: 0.8rem; margin-top: 8px;">
          <strong>Distância de 0,5 m</strong><br>Proximidade extrema em alta nitidez espectral <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
        </div>
      </div>
    </div>

  </div>

</div>
