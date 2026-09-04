---
layout: page
title: "Dispositivos de Espionagem: Os Rádios SDR"
permalink: /sdr/
---

<div class="animate-fade-in">
  <p>Para interceptar as emanações eletromagnéticas invisíveis do sinal de vídeo da urna (ataques TEMPEST), um adversário não utiliza um rádio comum de música [3]. Ele emprega um <strong>SDR (Software Defined Radio - Rádio Definido por Software)</strong> [3].</p>
  
  <p>Diferente dos rádios tradicionais de hardware fixo, os SDRs usam programas de computador para processar e decodificar sinais de rádio em uma enorme faixa de frequências [3]. O desconhecimento público sobre a aparência e o funcionamento desses dispositivos é o que facilita a ação silenciosa de um atacante [4].</p>
</div>

---

<div style="display: flex; gap: 30px; flex-wrap: wrap; margin-top: 20px;">

  <!-- COLUNA DA ESQUERDA: TIPOS DE SDR EXPLICADOS -->
  <div style="flex: 1.2; min-width: 300px;" class="animate-fade-in delay-1">
    <h3>Dispositivos Identificados na Pesquisa</h3>

    <!-- CARD 1: SDRs PORTÁTEIS (CENÁRIO 2) -->
    <div class="info-card">
      <span style="font-size: 0.85em; font-weight: bold; uppercase; color: #ff3b30;">⚠️ Ultra-Portáteis e Autônomos</span>
      <h4 style="margin-top: 5px;">Ettus USRP E312 / USRP-LW E3xx</h4>
      <p style="font-size: 0.95em;">Estes são exemplos de equipamentos críticos para a segurança das seções [1]. Eles são altamente perigosos porque:</p>
      <ul style="font-size: 0.9em; margin-top: 5px; padding-left: 20px;">
        <li><strong>Funcionam a bateria:</strong> Dispensam tomadas, podendo ser escondidos facilmente em mochilas ou roupas [1, 5].</li>
        <li><strong>Armazenamento Interno:</strong> Conseguem gravar os sinais brutos de radiofrequência diretamente em sua memória interna para análise posterior (offline) [1, 5].</li>
        <li><strong>Bypass de Segurança:</strong> Devido ao tamanho discreto, permitem que um agente infiltrado opere a menos de 0,5 metro da urna, contornando a proteção natural dos modelos UE2020 e UE2022 [1].</li>
      </ul>
    </div>

    <!-- CARD 2: SDR DE LABORATÓRIO (EXPERIMENTO) -->
    <div class="info-card">
      <span style="font-size: 0.85em; font-weight: bold; uppercase; color: var(--link-color);">🔬 Equipamento de Teste</span>
      <h4 style="margin-top: 5px;">Ettus USRP B200</h4>
      <p style="font-size: 0.95em;">Este é o modelo de referência utilizado nos experimentos práticos do laboratório da UTFPR [2, 6].</p>
      <ul style="font-size: 0.9em; margin-top: 5px; padding-left: 20px;">
        <li><strong>Como opera:</strong> Ele é conectado a uma antena de TV digital comum e sintonizado nas frequências harmônicas do sinal da urna (como as harmônicas 3, 6 e 7) [2].</li>
        <li><strong>Dependência:</strong> Ao contrário dos modelos autônomos, ele não grava os dados sozinho; necessita estar fisicamente conectado por cabo a um computador/notebook de alto desempenho para processar as imagens [2].</li>
      </ul>
    </div>

  </div>

  <!-- COLUNA DA DIREITA: INSTRUÇÕES VISUAIS E ANALOGIAS -->
  <div style="flex: 1; min-width: 300px; text-align: center;" class="animate-fade-in delay-2">
    <h3>Como Identificar a Ameaça?</h3>
    <p style="font-size: 0.9em; opacity: 0.85;">Dispositivos SDR profissionais e portáteis não se parecem com rádios comuns. Eles geralmente são caixas metálicas cinzas ou pretas, sem botões ou telas, apenas com conectores de antena.</p>

    <!-- ESPAÇO PARA FOTO DO DISPOSITIVO SDR -->
    <div style="border: 2px dashed var(--border-color); padding: 30px; border-radius: 10px; margin: 20px 0; background-color: var(--card-bg);">
      <span style="font-size: 2.5rem;">📻</span>
      <p style="font-size: 0.85em; margin-top: 10px; font-weight: bold;">[Sugestão de Imagem: Foto de um SDR Portátil (Ettus USRP E312 ou USRP B200)]</p>
      <p style="font-size: 0.75em; opacity: 0.7;">Insira aqui uma imagem limpa do dispositivo com sua respectiva antena para fins de conscientização visual.</p>
    </div>

    <div class="info-card" style="text-align: left; border-left: 4px solid #ff9500;">
      <h4>Analogia com Outros Riscos</h4>
      <p style="font-size: 0.9em;">A presença de um rádio portátil operando ocultamente em uma seção eleitoral apresenta o mesmo risco operacional de outros eletrônicos já flagrados pela Justiça Eleitoral, como os <strong>óculos com microcâmeras (smart glasses)</strong> utilizados para violar o sigilo do voto em Ourilândia do Norte (PA) [4].</p>
    </div>
  </div>

</div>
