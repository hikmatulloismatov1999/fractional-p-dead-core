# PROJECT STATE — single source of truth

> Read this file first when resuming work (new session, new machine, new collaborator).
> Last updated: **2026-06-10**. Update the date and the "Where we are" section after every working session.

## 1. What this project is

Improved regularity for the **two-phase nonlocal dead-core problem**

$$(-\Delta_p)^s u = u_+^\gamma - u_-^\gamma \quad \text{in } B_1, \qquad 0<\gamma<p-1,\ s\in(0,1),\ p\ge 2.$$

Goal: at free boundary points $x_0$ with $u(x_0)=|Du(x_0)|=0$, prove
$|u(x)| \le C|x-x_0|^{\alpha}$ with $\alpha = \frac{sp}{p-1-\gamma}$ — *better* than the optimal regularity of $(s,p)$-harmonic functions ("better than Schauder").
Byproduct via $s \nearrow 1$: the two-phase **local** $p$-dead-core estimate $C|x-x_0|^{p/(p-1-\gamma)}$ — new even locally.

Strategy (supervisor, email 2026-04-26): transplant the PTU machine — Liouville-type theorem + known regularity. Local blueprint: Correa–dos Prazeres §6. The fact that $(p-1)$-homogeneity of $(-\Delta_p)^s$ replaces linearization is our new mechanism.

## 2. People

- **Hikmatullo Ismatov** — hikmatullo.ismatov@kaust.edu.sa (KAUST)
- **Supervisor: Rafayel Teymurazyan** — rafayel.teymurazyan@kaust.edu.sa, co-author of the template paper (PTU). Plan: bring §3–§5 of the notes to his office once Lemmas tail/beta/ceiling are verified.

## 3. Infrastructure (already set up — do NOT redo)

| Thing | Value |
|---|---|
| GitHub repo | https://github.com/hikmatulloismatov1999/fractional-p-dead-core (public; username `hikmatulloismatov1999`) |
| Local folder | `~/Documents/Claude/Projects/Freeboundary problems` (this folder = the git repo) |
| Overleaf | Project imported from GitHub; sync via **Menu → GitHub → Pull/Push** in the Overleaf editor; root document `main.tex`; KAUST institutional plan |
| Workflow | Edit locally → `git push` → Pull in Overleaf. Edit in Overleaf → Push to GitHub there → `git pull` locally. |
| Git identity | user.name Hikmatullo, user.email hikmatullo.ismatov@kaust.edu.sa |

## 4. File map

| File | Role |
|---|---|
| `main.tex` | Working notes / future paper draft. Compiles cleanly (latexmk/pdflatex). TODOs in red, notes in blue. |
| `PROGRESS.md` | Phase-by-phase checklist (Phases 0–6). Tick items as they're done. |
| `LITERATURE.md` | Reading log with per-paper "shopping lists" and extraction notes section. |
| `papers/` | Reference PDFs (the three pillars, see below). `.gitignore` excludes all PDFs *except* `papers/*.pdf`. |
| `PROJECT_STATE.md` | This file. |

## 5. The three pillar papers (PDFs in `papers/`)

1. **PTU** — dos Prazeres–Teymurazyan–Urbano, arXiv:2504.09557 — template ($p=2$): exponent $\frac{2s}{1-\gamma}$, range $\gamma\in(0,1/3)$, $s\in(1/2,1)$.
2. **Correa–dos Prazeres** — arXiv:2504.11370 — two-phase quenching (Alt–Phillips) for local $p$-Laplacian; **§6** = Liouville + regularity strategy in the quasilinear setting.
3. **Giovagnoli–Jesus–Silvestre** — arXiv:2509.26565 — $C^{1,\alpha}$ for fractional $p$-harmonic functions, $p\in[2,\frac{2}{1-s})$, with Tail term. **This is the $C^{1,\alpha_0}$ input for Lemma `lem:ceiling`.** ⚠️ Stated for homogeneous equation only — extension to RHS $f\in L^\infty$ must be checked.

## 6. Where we are (update every session)

**Done:**
- Repo + Overleaf pipeline operational; initial notes (`main.tex`) written: scaling exponent, homogeneity blow-up mechanism, three constraint lemmas (first pass), Liouville conjecture with routes (a)/(b), target theorems, reading list.
- $C^{1,\alpha_0}$ paper identified (GJS); supervisor's three pillars filed and referenced.

**Key open items (the critical path):**
1. **Liouville theorem** (Conjecture `conj:liouville`) — the load-bearing wall. Route (a) first: $C^{1,\alpha_0}$ estimate "modulo affine functions" (affine subtraction breaks the equation — that's the real obstruction). Read Correa–dos Prazeres §6 first.
2. **Verify Lemma `lem:tail`** — boxed condition $\gamma < \frac{(p-1)^2}{p-1+sp}$ is a FIRST PASS, must be recomputed (decide: incremental quotients needed or tail applies directly to $v_0$). Sanity: $p=2$ ⇒ $\gamma<\frac{1}{1+2s}$.
3. **GJS with RHS** — does their $C^{1,\alpha}$ survive $f\in L^\infty$?
4. Intersect the three constraint regions → hypothesis of the main theorem.
5. Stability lemma for $(-\Delta_p)^s$ under local uniform convergence (Brasco–Lindgren / KKL) — replaces Caffarelli–Silvestre Lemma 5.

**Questions ready for the supervisor meeting (prepared 2026-06-10):**
1. *Far-field tail in PTU §4:* (4.11) is justified only for $|x| \le \frac{1}{2r_k}$, but the limit passage (4.12) needs uniform $L^1_s$ control on all of $\mathbb{R}^n$; the outer region needs $\theta_k \gtrsim r_k^{-2s\gamma/(1-\gamma)}$. How is this handled? (Same issue is the one remaining gap in our $p\neq2$ tail analysis.)
2. *The $s\nearrow1$ theorem:* GJS constants blow up as $s\to1$ (their §1.2, explicit) — propose proving the local two-phase theorem directly (CP §6 scheme + classical $C^{1,\alpha}$), possibly as a separate short paper.
3. *GJS with RHS:* propose writing the $f\in L^\infty$ extension in the range $p < \frac{1}{1-s}$ (their own remark suggests it works there; forces $s>\frac12$ like PTU) as a lemma of our paper.

**Next session: PTU Theorem 3.1 (their Liouville) Step 1 in detail; then attempt the vanishing-jet Liouville for $(s,p)$ assuming the tail issue resolved; check CS Lemma 5 hypotheses.**

## 7. Conventions and decisions already made

- Two-phase formulation is forced: one-phase signed dead cores obstructed nonlocally by the strong minimum principle (use in introduction).
- Notion of solution (first pass): weak, $u\in W^{s,p}_{loc}\cap L^\infty(\mathbb{R}^n)$; weak ≡ viscosity cited from Korvenpää–Kuusi–Lindgren; existence plumbing deferred.
- $\nu=2$ Liouville is out of reach (quadratics not $(s,p)$-harmonic) — remark, not a problem.
- Tail notation: $\mathrm{Tail}_{p-1,sp}$ as in Brasco–Lindgren–Schikorra.
- Macros in `main.tex`: `\fpl{u}`, `\Jp{t}`, `\al`, `\Tail`, `\TODO{}`, `\NOTE{}` — reuse, don't redefine.
