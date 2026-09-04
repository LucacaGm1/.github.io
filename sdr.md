---
layout: page
title: "Dispositivos de Captura: Rádios SDR"
permalink: /sdr/
---

<div class="context-box">
  <h4>Em Resumo</h4>
  <p>
    Para capturar as emanações invisíveis de uma tela de votação (ataque TEMPEST), o adversário não usa um rádio comum de música. Ele utiliza um <strong>SDR (Software Defined Radio)</strong> &mdash; um dispositivo capaz de transformar qualquer faixa de ondas eletromagnéticas em dados brutos para que um computador reconstrua a imagem na tela em tempo real <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a>.
  </p>
</div>

<h2 style="font-size: 1.4rem; margin-top: 32px; margin-bottom: 14px;">1. Como Funciona a Cadeia de Interceptação?</h2>

<p>
  Diferente de sistemas de transmissão sem fio intencionais (como Wi-Fi ou Bluetooth), a tela da urna e seus cabos de conexão emitem radiofrequência de forma acidental e involuntária <a href="{{ '/referencias/#ref-5' | relative_url }}" class="cite-ref">[5]</a>. O processo de espionagem por SDR é dividido em quatro etapas principais:
</p>

<ol style="line-height: 1.8; color: var(--text-secondary); padding-left: 22px;">
  <li><strong>Captação do Sinal Residual:</strong> Uma antena comum (como um dipolo telescópico ou antena digital de TV) recebe as ondas fracas que se propagam pelo ar e atravessam paredes de salas vizinhas <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.</li>
  <li><strong>Digitalização de Alta Velocidade:</strong> O circuito conversor analógico-digital (ADC) do rádio SDR digitaliza as ondas captadas a dezenas de milhões de amostras por segundo (amostras I/Q) <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a>.</li>
  <li><strong>Sintonia em Harmônicas:</strong> Em vez da frequência base, o invasor sintoniza harmônicas superiores (múltiplos da frequência de atualização da tela, como 3ª, 6ª ou 7ª harmônica), onde o ruído ambiente é menor e o sinal da urna se destaca <a href="{{ '/referencias/#ref-2' | relative_url }}" class="cite-ref">[2]</a>.</li>
  <li><strong>Reconstrução em Software:</strong> Módulos abertos de processamento digital, como o <strong>GNU Radio</strong> e o pacote <code>gr-tempest</code> <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a>, estimam a taxa de quadros e o sincronismo de linha para redesenhar a tela pixel a pixel <a href="{{ '/referencias/#ref-3' | relative_url }}" class="cite-ref">[3]</a>.</li>
</ol>

<h2 style="font-size: 1.4rem; margin-top: 36px; margin-bottom: 14px;">2. Os Dois Equipamentos Estudados na Pesquisa</h2>

<p>
  A pesquisa do grupo da UTFPR Ponta Grossa e UFG investigou dois equipamentos específicos da fabricante Ettus Research/National Instruments, cada um correspondendo a um cenário operacional distinto <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>:
</p>

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 20px; margin: 24px 0;">
  
  <!-- CARTÃO 1: USRP B200 (BANCADA) -->
  <div class="info-panel" style="margin-bottom: 0; display: flex; flex-direction: column; justify-content: space-between;">
    <div>
      <div style="font-size: 0.78rem; font-weight: 700; color: var(--color-primary); text-transform: uppercase; margin-bottom: 6px;">
        Bancada de Laboratório // Cenário 1
      </div>
      <h3 style="margin-top: 0; margin-bottom: 12px; font-size: 1.25rem; color: var(--color-primary);">Ettus USRP B200</h3>
      
      <div class="figure-frame" style="margin: 10px 0 16px 0; padding: 10px; background: #fafbfc;">
        <img src="{{ '/assets/images/usrp_b200.png' | relative_url }}" alt="Rádio SDR Ettus USRP B200 com case metálico" style="max-height: 220px; object-fit: contain;">
        <div class="figure-legend" style="font-size: 0.8rem; text-align: center;">
          <strong>Ettus USRP B200:</strong> Chassi metálico compacto com conectores SMA de antena e porta USB 3.0.
        </div>
      </div>

      <p style="font-size: 0.92rem; line-height: 1.6;">
        É a plataforma utilizada nos ensaios práticos no laboratório da UTFPR <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-3' | relative_url }}" class="cite-ref">[3]</a>.
      </p>
      <ul style="font-size: 0.88rem; line-height: 1.6; color: var(--text-secondary); padding-left: 18px;">
        <li><strong>Como opera:</strong> Ele realiza a sintonia e digitalização de RF (70 MHz a 6 GHz) e transmite o fluxo contínuo de amostras brutas via barramento USB 3.0 para um computador externo de alta performance.</li>
        <li><strong>Enquadramento no ataque:</strong> Exige conexão constante a um notebook. É típico para ataques montados em salas vizinhas ou veículos estacionados do lado de fora do colégio eleitoral (<strong>Cenário 1: Através de parede divisória a ~1m</strong>) <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.</li>
      </ul>
    </div>
  </div>

  <!-- CARTÃO 2: USRP E312 (PORTÁTIL) -->
  <div class="info-panel" style="margin-bottom: 0; display: flex; flex-direction: column; justify-content: space-between;">
    <div>
      <div style="font-size: 0.78rem; font-weight: 700; color: var(--color-primary); text-transform: uppercase; margin-bottom: 6px;">
        Portátil e Autônomo // Cenário 2
      </div>
      <h3 style="margin-top: 0; margin-bottom: 12px; font-size: 1.25rem; color: var(--color-primary);">Ettus USRP E312 / Série E3xx</h3>
      
      <div class="figure-frame" style="margin: 10px 0 16px 0; padding: 10px; background: #fafbfc;">
        <img src="{{ '/assets/images/usrp_e3xx.jpg' | relative_url }}" alt="Rádio SDR Portátil Ettus USRP Série E3xx" style="max-height: 220px; object-fit: contain;">
        <div class="figure-legend" style="font-size: 0.8rem; text-align: center;">
          <strong>Ettus USRP Série E3xx:</strong> Dispositivo embarcado com processador ARM, FPGA e bateria interna.
        </div>
      </div>

      <p style="font-size: 0.92rem; line-height: 1.6;">
        Representa a ameaça mais sensível para a rotina interna das seções eleitorais <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
      </p>
      <ul style="font-size: 0.88rem; line-height: 1.6; color: var(--text-secondary); padding-left: 18px;">
        <li><strong>Operação 100% Autônoma:</strong> Possui processador ARM dual-core próprio rodando Linux embarcado e bateria de íons de lítio integrada (3200 mAh). Não precisa de tomadas, cabos ou computador externo para funcionar.</li>
        <li><strong>Gravação Interna Silenciosa:</strong> Grava as amostras de radiofrequência diretamente em sua memória flash/microSD para posterior análise fora da seção.</li>
        <li><strong>Enquadramento no ataque:</strong> Devido ao chassi discreto sem tela ou botões, pode ser ocultado em mochilas ou roupas por mesários ou fiscais cooptados (<strong>Cenário 2: Proximidade extrema a &lt;0,5m</strong>), contornando a blindagem física dos modelos mais novos da urna <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-13' | relative_url }}" class="cite-ref">[13]</a>.</li>
      </ul>
    </div>
  </div>

</div>

<h2 style="font-size: 1.4rem; margin-top: 36px; margin-bottom: 14px;">3. Tabela Comparativa de Especificações Técnicas</h2>

<table>
  <thead>
    <tr>
      <th>Especificação</th>
      <th>Ettus USRP E312 (Portátil)</th>
      <th>Ettus USRP B200 (Bancada)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Alimentação</strong></td>
      <td>Bateria interna de íons de lítio recarregável</td>
      <td>Alimentado via barramento USB 3.0 ou fonte externa</td>
    </tr>
    <tr>
      <td><strong>Processamento</strong></td>
      <td>Processador ARM dual-core + FPGA Xilinx Zynq interna</td>
      <td>FPGA interna Spartan-6 (requer computador host potente)</td>
    </tr>
    <tr>
      <td><strong>Armazenamento</strong></td>
      <td>Cartão MicroSD / memória flash eMMC local (offline)</td>
      <td>Disco rígido/SSD do computador conectado via USB</td>
    </tr>
    <tr>
      <td><strong>Faixa de Cobertura de RF</strong></td>
      <td>70 MHz a 6,0 GHz</td>
      <td>70 MHz a 6,0 GHz</td>
    </tr>
    <tr>
      <td><strong>Largura de Banda Instantânea</strong></td>
      <td>Até 56 MHz</td>
      <td>Até 56 MHz</td>
    </tr>
    <tr>
      <td><strong>Fator de Forma e Peso</strong></td>
      <td>Aproximadamente 450 g, chassi selado para campo</td>
      <td>Aproximadamente 350 g, gabinete de laboratório</td>
    </tr>
    <tr>
      <td><strong>Cenário de Ameaça Avaliado</strong></td>
      <td><strong>Cenário 2:</strong> Operador infiltrado (&lt; 0,5 m da urna)</td>
      <td><strong>Cenário 1:</strong> Sala adjacente com alvenaria (~1,0 m)</td>
    </tr>
  </tbody>
</table>

<h2 style="font-size: 1.4rem; margin-top: 36px; margin-bottom: 14px;">4. Por Que a Detecção Física Desses Dispositivos É Difícil?</h2>

<div class="context-box">
  <h4>A Natureza Invisível dos Receptores Passivos</h4>
  <p>
    Detectores convencionais de espionagem (como detectores de microfones ou rastreadores de sinal de celular) procuram por ondas de rádio sendo <em>transmitidas</em>. Um rádio SDR operando na escuta de vídeo da urna atua em modo <strong>puramente passivo</strong> &mdash; ele não emite nenhum sinal de radiofrequência, apenas recebe o que já está no ar <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
  </p>
  <p style="margin-top: 8px;">
    Portanto, uma varredura de radiofrequência na sala de votação não é capaz de identificar a presença de um SDR em gravação. É por essa razão que a <strong>contramedida baseada em ruído protetor ("chiado")</strong> é tão eficiente: em vez de tentar encontrar um receptor oculto impossível de rastrear, ela atua diretamente no ambiente, embaralhando o sinal e impedindo a reconstrução de qualquer rádio que esteja por perto <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
  </p>
</div>

<h2 style="font-size: 1.4rem; margin-top: 36px; margin-bottom: 14px;">5. Precedentes Concretos na Justiça Eleitoral</h2>

<p>
  O uso de eletrônicos discretos para quebrar o sigilo do voto já faz parte da jurisprudência eleitoral do país. O Tribunal Regional Eleitoral do Pará (TRE-PA), no julgamento do <strong>Recurso Eleitoral nº 0600629-58.2024.6.14.0074</strong>, confirmou a cassação de mandato político em Ourilândia do Norte (PA) após eleitores serem flagrados utilizando armações de óculos comuns equipadas com microcâmeras embutidas para gravar seus votos <a href="{{ '/referencias/#ref-15' | relative_url }}" class="cite-ref">[15]</a>.
</p>

<p>
  Enquanto câmeras ópticas podem eventualmente ser identificadas por mesários atentos devido à necessidade de lentes voltadas para o teclado, os receptores SDR interceptam dados através de biombos e paredes sem requerer visada direta. Esse fato reforça a importância das recomendações técnicas de baixo custo desenvolvidas pela UTFPR para blindar as seções eleitorais brasileiras <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
</p>
