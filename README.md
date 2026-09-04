# TEMPEST em Urnas Eletrônicas &bull; UTFPR

Portal acadêmico e técnico do projeto de extensão universitária do Departamento de Informática (DAINF) da **Universidade Tecnológica Federal do Paraná (UTFPR) - Câmpus Ponta Grossa**, em cooperação com a **Universidade Federal de Goiás (UFG)** e **CEIA/EMBRAPII**.

## Visão Geral

Este projeto investiga vulnerabilidades de canais laterais eletromagnéticos (ataques TEMPEST) em interfaces de vídeo da Urna Eletrônica Brasileira e avalia contramedidas de segurança física de baixo custo baseadas em interferência eletromagnética intencional (ruído espectral defensivo).

### Tópicos Abordados
- **O Problema (TEMPEST):** Emissões eletromagnéticas não intencionais de sinais gráficos e análise dos cenários de captação (através de alvenaria e em proximidade extrema).
- **Dispositivos de Captura (SDR):** Arquiteturas de Rádio Definido por Software (Ettus USRP B200 e USRP E312).
- **Contramedida de Baixo Custo:** O uso de monitores auxiliares com ruído ("chiado") para mascarar o sinal e preservar o sigilo do voto de 155 milhões de eleitores sem substituição onerosa de hardware.
- **Prevenção e Resposta:** Orientações defensivas para organização do espaço, preservação de evidências, privacidade e encaminhamento de suspeitas pelos canais oficiais.
- **Corpus Científico:** Relação de artigos autorais (SBSEG, ICASSP), normas técnicas (VESA, TSE) e jurisprudência (TRE-PA).

## Como Executar Localmente

O site é construído com [Jekyll](https://jekyllrb.com/) e compatível com o GitHub Pages.

```bash
bundle install
bundle exec jekyll serve
```