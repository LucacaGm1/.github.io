---
layout: page
title: "O Problema: Ataques TEMPEST"
permalink: /problema/
---

### O que é o Vazamento Eletromagnético?
Os computadores e displays emitem radiação eletromagnética residual não intencional durante o trânsito de seus sinais gráficos [1, 8]. Esse fenômeno é estudado sob a ótica dos ataques **TEMPEST** (Vazamento não Intencional de Radiação Eletromagnética) [1, 9].

A criptografia tradicional de software não mitiga essa ameaça, pois a imagem precisa ser renderizada de forma humanamente legível na tela para que o eleitor vote [10]. Um adversário munido de um **Rádio Definido por Software (SDR)** pode interceptar essas emanações e reconstruir remotamente a imagem exibida [1, 10].

---

### Linha do Tempo e Evolução dos Riscos

#### 1. O Caso do Teclado (2009)
*   **A Ameaça:** No Teste Público de Segurança (TPS) de 2009, pesquisadores demonstraram ser possível captar as emanações físicas das teclas digitadas aproximando um rádio AM/FM a 5 cm do teclado [11].
*   **A Defesa:** O TSE implementou melhorias imediatas de hardware, adicionando uma blindagem metálica específica (gaiola de Faraday) no teclado a partir de 2010 [12, 13].

#### 2. O Desafio Atual da Tela (2026)
As pesquisas recentes do nosso grupo mostram que o foco de vulnerabilidade migrou do teclado para a **tela e cabeamento de vídeo** [10, 14]. O vazamento ocorre por meio de sinais elétricos que transmitem os pixels (Modulação PAM) pelos cabos de vídeo [15].

---

### Dois Cenários de Ataque Documentados
O grupo de pesquisa mapeou e testou experimentalmente dois cenários que ameaçam o sigilo das seções eleitorais [8, 16]:

*   **Cenário 1 (Através da Parede):** Um atacante em um espaço adjacente (como corredor, sala ao lado ou via pública) posiciona um SDR a aproximadamente 1 metro da urna eletrônica [14, 17]. Experimentos comprovaram que é possível identificar os números votados e textos como "VOTO NULO" mesmo através de uma parede de alvenaria [17, 18].
*   **Cenário 2 (Agente Cooptado):** Um agente mal-intencionado infiltrado na seção (como fiscal ou mesário) porta um SDR de tamanho compacto alimentado por bateria [14]. Ao operar a menos de 0,5 metro do equipamento, ele contorna a atenuação natural que as urnas mais modernas possuem [14].

[Entenda mais sobre quem somos e os objetivos do nosso projeto acadêmico](./sobre.html).
