🌐 [Türkçe](README.md) · [English](README.en.md) · [All languages](LANGUAGES.md)

# Team Ajan

## What it does

It has your work (code, an engineering calculation, an architecture project, a product / interface design, an assignment, research, writing, a plan) reviewed not by a single pair of eyes but by separate "teams" that check each other; if you want, it has the work fixed until no errors remain. It is a plugin package for Claude Code. It contains two kinds of files: **agents** (instructions describing how a team works) and **skills** (instructions describing how Claude manages the teams).

## Install

1. If you received the package as a compressed file (zip), first extract it to a folder.
2. Double-click `kur.cmd`. You should see "Kuruldu" on the screen.
3. Close Claude and open it again.

`kur.cmd` only copies the agent files and the three skill folders into Claude's user folder (`%USERPROFILE%\.claude`); it overwrites older files with the same names, so do not put your own files in those three folders or under those names. It shows the target folder on the screen. When a new version comes out, simply run the same file again. Other installation methods are at the bottom.

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

Claude first gives a short summary (what it understood, what it assumed, how many teams will work for at most how many rounds) and then starts. While working it may ask permission to write files and run commands; how many times it will ask has not been measured yet. You can say yes to write permissions for the `takim` folder; if you are unsure about a command permission, say no, and that check will be reported as "could not be checked".

## What happens to your file

- **If you say "review", your file does not change.** The teams are told to write reports and logs only into their own `takim` folder ("review only"); a copy of your file is still taken into the `takim\yedek\` folder.
- **If you say "fix",** Claude first takes a copy of your file into the `takim\yedek\` folder and tells you "your file will change, the backup is here". Only the Blue team writes to your file.
- If your request is unclear, Claude does not touch your file.
- It has not been verified that the teams can read Word or PDF files; Claude says so at the start and works on a copy converted to text.

## When it ends

If you said "review", it ends after a single review round: Claude explains what was found and asks whether it should be fixed. If you said "fix", it ends when the errors found have been fixed, the fixes have been re-checked, and how every unfinished item will be closed has been written down. It can also stop before finishing (for example when the maximum number of rounds, the "round cap", is reached, or when something comes up that you need to decide); when it stops, Claude explains why and asks. The list of stopping conditions is in section 8 of the rules.

How long a round takes has not been measured; time and usage grow as the number of teams grows.

## Teams

| Team | Agent | What it does |
|---|---|---|
| 🔵 Blue | `mavi-yazar` | Writes the work, brings every objection to a conclusion |
| 🔴 Red | `kirmizi-saldirgan` | Tries to break the work's claims |
| 🩷 Pink | `pembe-denetci` | Audits the findings, closes the count |
| 🟣 Purple | `mor-sorgucu` | Checks understanding, asks hard questions, investigates causes |
| 🟢 Green | `yesil-gercek` | Verifies external information against primary sources, does preliminary research |
| 🟠 Orange | `turuncu-deneyci` | Runs things by its own hand, recalculates |
| 🩶 Gray | `gri-sadelestirici` | Asks "is this really necessary", keeps the focus |
| ⚫ Black | `siyah-hafiza` | Catches what was forgotten and what broke again; it is the gate |
| ⚪ White | `beyaz-kayitci` | Verifies what was done, records ownerless work and the trail |
| 🟡 Yellow | `sari-kullanici` | Tries the work through the eyes of the person who will use it |
| 🩵 Turquoise | `turkuaz-verimlilik` | Finds token, reading and call waste and minimizes it (added to a size) |

"The work" is the file or job being reviewed. Claude's screen recognizes only eight colors for the teams; that is why Gray appears cyan and Black and White have no color. Recognize a team by its name.

## Sizes and modes

**Size** is how many teams will work. If you do not say, Claude picks one based on the size of the job and tells you.

| Size | Teams | Round cap | For |
|---|---|---|---|
| Quick | Blue, Red, Pink | 2 | Small job, single file, quick check |
| Normal | + Green, Gray, Orange | 5 | Most jobs |
| Full | + Purple, Yellow, Black, White | 10 | Critical, long-lived or costly-to-undo work |

Individual teams can be added to a size ("quick size, add the yellow team too"); Claude adds Yellow on its own for assignments and writing, and Orange for work that needs running, and says so. The round caps are untested starting values; to change them, just say so.

**Mode** is what will be looked at: **broad** (the whole job) or **focus** (a single question). If you ask a single question, Claude picks focus mode.

## Where the result is

- Claude tells you the result in the chat: one sentence at the top, a short summary below it; what is **proven** and what is *an estimate* are stated separately; any question it has is at the bottom.
- A `takim` folder is created in the folder you are working in. This is the teams' own log; you do not need to read it. The original version of your file is also in this folder (`takim\yedek\`); if you are happy with the fixes, you can delete it after the job is done.
- To give the teams a note or report, you can drop the file into the `takim\gelen\` folder.
- If you start a new job in the same folder, the old records are not deleted; they are moved under `takim\arsiv\`.

Full text of the rules: `skills/takim-dongu/sablonlar/kurallar.md`.

## Uninstall

- If you installed with `kur.cmd`: double-click `kaldir.cmd`. It deletes only the package's agent files and three skill folders; it does not touch the `takim` folders in your projects. If a file it could not delete remains, it says so on the screen.
- If you installed it as a plugin: type `/plugin` in Claude Code and remove the plugin from the window that opens (this step has not been verified).
- If you copied it into a single project: delete the files you copied from that project's `.claude` folder.

## Other installation methods (advanced)

Use only one. If you use the plugin method together with `kur.cmd`, the teams appear twice in the list.

**As a plugin.** Where it says `<takim-ajan klasörünün yolu>` below, put the full path of this folder on your computer. In Claude Code:

```
/plugin marketplace add <takim-ajan klasörünün yolu>
/plugin install takim-ajan@takim-ajan-yerel
```

The second command does not finish the installation on its own: it opens a window where you choose the user scope. It has not been verified that a Windows path is read correctly in this command. Once installed as a plugin, the agent and skill names are prefixed with `takim-ajan:`.

**Into a single project.** Copy the contents of the `agents` folder into the project's `.claude\agents` folder, and the three folders inside the `skills` folder into the project's `.claude\skills` folder. The three skill folders must be copied together.

## What's in the package

| Location | Contents |
|---|---|
| `agents/` | The teams' instruction files |
| `skills/` | Three skills: `takim-dongu` (loop and templates), `takim-tek` (single team), `takim-durum` (status) |
| `tests/` | The package's own check (`tests/denetle.ps1`), pressure scenarios and three dry runs |
| `docs/` | `docs/koken.md` (where it came from), `docs/arastirma.md` (the methods it is based on) |
| `kur.cmd`, `kaldir.cmd` | Double-click to install / uninstall |

Version 0.2.4. What has not been tested yet is listed at the end of `docs/koken.md`.
