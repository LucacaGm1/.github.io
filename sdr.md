---
---
layout: page
title: "Dispositivos de Captura: Rádios SDR"
permalink: /sdr/
---

<div class="hero-banner">
  <div class="badge-tag">Engenharia de Rádio e Hardware</div>
  <h2 style="margin-top: 0; margin-bottom: 12px; font-size: 1.65rem;">O Papel dos Rádios Definidos por Software (SDR)</h2>
  <p style="margin-bottom: 0; font-size: 1.05rem; line-height: 1.7;">
    Diferentemente de receptores de radiodifusão comerciais analógicos com circuitos dedicados a áudio, os <strong>Rádios Definidos por Software (SDR)</strong> utilizam componentes reconfiguráveis e processamento digital de sinais para sintonizar amplas faixas do espectro eletromagnético <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a>. Na pesquisa de canais laterais (TEMPEST), o SDR funciona como a ponte de captura das emissões involuntárias de vídeo da urna <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
  </p>
</div>

<div class="grid-2" style="align-items: start;">
  
  <div>
    <h3 style="margin-bottom: 16px;">Arquiteturas Estudadas na Pesquisa</h3>

    <div class="clean-card">
      <div class="badge-tag" style="color: #b91c1c; background: #fee2e2; border-color: #fca5a5;">Ameaça Crítica &bull; Autônomo</div>
      <h4>Ettus USRP E312 / Série E3xx</h4>
      <p style="font-size: 0.95rem;">
        Representa a classe de maior risco operacional para a fiscalização em seções eleitorais <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>:
      </p>
      <ul style="font-size: 0.92rem; color: var(--text-secondary); padding-left: 20px;">
        <li style="margin-bottom: 6px;"><strong>Operação Independente:</strong> Equipado com processador ARM embarcado rodando Linux e alimentado por bateria interna, dispensando tomadas elétricas.</li>
        <li style="margin-bottom: 6px;"><strong>Gravação Local:</strong> Pode armazenar amostras brutas de RF (I/Q) diretamente em memória flash para decodificação posterior fora da seção.</li>
        <li><strong>Fator de Forma Discreto:</strong> Chassi metálico compacto sem botões ou telas, facilmente ocultável em bolsas, mochilas ou vestimentas de mesários e fiscais.</li>
      </ul>
    </div>

    <div class="clean-card">
      <div class="badge-tag">Laboratório &bull; Bancada</div>
      <h4>Ettus USRP B200</h4>
      <p style="font-size: 0.95rem;">
        Modelo de referência amplamente adotado nos experimentos de bancada do laboratório da UTFPR <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-3' | relative_url }}" class="cite-ref">[3]</a>:
      </p>
      <ul style="font-size: 0.92rem; color: var(--text-secondary); padding-left: 20px;">
        <li style="margin-bottom: 6px;"><strong>Conexão via Host:</strong> Exige conexão constante via barramento USB 3.0 de alta velocidade a um computador com processador robusto para streaming de dados em tempo real.</li>
        <li style="margin-bottom: 6px;"><strong>Recepção de RF:</strong> Acoplado a antenas direcionais ou dipolos comuns, sintonizado nas harmônicas de radiação dos sinais de vídeo <a href="{{ '/referencias/#ref-2' | relative_url }}" class="cite-ref">[2]</a>.</li>
        <li><strong>Emprego Operacional:</strong> Típico para ataques estáticos montados previamente em veículos próximos ou salas contíguas <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.</li>
      </ul>
    </div>
  </div>

  <div>
    <h3 style="margin-bottom: 16px;">Comparativo de Características Técnicas</h3>

    <table>
      <thead>
        <tr>
          <th>Especificação</th>
          <th>USRP E312 (Portátil)</th>
          <th>USRP B200 (Bancada)</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><strong>Alimentação</strong></td>
          <td>Bateria interna integrada</td>
          <td>Barramento USB 3.0 / Fonte externa</td>
        </tr>
        <tr>
          <td><strong>Processamento</strong></td>
          <td>SoC ARM + FPGA embarcada</td>
          <td>Computador host externo</td>
        </tr>
        <tr>
          <td><strong>Modo de Gravação</strong></td>
          <td>Flash local (amostragem offline)</td>
          <td>Disco de alta velocidade do host</td>
        </tr>
        <tr>
          <td><strong>Frequência Suportada</strong></td>
          <td>70 MHz a 6 GHz</td>
          <td>70 MHz a 6 GHz</td>
        </tr>
        <tr>
          <td><strong>Enquadramento</strong></td>
          <td>Cenário 2 (Infiltrado / &lt;0,5m)</td>
          <td>Cenário 1 (Sala vizinha / ~1m)</td>
        </tr>
      </tbody>
    </table>

    <div class="clean-card" style="border-left: 4px solid var(--brand-primary); margin-top: 24px;">
      <h4>Precedentes e Prevenção no Sistema Eleitoral</h4>
      <p style="font-size: 0.92rem; line-height: 1.6;">
        A preocupação com dispositivos eletrônicos operando furtivamente em cabines não é meramente acadêmica. A Justiça Eleitoral brasileira já enfrentou casos reais de quebra do sigilo de votação por meio de dispositivos clandestinos, como na recente cassação de mandato conduzida pelo TRE-PA envolvendo a utilização de armações de óculos com microcâmeras em Ourilândia do Norte <a href="{{ '/referencias/#ref-15' | relative_url }}" class="cite-ref">[15]</a>.
      </p>
      <p style="font-size: 0.92rem; line-height: 1.6; margin-bottom: 0;">
        Enquanto câmeras ópticas exigem linha de visada direta sobre o teclado e a tela, receptores SDR interceptam sinais através de paredes e biombos, tornando as contramedidas ativas baseadas em ruído eletromagnético essenciais para a segurança física <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
      </p>
    </div>

  </div>

</div>
