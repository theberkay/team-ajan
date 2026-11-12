# Team Ajan

🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

## What it does

It has a piece of your work (code, engineering calculation, architectural project, product / interface design, assignment, research, writing, plan) reviewed not by a single eye but by separate "teams" that check one another; if you wish, it has it fixed until no errors remain. It is a plugin package for Claude Code. It contains two kinds of files: **agent** (instructions describing how a team works) and **skill** (instructions describing how Claude manages the teams).

The domain guide (`skills/takim-dongu/sablonlar/alanlar.md`) tells the teams what to look at in these domains: code, engineering, mechanical, mechatronics, electrical, heavy industry, architecture, design, topic explanation and assignments, presentation, research, documentation, medicine, law, politics, history, music. In medicine and law the teams give no diagnosis, treatment or legal opinion; they only review the text and its sources, and the result carries a "consult an expert" note.

## Install

1. If you received the package as a compressed file (zip), first extract it to a folder.
2. Double-click `kur.cmd`. See the "Kuruldu" (installed) message on screen.
3. Close and reopen Claude.

`kur.cmd` copies only the agent files and the three skill folders to Claude's user folder (`%USERPROFILE%\.claude`); it overwrites older ones with the same names, so do not put your own files in those three folders or under those names. It shows the target folder on screen. When a new version arrives, simply run the same file again. Other installation methods are at the bottom.

## Your first sentence after installing

Open Claude in the folder that contains the file to be reviewed and type one of the following. The sentence must contain the word **"takım"** (team); if it does not, the teams are not activated.

| What you want | The sentence to type |
|---|---|
| Review only, don't touch my file | `have the teams review report.md, without touching it` |
| Review and fix | `have the teams fix calc.md until no errors remain` |
| Focus on a single question | `teams, look only at this: why does this test fail now and then?` |
| One team's opinion | `red team, attack this assignment` · `look at it through the yellow team's eyes` · `turquoise team, look for waste` |
| Also take my note into account | `give this to the teams as a note: …` |
| Where they are | `how are the teams doing?` |
| Resume where they left off · stop | `teams, continue` · `stop the teams` |

Skill triggers are written in Turkish; requests containing "takım" / "takımlar" trigger them reliably; requests in other languages may work but are not tested.

Claude first gives a short summary (what it understood, what it assumed, how many teams will work for at most how many rounds) and starts. While working it may ask permission to write files and run commands; how many times it will ask has not been measured yet. You can say yes to write permissions for the `takim` folder; if you are unsure about a command permission, say no, and that check is reported as "could not be checked".

## What happens to your file

- **If you say "review", your file does not change.** The teams are told to write reports and logs only to their own `takim` folder ("review only"); a copy of your file is still taken to the `takim\yedek\` folder.
- **If you say "fix",** Claude first copies your file to the `takim\yedek\` folder and tells you "your file will change, the backup is here". Only the Blue team writes to your file.
- If your request is ambiguous, Claude does not touch your file.
- It has not been verified that the teams can read Word or PDF files; Claude says so at the start and works on a copy converted to text.

## When it ends

If you said "review", it ends after a single review round: Claude explains what it found and asks whether to fix it. If you said "fix", it ends when the errors found have been fixed and the fixes re-checked, and when how every unfinished item will be closed has been written down. It may also stop before finishing (for example when the maximum number of rounds, the "round cap", is reached, or when something comes up that you need to decide); when it stops, Claude explains why and asks. The list of stop conditions is in section 8 of the rules.

How long a round takes has not been measured; time and usage grow as the number of teams grows.

## Teams

| Team | Agent | What it does |
|---|---|---|
| 🔵 Blue | `mavi-yazar` | Writes the work, brings every objection to a conclusion |
| 🔴 Red | `kirmizi-saldirgan` | Tries to break the work's claims |
| 🩷 Pink | `pembe-denetci` | Audits the findings, closes the count |
| 🟣 Purple | `mor-sorgucu` | Checks understanding, asks hard questions, investigates the cause |
| 🟢 Green | `yesil-gercek` | Verifies outside information from primary sources, does preliminary research |
| 🟠 Orange | `turuncu-deneyci` | Runs things with its own hands, recalculates |
| 🩶 Gray | `gri-sadelestirici` | Asks "is this really necessary", keeps the focus |
| ⚫ Black | `siyah-hafiza` | Catches what was forgotten and what regressed; it is the gate |
| ⚪ White | `beyaz-kayitci` | Verifies what was done, records ownerless work and the trail |
| 🟡 Yellow | `sari-kullanici` | Tries the work through the eyes of the person who will use it |
| 🩵 Turquoise | `turkuaz-verimlilik` | Finds token, reading and call waste and minimizes it (added to a size) |

The "work" is your file or job under review. Claude's screen recognizes only eight colors for the teams; so Gray appears cyan, and Black and White have no color. Recognize a team by its name.

## Sizes and modes

**Size** is how many teams will work. If you don't say, Claude chooses according to the size of the job and tells you.

| Size | Teams | Round cap | For |
|---|---|---|---|
| Quick | Blue, Red, Pink | 2 | Small job, single file, quick check |
| Normal | + Green, Gray, Orange | 5 | Most jobs |
| Full | + Purple, Yellow, Black, White | 10 | Critical, long-lived or costly-to-undo work |

Teams can be added to a size one by one ("quick size, add the yellow team too"); Claude adds Yellow on its own for assignments and writing, and Orange for work that needs running, and says so. Round caps are untested starting values; just say so to change them.

**Mode** is what is looked at: **broad** (the whole job) or **focus** (a single question). If you ask a single question, Claude chooses focus mode.

## Where the result is

- Claude tells you the result in the chat: a single sentence at the top, a short summary below; what is **proven** and what is *estimated* are stated separately; its question, if any, is at the very bottom.
- A `takim` folder is created in the folder you work in. This is the teams' own log; you don't need to read it. Your file's original version is also in this folder (`takim\yedek\`); if you are happy with the fixes, you can delete it after the job is done.
- To give the teams a note or report, you can drop the file into the `takim\gelen\` folder.
- If you start a new job in the same folder, old records are not deleted; they are moved under `takim\arsiv\`.

Full text of the rules: `skills/takim-dongu/sablonlar/kurallar.md`.

## Uninstalling

- If you installed with `kur.cmd`: double-click `kaldir.cmd`. It deletes only the package's agent files and the three skill folders; it does not touch the `takim` folders in your projects. If a file it could not delete remains, it says so on screen.
- If you installed as a plugin: type `/plugin` in Claude Code and remove the plugin from the window that opens (this step has not been verified).
- If you copied it into a single project: delete the files you copied from that project's `.claude` folder.

## Other installation methods (advanced)

Use only one. If you use the plugin method together with `kur.cmd`, the teams appear twice in the list.

**As a plugin.** Where it says `<takim-ajan klasörünün yolu>` below, put the full path of this folder on your computer. In Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

The second command does not finish the installation by itself: it opens a window; there you choose the user scope. It has not been verified that a Windows path is read correctly in this command. When installed as a plugin, agent and skill names are prefixed with `takim-ajan:`.

**Into a single project.** Copy the contents of the `agents` folder into the project's `.claude\agents` folder, and the three folders inside the `skills` folder into the project's `.claude\skills` folder. The three skill folders must be copied together.

## Package contents

| Location | What's inside |
|---|---|
| `agents/` | The teams' instruction files |
| `skills/` | Three skills: `takim-dongu` (loop and templates), `takim-tek` (single team), `takim-durum` (status) |
| `tests/` | The package's own check (`tests/denetle.ps1`), pressure scenarios and three dry runs |
| `docs/` | `docs/koken.md` (where it came from), `docs/arastirma.md` (the methods it relies on) |
| `kur.cmd`, `kaldir.cmd` | Double-click to install / uninstall |

Version 0.3.0. What has not been tested yet is listed at the end of `docs/koken.md`.

License: MIT (LICENSE)
