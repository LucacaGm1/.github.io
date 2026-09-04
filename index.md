---
layout: page
title: "Início: Soluções de Baixo Custo"
permalink: /
---

<div class="animate-fade-in">
  <p>A preservação do sigilo do voto eletrônico exige uma postura preventiva ante ameaças tecnológicas avançadas [1]. Embora as urnas eletrônicas brasileiras de última geração (modelos UE2020 e UE2022) contem com uma blindagem que atenua as emissões eletromagnéticas naturalmente em distâncias maiores que 0,5 metro [1, 2], as contramedidas físicas completas de hardware para modelos legados em larga escala são onerosas [3].</p>
  
  <p>A pesquisa de extensão do curso de bacharelado em <strong>Ciência da Computação da UTFPR Ponta Grossa</strong> investiga soluções práticas, de fácil adoção em infraestrutura pública e alta eficácia técnica [4, 5].</p>
</div>

---

<div style="display: flex; gap: 30px; flex-wrap: wrap; margin-top: 30px;">
  
  <!-- Bloco da Esquerda: Explicação da Solução -->
  <div style="flex: 1; min-width: 300px;" class="animate-fade-in delay-1">
    <h3>🛡️ O "Chiado" Protetor (Interferência de Sinal)</h3>
    <p>A principal contramedida de baixo custo defendida pelo projeto consiste no uso de <strong>monitores auxiliares operando com ruído ("chiado")</strong> posicionados estrategicamente ao redor da Urna Eletrônica [3, 6].</p>
    
    <div class="info-card">
      <h4>Como funciona?</h4>
      <p>A exibição do sinal gerador de estática no monitor acessório produz poluição eletromagnética intencional na mesma faixa de frequência em que o cabo da urna vaza as informações [3, 7]. Essa interferência embaralha o sinal captado pelo rádio (SDR) do atacante, transformando o que seria uma imagem do voto em puro ruído ilegível [6, 7].</p>
    </div>
    
    <div class="info-card">
      <h4>Benefício Público imediato</h4>
      <p>Evita substituições onerosas de hardware e garante o sigilo do voto para aproximadamente <strong>155 milhões de eleitores</strong> utilizando recursos acessíveis que o próprio TSE pode mobilizar localmente [4, 8, 9].</p>
    </div>
  </div>

  <!-- Bloco da Direita: Imagem Decorativa e Chamada de Solução -->
  <div style="flex: 1; min-width: 300px; text-align: center;" class="animate-fade-in delay-2">
    <h4>Demonstração Visual da Interceptação</h4>
    <p style="font-size: 0.9em; opacity: 0.8;">Abaixo, a prova física de como um ataque sem proteção reconstrói o voto no rádio [10, 11]:</p>
    
    <!-- IMAGEM DA RECONSTRUÇÃO DO VOTO DO SEU ARTIGO -->
    <img src="{{ '/assets/images/reconstrucao_cenario1.png' | relative_url }}" alt="Reconstrução de sinal VGA de Urna Eletrônica mostrando voto nulo" class="web-image" style="width: 80%;">
    
    <p style="font-size: 0.85em; font-style: italic; margin-top: 10px;">Fig 1. Captura simulada de tela do voto reconstituída à distância por SDR Ettus USRP B200 [12].</p>
  </div>

</div>
