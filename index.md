---
layout: page
title: "Início: Soluções de Baixo Custo"
permalink: /
---

<img src="{{ site.baseurl }}/assets/images/logo-utfpr.png" alt="Logo UTFPR" width="180" style="margin-bottom: 20px;">

A garantia do sigilo e da transparência é um pilar fundamental da democracia eletrônica contemporânea [1]. No entanto, abordagens tradicionais para mitigar ataques eletromagnéticos consistem na aplicação de blindagem física de hardware, uma alternativa cara e de difícil implementação na escala do sistema eleitoral brasileiro [2, 3].

Este projeto de extensão explora uma solução inovadora, econômica e de fácil adoção para a infraestrutura pública [2, 4].

### O "Chiado" do Bem: Mitigação por Interferência
Nossa hipótese principal propõe que a disposição intencional de **monitores auxiliares operando com ruído ("chiado")** nas proximidades da urna eletrônica causa uma interferência eletromagnética deliberada [2, 5]. 

*   **Bloqueio de Sinal:** A poluição eletromagnética gerada pelo monitor acessório atua diretamente nas frequências de vazamento do sinal de vídeo [6].
*   **Perda de Inteligibilidade:** Essa interferência "suja" o espectro captado por receptores não autorizados, inviabilizando completamente a espionagem e a reconstrução da imagem do voto à distância [5, 6].
*   **Viabilidade Financeira:** Em vez de realizar substituições onerosas de hardware em larga escala, o uso estratégico de monitores paralelos geradores de ruído fornece uma camada imediata de segurança física compatível com o orçamento público [5, 7].

[Leia mais sobre a natureza técnica do problema na nossa página de Explicação do Problema](./problema.html).
