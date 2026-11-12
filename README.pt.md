🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

# Team Ajan

## Para que serve

Faz com que o seu trabalho (código, cálculo de engenharia, projeto de arquitetura, design de produto / interface, tarefa escolar, pesquisa, texto, plano) seja revisado não por um único olhar, mas por "times" separados que fiscalizam uns aos outros; se você quiser, faz com que seja corrigido até não restar nenhum erro. É um pacote de plugin para o Claude Code. Ele contém dois tipos de arquivo: **agentes** (instruções que descrevem como um time trabalha) e **habilidades** (instruções que descrevem como o Claude gerencia os times).

## Instalação

1. Se você recebeu o pacote como arquivo compactado (zip), primeiro extraia-o para uma pasta.
2. Dê um clique duplo no arquivo `kur.cmd`. Você deve ver "Kuruldu" na tela.
3. Feche o Claude e abra-o novamente.

O `kur.cmd` copia apenas os arquivos de agentes e as três pastas de habilidades para a pasta de usuário do Claude (`%USERPROFILE%\.claude`); ele substitui os arquivos antigos de mesmo nome, por isso não coloque arquivos seus nessas três pastas nem com esses nomes. Ele mostra a pasta de destino na tela. Quando sair uma nova versão, basta executar o mesmo arquivo de novo. As outras formas de instalação estão no final.

## Sua primeira frase depois de instalar

Abra o Claude na pasta onde está o arquivo a ser revisado e digite uma das frases abaixo. A frase precisa conter a palavra **"takım"** (time); se não contiver, os times não entram em ação.

| O que você quer | A frase a digitar |
|---|---|
| Que só revisem, sem mexer no meu arquivo | `peça aos times para revisar relatorio.md, sem mexer nele` |
| Que revisem e corrijam | `que os times corrijam calculo.md até não restar nenhum erro` |
| Que se concentrem em uma única pergunta | `times, olhem só isto: por que este teste falha de vez em quando?` |
| A opinião de um único time | `time vermelho, ataque esta tarefa` · `olhe com os olhos do time amarelo` · `time turquesa, procure desperdício` |
| Que levem em conta também a minha nota | `passe isto aos times como nota: …` |
| Em que ponto estão | `como estão os times?` |
| Que continuem de onde pararam · que parem | `times, continuem` · `pare os times` |

Os gatilhos das habilidades estão escritos em turco; pedidos que contêm "takım" / "takımlar" os acionam de forma confiável; pedidos em outros idiomas podem funcionar, mas não foram testados.

O Claude primeiro dá um breve resumo (o que entendeu, o que supôs, quantos times vão trabalhar por no máximo quantas rodadas) e então começa. Durante o trabalho, ele pode pedir permissão para gravar arquivos e executar comandos; quantas vezes ele vai pedir ainda não foi medido. Você pode aceitar as permissões de gravação na pasta `takim`; se não tiver certeza sobre uma permissão de comando, recuse, e essa verificação será relatada como "não foi possível verificar".

## O que acontece com o seu arquivo

- **Se você disser "revisar", o seu arquivo não muda.** Os times são instruídos a gravar relatórios e registros apenas na própria pasta `takim` ("só revisão"); mesmo assim, uma cópia do seu arquivo é guardada na pasta `takim\yedek\`.
- **Se você disser "corrigir",** o Claude primeiro guarda uma cópia do seu arquivo na pasta `takim\yedek\` e avisa "o seu arquivo vai mudar, o backup está aqui". Só o time Azul grava no seu arquivo.
- Se o seu pedido for ambíguo, o Claude não mexe no seu arquivo.
- Não foi verificado se os times conseguem ler arquivos Word ou PDF; o Claude avisa isso no início e trabalha em uma cópia convertida em texto.

## Quando termina

Se você disse "revisar", termina depois de uma única rodada de revisão: o Claude explica o que foi encontrado e pergunta se deve corrigir. Se você disse "corrigir", termina quando os erros encontrados forem corrigidos, as correções forem verificadas de novo e estiver escrito como cada pendência será encerrada. Também pode parar antes de terminar (por exemplo, ao atingir o número máximo de rodadas, o "teto de rodadas", ou quando surgir algo que você precise decidir); quando para, o Claude explica o motivo e pergunta. A lista de situações de parada está na seção 8 das regras.

Quanto tempo leva uma rodada não foi medido; quanto mais times, maiores o tempo e o consumo.

## Times

| Time | Agente | O que faz |
|---|---|---|
| 🔵 Azul | `mavi-yazar` | Escreve a obra, leva cada objeção a uma conclusão |
| 🔴 Vermelho | `kirmizi-saldirgan` | Tenta derrubar as afirmações da obra |
| 🩷 Rosa | `pembe-denetci` | Audita as constatações, fecha a contagem |
| 🟣 Roxo | `mor-sorgucu` | Verifica o entendimento, faz perguntas difíceis, investiga as causas |
| 🟢 Verde | `yesil-gercek` | Verifica informações externas em fontes primárias, faz pesquisa prévia |
| 🟠 Laranja | `turuncu-deneyci` | Executa com as próprias mãos, recalcula |
| 🩶 Cinza | `gri-sadelestirici` | Pergunta "isso é mesmo necessário?", mantém o foco |
| ⚫ Preto | `siyah-hafiza` | Pega o que foi esquecido e o que voltou a quebrar; é o portão |
| ⚪ Branco | `beyaz-kayitci` | Verifica o que foi feito, registra o trabalho sem dono e o rastro |
| 🟡 Amarelo | `sari-kullanici` | Testa a obra com os olhos de quem vai usá-la |
| 🩵 Turquesa | `turkuaz-verimlilik` | Encontra desperdício de tokens, leituras e chamadas e o reduz ao mínimo (é adicionado a um tamanho) |

A "obra" é o arquivo ou trabalho que está sendo revisado. A tela do Claude reconhece apenas oito cores para os times; por isso o Cinza aparece em ciano e o Preto e o Branco não têm cor. Reconheça cada time pelo nome.

## Tamanhos e modos

O **tamanho** é quantos times vão trabalhar. Se você não disser, o Claude escolhe de acordo com o porte do trabalho e informa.

| Tamanho | Times | Teto de rodadas | Para quê |
|---|---|---|---|
| Rápido | Azul, Vermelho, Rosa | 2 | Trabalho pequeno, arquivo único, verificação rápida |
| Normal | + Verde, Cinza, Laranja | 5 | A maioria dos trabalhos |
| Completo | + Roxo, Amarelo, Preto, Branco | 10 | Trabalho crítico, de longa duração ou caro de desfazer |

É possível adicionar times avulsos a um tamanho ("tamanho rápido, adicione também o time amarelo"); o Claude adiciona por conta própria o Amarelo em tarefas escolares e textos, e o Laranja em trabalhos que exigem execução, e avisa. Os tetos de rodadas são valores iniciais não testados; para mudá-los, basta dizer.

O **modo** é o que será examinado: **amplo** (o trabalho inteiro) ou **foco** (uma única pergunta). Se você fizer uma única pergunta, o Claude escolhe o modo foco.

## Onde fica o resultado

- O Claude conta o resultado no chat: uma frase no topo e um breve resumo abaixo; o que está **comprovado** e o que é *estimativa* são informados separadamente; se ele tiver alguma pergunta, ela fica no final.
- Uma pasta `takim` é criada na pasta em que você está trabalhando. Ela é o registro próprio dos times; você não precisa lê-la. A versão original do seu arquivo também fica nessa pasta (`takim\yedek\`); se estiver satisfeito com as correções, pode apagá-la depois que o trabalho terminar.
- Para passar uma nota ou um relatório aos times, você pode colocar o arquivo na pasta `takim\gelen\`.
- Se você iniciar um novo trabalho na mesma pasta, os registros antigos não são apagados; são movidos para `takim\arsiv\`.

Texto completo das regras: `skills/takim-dongu/sablonlar/kurallar.md`.

## Desinstalação

- Se você instalou com o `kur.cmd`: dê um clique duplo no arquivo `kaldir.cmd`. Ele apaga apenas os arquivos de agentes do pacote e as três pastas de habilidades; não mexe nas pastas `takim` dos seus projetos. Se sobrar algum arquivo que ele não conseguiu apagar, ele avisa na tela.
- Se você instalou como plugin: digite `/plugin` no Claude Code e remova o plugin na janela que se abre (esta etapa não foi verificada).
- Se você copiou para um único projeto: apague os arquivos que copiou da pasta `.claude` desse projeto.

## Outras formas de instalação (avançado)

Use apenas uma. Se você usar o caminho de plugin junto com o `kur.cmd`, os times aparecem duas vezes na lista.

**Como plugin.** Onde está escrito `<takim-ajan klasörünün yolu>` abaixo, coloque o caminho completo desta pasta no seu computador. Dentro do Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

O segundo comando não conclui a instalação sozinho: ele abre uma janela onde você escolhe o escopo de usuário. Não foi verificado se um caminho do Windows é lido corretamente nesse comando. Depois de instalado como plugin, os nomes dos agentes e das habilidades passam a ter o prefixo `takim-ajan:`.

**Em um único projeto.** Copie o conteúdo da pasta `agents` para a pasta `.claude\agents` do projeto, e as três pastas que estão dentro da pasta `skills` para a pasta `.claude\skills` do projeto. As três pastas de habilidades precisam ser copiadas juntas.

## Conteúdo do pacote

| Local | O que contém |
|---|---|
| `agents/` | Os arquivos de instruções dos times |
| `skills/` | Três habilidades: `takim-dongu` (ciclo e modelos), `takim-tek` (time único), `takim-durum` (status) |
| `tests/` | A verificação própria do pacote (`tests/denetle.ps1`), cenários de pressão e três ensaios a seco |
| `docs/` | `docs/koken.md` (de onde veio), `docs/arastirma.md` (os métodos em que se baseia) |
| `kur.cmd`, `kaldir.cmd` | Instalar / desinstalar com clique duplo |

Versão 0.2.4. O que ainda não foi testado está listado no final de `docs/koken.md`.
