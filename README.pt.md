# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## Para que serve

Faz com que um trabalho seu (código, cálculo de engenharia, projeto de arquitetura, design de produto / interface, trabalho escolar, pesquisa, texto, plano) seja revisado não por um único olhar, mas por «equipes» separadas que se controlam umas às outras; se quiser, faz com que seja corrigido até não restar nenhum erro. É um pacote de plugin para o Claude Code. Contém dois tipos de arquivos: **agente** (instrução que descreve como uma equipe trabalha) e **skill** (instrução que descreve como o Claude coordena as equipes).

O guia de áreas (`skills/takim-dongu/sablonlar/alanlar.md`) diz às equipes o que observar nestas áreas: código, engenharia, mecânica, mecatrônica, elétrica, indústria pesada, arquitetura, design e projeto, explicação de conteúdo e trabalhos escolares, apresentação, pesquisa, documentação, medicina, direito, política, história, música. Em medicina e direito as equipes não dão diagnóstico, tratamento nem parecer jurídico; apenas revisam o texto e suas fontes, e o resultado leva a nota «consulte um especialista».

## Instalação

1. Se você recebeu o pacote como arquivo compactado (zip), primeiro extraia-o para uma pasta.
2. Dê um duplo clique em `kur.cmd`. Veja a mensagem «Kuruldu» (instalado) na tela.
3. Feche o Claude e abra-o de novo.

`kur.cmd` copia apenas os arquivos de agentes e as três pastas de skills para a pasta de usuário do Claude (`%USERPROFILE%\.claude`); ele substitui os antigos com o mesmo nome, por isso não coloque seus próprios arquivos nessas três pastas nem com esses nomes. Ele mostra a pasta de destino na tela. Quando chegar uma nova versão, basta executar o mesmo arquivo de novo. Outras formas de instalação estão no final.

## Sua primeira frase após instalar

Abra o Claude na pasta onde está o arquivo a ser revisado e escreva uma das frases a seguir. A frase deve conter a palavra **«takım»** (equipe); se não contiver, as equipes não entram em ação.

| O que você quer | A frase a escrever |
|---|---|
| Só revisar, sem mexer no meu arquivo | `peça às equipes que revisem rapor.md, sem mexer nele` |
| Revisar e corrigir | `que as equipes corrijam hesap.md até não restar erro` |
| Focar numa única pergunta | `equipes, olhem só isto: por que este teste falha de vez em quando?` |
| A opinião de uma única equipe | `equipe vermelha, ataque este trabalho` · `olhe com os olhos da equipe amarela` · `equipe turquesa, procure desperdício` |
| Levar em conta também a minha nota | `dê isto às equipes como nota: …` |
| Onde estão | `como estão as equipes?` |
| Continuar de onde pararam · parar | `equipes, continuem` · `pare as equipes` |

Os gatilhos das skills estão escritos em turco; pedidos que contêm «takım» / «takımlar» os acionam de forma confiável; pedidos em outros idiomas podem funcionar, mas não foram testados.

O Claude primeiro dá um breve resumo (o que entendeu, o que supôs, quantas equipes trabalharão por no máximo quantas rodadas) e começa. Enquanto trabalha, pode pedir permissão para gravar arquivos e executar comandos; quantas vezes vai pedir ainda não foi medido. Você pode dizer sim às permissões de gravação na pasta `takim`; se não tiver certeza sobre uma permissão de comando, diga não, e essa verificação será relatada como «não foi possível verificar».

## O que acontece com o seu arquivo

- **Se você disser «revisar», o seu arquivo não muda.** As equipes são instruídas a gravar relatórios e registros apenas na sua própria pasta `takim` («só revisão»); mesmo assim, uma cópia do seu arquivo é guardada na pasta `takim\yedek\`.
- **Se você disser «corrigir»,** o Claude primeiro guarda uma cópia do seu arquivo na pasta `takim\yedek\` e lhe diz «o seu arquivo vai mudar, o backup está aqui». Só a equipe Azul grava no seu arquivo.
- Se o seu pedido for ambíguo, o Claude não mexe no seu arquivo.
- Não foi verificado que as equipes conseguem ler arquivos Word ou PDF; o Claude avisa isso no início e trabalha numa cópia convertida em texto.

## Quando termina

Se você disse «revisar», termina após uma única rodada de revisão: o Claude explica o que encontrou e pergunta se deve corrigir. Se você disse «corrigir», termina quando os erros encontrados foram corrigidos e as correções verificadas de novo, e quando ficou escrito como cada pendência será fechada. Também pode parar antes de terminar (por exemplo, ao atingir o número máximo de rodadas, o «teto de rodadas», ou quando surge algo que você precisa decidir); quando para, o Claude explica o motivo e pergunta. A lista dos casos de parada está na seção 8 das regras.

Quanto tempo dura uma rodada não foi medido; quanto mais equipes, mais tempo e uso.

## Equipes

| Equipe | Agente | O que faz |
|---|---|---|
| 🔵 Azul | `mavi-yazar` | Escreve a obra, leva cada objeção a uma conclusão |
| 🔴 Vermelha | `kirmizi-saldirgan` | Tenta derrubar as afirmações da obra |
| 🩷 Rosa | `pembe-denetci` | Audita os achados, fecha a contagem |
| 🟣 Roxa | `mor-sorgucu` | Verifica a compreensão, faz perguntas difíceis, investiga a causa |
| 🟢 Verde | `yesil-gercek` | Verifica informações externas na fonte primária, faz pesquisa prévia |
| 🟠 Laranja | `turuncu-deneyci` | Executa com as próprias mãos, recalcula |
| 🩶 Cinza | `gri-sadelestirici` | Pergunta «isto é mesmo necessário», mantém o foco |
| ⚫ Preta | `siyah-hafiza` | Pega o que foi esquecido e o que voltou a quebrar; é o portão |
| ⚪ Branca | `beyaz-kayitci` | Verifica o que foi feito, registra o trabalho sem dono e o rastro |
| 🟡 Amarela | `sari-kullanici` | Experimenta a obra com os olhos de quem vai usá-la |
| 🩵 Turquesa | `turkuaz-verimlilik` | Encontra desperdício de tokens, leituras e chamadas e o reduz ao mínimo (adicionada a um tamanho) |

A «obra» é o seu arquivo ou trabalho em revisão. A tela do Claude reconhece só oito cores para as equipes; por isso a Cinza aparece em ciano, e a Preta e a Branca não têm cor. Reconheça a equipe pelo nome.

## Tamanhos e modos

O **tamanho** é quantas equipes vão trabalhar. Se você não disser, o Claude escolhe conforme o porte do trabalho e informa.

| Tamanho | Equipes | Teto de rodadas | Para quê |
|---|---|---|---|
| Rápido | Azul, Vermelha, Rosa | 2 | Trabalho pequeno, um só arquivo, verificação rápida |
| Normal | + Verde, Cinza, Laranja | 5 | A maioria dos trabalhos |
| Completo | + Roxa, Amarela, Preta, Branca | 10 | Trabalho crítico, de longa duração ou caro de desfazer |

É possível adicionar equipes uma a uma a um tamanho («tamanho rápido, adicione também a equipe amarela»); em trabalhos escolares e textos o Claude adiciona a Amarela por conta própria, e em trabalho que exige execução, a Laranja, e avisa. Os tetos de rodadas são valores iniciais não testados; para mudá-los basta dizer.

O **modo** é o que se observa: **amplo** (o trabalho inteiro) ou **foco** (uma única pergunta). Se você fizer uma única pergunta, o Claude escolhe o modo foco.

## Onde está o resultado

- O Claude conta o resultado na conversa: uma única frase no topo, um breve resumo abaixo; o que é **comprovado** e o que é *estimativa* é dito separadamente; a pergunta dele, se houver, fica no final.
- Na pasta em que você trabalha é criada uma pasta `takim`. É o registro próprio das equipes; você não precisa lê-lo. A versão original do seu arquivo também está nessa pasta (`takim\yedek\`); se estiver satisfeito com as correções, pode apagá-la depois que o trabalho terminar.
- Para dar uma nota ou um relatório às equipes, você pode deixar o arquivo na pasta `takim\gelen\`.
- Se você iniciar um novo trabalho na mesma pasta, os registros antigos não são apagados; são movidos para `takim\arsiv\`.

Texto completo das regras: `skills/takim-dongu/sablonlar/kurallar.md`.

## Desinstalação

- Se instalou com `kur.cmd`: dê um duplo clique em `kaldir.cmd`. Ele apaga apenas os arquivos de agentes do pacote e as três pastas de skills; não mexe nas pastas `takim` dos seus projetos. Se restar algum arquivo que não conseguiu apagar, ele avisa na tela.
- Se instalou como plugin: digite `/plugin` no Claude Code e remova o plugin na janela que se abre (este passo não foi verificado).
- Se copiou para um único projeto: apague os arquivos copiados da pasta `.claude` desse projeto.

## Outras formas de instalação (avançado)

Use apenas uma. Se usar o caminho de plugin junto com `kur.cmd`, as equipes aparecem duas vezes na lista.

**Como plugin.** Onde abaixo está escrito `<takim-ajan klasörünün yolu>`, coloque o caminho completo desta pasta no seu computador. No Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

O segundo comando não conclui a instalação sozinho: abre uma janela; ali você escolhe o escopo de usuário. Não foi verificado que um caminho do Windows é lido corretamente neste comando. Quando instalado como plugin, os nomes de agentes e skills recebem o prefixo `takim-ajan:`.

**Em um único projeto.** Copie o conteúdo da pasta `agents` para a pasta `.claude\agents` do projeto, e as três pastas dentro da pasta `skills` para a pasta `.claude\skills` do projeto. As três pastas de skills devem ser copiadas juntas.

## Conteúdo do pacote

| Local | O que contém |
|---|---|
| `agents/` | Os arquivos de instruções das equipes |
| `skills/` | Três skills: `takim-dongu` (ciclo e modelos), `takim-tek` (equipe única), `takim-durum` (estado) |
| `tests/` | A verificação própria do pacote (`tests/denetle.ps1`), cenários de pressão e três ensaios a seco |
| `docs/` | `docs/koken.md` (de onde veio), `docs/arastirma.md` (os métodos em que se apoia) |
| `kur.cmd`, `kaldir.cmd` | Instalar / desinstalar com duplo clique |

Versão 0.3.0. O que ainda não foi testado está listado no final de `docs/koken.md`.

Licença: MIT (LICENSE)
