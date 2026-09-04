---
---
layout: page
title: "Proteção contra Canais Laterais em Urnas Eletrônicas"
permalink: /
---

<div class="hero-banner">
  <div class="badge-tag">Projeto de Extensão &bull; UTFPR Ponta Grossa</div>
  <h2 style="margin-top: 0; margin-bottom: 12px; font-size: 1.65rem;">Mitigação de Baixo Custo para Preservação do Sigilo do Voto</h2>
  <p style="margin-bottom: 0; font-size: 1.05rem; line-height: 1.7;">
    A preservação do sigilo constitucional do voto exige uma abordagem técnica preventiva contra ameaças de interceptação eletromagnética <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-5' | relative_url }}" class="cite-ref">[5]</a>. Esta pesquisa investiga o uso de interferência intencional de baixo custo como blindagem defensiva para seções eleitorais brasileiras.
  </p>
</div>

<div class="grid-3">
  <div class="stat-card">
    <div class="stat-value">155 Milhões</div>
    <div class="stat-label">Eleitores no corpo eleitoral nacional <a href="{{ '/referencias/#ref-17' | relative_url }}" class="cite-ref">[17]</a></div>
  </div>
  <div class="stat-card">
    <div class="stat-value">&asymp; 0,5 Metro</div>
    <div class="stat-label">Distância crítica de atenuação nas UE2020/22 <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-13' | relative_url }}" class="cite-ref">[13]</a></div>
  </div>
  <div class="stat-card">
    <div class="stat-value">Custo Acessível</div>
    <div class="stat-label">Mitigação operacional sem reforma estrutural <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a></div>
  </div>
</div>

<hr>

<div class="grid-2" style="align-items: start;">
  
  <!-- Coluna 1: A Solução de Ruído Protetor -->
  <div>
    <h3 style="margin-bottom: 16px;">Princípio Físico da Contramedida</h3>
    <p>
      Embora os modelos mais recentes de urnas (UE2020 e UE2022) incorporem blindagens que atenuam significativamente as emanações em distâncias superiores a 0,5 metro <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-13' | relative_url }}" class="cite-ref">[13]</a>, a substituição completa de todo o parque legado ou o isolamento em cabines especiais representaria custos inviáveis para a administração pública.
    </p>

    <div class="clean-card" style="border-left: 4px solid var(--brand-primary);">
      <h4 style="color: var(--brand-primary);">Interferência de Ruído Espectral (Jamming Defensivo)</h4>
      <p style="font-size: 0.95rem;">
        A solução proposta pelo grupo consiste em posicionar <strong>monitores auxiliares operando com padrões visuais de estática ("chiado")</strong> na própria seção eleitoral <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a>.
      </p>
      <p style="font-size: 0.95rem;">
        Ao emitir ruído controlado nas mesmas faixas de frequência e harmônicas do sinal de vídeo da urna <a href="{{ '/referencias/#ref-2' | relative_url }}" class="cite-ref">[2]</a>, o sinal capturado por um receptor de rádio externo é corrompido, tornando matematicamente inviável a reconstituição da imagem do voto digitado pelo eleitor <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-7' | relative_url }}" class="cite-ref">[7]</a>.
      </p>
    </div>

    <div class="clean-card">
      <h4>Vantagens Operacionais</h4>
      <ul style="padding-left: 20px; margin-bottom: 0; font-size: 0.95rem; color: var(--text-secondary);">
        <li style="margin-bottom: 6px;"><strong>Disponibilidade Imediata:</strong> Utiliza equipamentos comuns de exibição sem demandar modificações no hardware lacrado da urna.</li>
        <li style="margin-bottom: 6px;"><strong>Imunidade a Paredes:</strong> Protege inclusive contra receptores instalados em salas adjacentes ou calçadas próximas <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.</li>
        <li><strong>Complementaridade:</strong> Soma-se às práticas de fiscalização física já exercidas pelos mesários e tribunais eleitorais.</li>
      </ul>
    </div>
  </div>

  <!-- Coluna 2: Evidência Experimental do Ataque -->
  <div>
    <h3 style="margin-bottom: 16px;">Registro Experimental do Ataque</h3>
    <p>
      Abaixo apresenta-se uma das reconstruções espectrais obtidas durante os ensaios laboratoriais controlados da UTFPR, demonstrando a necessidade de contramedidas ativas:
    </p>

    <div class="figure-container">
      <img src="{{ '/assets/images/1mdaurna.png' | relative_url }}" alt="Reconstrução de sinal da urna eletrônica obtida a 1 metro de distância" class="figure-img">
      <div class="figure-caption">
        <strong>Figura 1:</strong> Reconstrução de tela da Urna Eletrônica captada à distância de 1 metro através de um receptor SDR sem o acionamento do ruído protetor <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a> <a href="{{ '/referencias/#ref-6' | relative_url }}" class="cite-ref">[6]</a>.
      </div>
    </div>

    <div class="clean-card" style="background: var(--bg-surface-elevated); margin-top: 15px;">
      <h4 style="margin-bottom: 8px;">Conclusão dos Testes</h4>
      <p style="font-size: 0.92rem; margin-bottom: 0;">
        Sem interferência defensiva, os traços numéricos e botões da tela tornam-se legíveis por rádio em ambientes adjacentes. A inserção do ruído anula a relação sinal-ruído (SNR), eliminando a legibilidade gráfica <a href="{{ '/referencias/#ref-1' | relative_url }}" class="cite-ref">[1]</a>.
      </p>
    </div>
  </div>

</div>
