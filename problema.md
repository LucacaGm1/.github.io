---
layout: page
title: "O Problema: Ataques TEMPEST"
permalink: /problema/
---

<div class="animate-fade-in">
  <h3>A Realidade do Vazamento Eletromagnético</h3>
  <p>Os computadores e cabos de displays de vídeo geram ondas de rádio involuntárias que espalham a informação gráfica pelo ambiente [13, 14]. Adversários de posse de um <strong>Rádio Definido por Software (SDR)</strong> de baixo custo conseguem reconstruir exatamente o que está na tela da urna a partir dessas emanações [13-15].</p>
</div>

---

<div style="display: flex; gap: 30px; flex-wrap: wrap; margin-top: 20px;">

  <!-- LADO ESQUERDO: OS CENÁRIOS DE ATAQUE -->
  <div style="flex: 1.2; min-width: 300px;" class="animate-fade-in delay-1">
    <h3>Cenários Críticos Mapeados pelo Grupo</h3>
    
    <div class="info-card">
      <strong>Cenário 1: Através da Parede (Distância ≈ 1m) [2, 11, 12]</strong>
      <p style="margin-top: 10px; font-size: 0.95em;">O atacante monta o rádio em uma sala de aula vizinha ou no corredor de fora do prédio de votação [2, 11]. Ele se aproveita do fato de as cabines de votação serem encostadas na parede divisória para captar o sinal residual através da alvenaria [2, 11].</p>
    </div>

    <div class="info-card">
      <strong>Cenário 2: Agente Interno Cooptado (Distância < 0,5m) [2, 11, 12]</strong>
      <p style="margin-top: 10px; font-size: 0.95em;">Um mesário ou fiscal eleitoral mal-intencionado carrega secretamente um SDR compacto alimentado por bateria [2, 11]. Pela proximidade extrema, ele consegue contornar a blindagem natural dos modelos de urna mais novos [2, 16].</p>
    </div>
  </div>

  <!-- LADO DIREITO: FOTO DO LOCAL REAL + PROVA DOS CENÁRIOS -->
  <div style="flex: 1; min-width: 300px; text-align: center;" class="animate-fade-in delay-2">
    <h3>Evidência Experimental</h3>
    
    <!-- FOTO DA SEÇÃO ELEITORAL DE PONTA GROSSA -->
    <img src="{{ '/assets/images/secao_eleitoral.png' | relative_url }}" alt="Seção Eleitoral compatível com os ataques TEMPEST" class="web-image">
    <p style="font-size: 0.8em; font-style: italic; margin-top: 5px;">Seção Eleitoral real nº 47 de Ponta Grossa/PR, demonstrando a proximidade das cabines com a rua e salas vizinhas [2, 17].</p>
    
    <div style="display: flex; gap: 10px; margin-top: 15px;">
      <div style="flex: 1;">
        <img src="{{ '/assets/images/reconstrucao_cenario1.png' | relative_url }}" alt="Cenário 1" class="web-image">
        <span style="font-size: 0.75em; font-weight: bold; display: block;">Cenário 1 (Com Parede) [11]</span>
      </div>
      <div style="flex: 1;">
        <img src="{{ '/assets/images/reconstrucao_cenario2.png' | relative_url }}" alt="Cenário 2" class="web-image">
        <span style="font-size: 0.75em; font-weight: bold; display: block;">Cenário 2 (Sem Obstáculos) [11]</span>
      </div>
    </div>
  </div>

</div>
