# Progress checklist — nonlocal two-phase $p$-dead-core

Problem: $(-\Delta_p)^s u = u_+^\gamma - u_-^\gamma$ in $B_1$, target exponent $\alpha = \frac{sp}{p-1-\gamma}$.
Companion files: `main.tex` (working notes / draft), `LITERATURE.md` (reading log).

## Phase 0 — Setup
- [x] Fix the model: two-phase formulation (one-phase obstructed by strong minimum principle)
- [x] Identify the program: transplant the PTU machine to $p \neq 2$
- [ ] Fix notion of solution: weak solutions $u \in W^{s,p}_{loc} \cap L^\infty(\mathbb{R}^n)$; cite weak ≡ viscosity (Korvenpää–Kuusi–Lindgren)

## Phase 1 — Scaling (Prop. `prop:scaling`) ✅ done 2026-06-10
- [x] Write out change of variables $y \mapsto ry$ in the singular integral (pointwise + weak formulation)
- [x] Verify $\alpha = \frac{sp}{p-1-\gamma}$
- [x] Consistency check $p=2$: recover PTU $\alpha = \frac{2s}{1-\gamma}$
- [x] Consistency check $s \nearrow 1$: recover da Silva–Salort $\alpha = \frac{p}{p-1-\gamma}$

## Phase 2 — Blow-up limit via homogeneity (Prop. `prop:homog`)
- [ ] Direct computation: scaling + $(p-1)$-homogeneity ⇒ RHS factor $\theta_k^{\gamma-(p-1)} \to 0$
- [ ] Locate and quote the stability lemma (weak/viscosity solutions under local uniform convergence with tail control) — Brasco–Lindgren or KKL
- [ ] Write the remark: homogeneity replaces differentiability of $F$ at $0$ (PTU §6 parallel)

## Phase 3 — Admissible region in $(s,p,\gamma)$
- [x] **Tail integrability (Lemma `lem:tail`)**: VERIFIED 2026-06-10 — $\gamma < \frac{(p-1)^2}{p-1+sp}$ is exactly the incremental-quotient tail condition $(\alpha-1)(p-1) < sp$
  - [x] Decided: incremental quotients are NOT optional — uniform tails for $v_k$ itself are impossible ($\mathrm{Tail}^{p-1} \sim (\theta_k r_k^\alpha)^{-\gamma} \to \infty$ under the seminorm normalization)
  - [x] Sanity check $p=2$: $\gamma < \frac{1}{1+2s}$ ✓
  - [x] Checked PTU §4 (2026-06-10): their device does **not** obviously give the lower bound — the same far-field issue appears unaddressed in PTU itself ((4.11) justified only up to $\frac{1}{2r_k}$). See LITERATURE.md
  - [ ] ★ **THE open point:** resolve the far-field bound — (i) ask R.T. (it's his paper!), (ii) dichotomy $\theta_k \gtrless r_k^{-\delta}$, (iii) cutoff + error, (iv) check exact hypotheses of Caffarelli–Silvestre Lemma 5 (maybe local convergence suffices)
- [ ] **Order of jet (Lemma `lem:beta`)**: $\gamma < (p-1) - \frac{sp}{2}$ (forces $sp < 2(p-1)$)
- [ ] **Regularity ceiling (Lemma `lem:ceiling`)**:
  - [x] Track down the $C^{1,\alpha_0}$ paper → **Giovagnoli–Jesus–Silvestre, arXiv:2509.26565** (Thm 1.1: $C^{1,\alpha}$ for $(-\Delta_p)^s u = 0$, $p \in [2,\frac{2}{1-s})$, with Tail term)
  - [x] Structural assessment done 2026-06-10 (see LITERATURE.md): RHS $f\in L^\infty$ extension plausible for $2\le p<\frac{1}{1-s}$ (forces $s>\frac12$, like PTU); uniformity as $s\nearrow1$ **FAILS** (their §1.2, explicit)
  - [ ] Write the $f \in L^\infty$ extension of GJS in the range $p < \frac{1}{1-s}$ (candidate standalone lemma for our paper)
  - [ ] ⚠️ `thm:local` ($s\nearrow1$) blocked via GJS — decide: direct local proof (CP §6 + classical $C^{1,\alpha}$) vs drop. **Ask supervisor**
  - [ ] Record constraint $\alpha < 1 + \alpha_0$ and window $p \in [2, \frac{2}{1-s})$
- [ ] Intersect the three boxed regions; draw the admissible set (= hypothesis of the main theorem)
- [ ] Evaluate fallback: only $C^{0,\gamma_0}$ estimates with $u(x_0)=0$ — is the parameter range nonempty?

## Phase 4 — Liouville theorem (Conjecture `conj:liouville`) ★ load-bearing wall
- [x] Read Correa–dos Prazeres §6 (arXiv:2504.11370) — extracted 2026-06-10, see LITERATURE.md. **Key: no affine subtraction needed** — restate Liouville with vanishing 1-jet hypothesis (their Lemma 5 form)
- [x] Restate Conjecture `conj:liouville` in vanishing-jet form — done 2026-06-10 in main.tex
- [ ] **Close the nonlocal gap**: Tail of $v_l = v(l\cdot)/l^{1+\beta}$ diverges under growth $|x|^{1+\beta}$ — try (i) truncation + $L^\infty$ RHS error, (ii) PTU-style incremental quotients (growth drops one order), (iii) mirror PTU (4.11)
- [x] Transplant their Lemma 6 (jet-to-growth) — done 2026-06-10, Lemma `lem:jet` in main.tex with proof
- [ ] Route (b) — backup only: linearization along $v$; incremental quotients solve $L_K w_h = 0$ with degenerate kernel
- [ ] Write remark: $\nu = 2$ fails (quadratics not $(s,p)$-harmonic for $p \neq 2$)

## Phase 5 — Main theorems
- [ ] **Theorem `thm:main`** (growth estimate): contradiction + $\theta_k$ device of PTU (4.3)–(4.8) with the replaced seminorms
- [ ] **Corollary** (gradient growth): $\sup_{B_r}|Du| \le C r^{\alpha-1}$
- [ ] **Theorem `thm:local`** (local two-phase $p$-dead-core, $s \nearrow 1$):
  - [ ] BBM-type convergence $(-\Delta_p)^s \to -\Delta_p$; fix constants $c_{n,s,p}$
  - [ ] Uniformity in $s$ of every constant in the chain
- [ ] **Liouville with growth**: rescale + main theorem + squeeze (one-page corollary)
- [ ] Open question (separate note): nondegeneracy via barrier — compute $(-\Delta_p)^s |x|^\alpha$ (Brasco et al. 1-d computations; Iannizzotto–Mosconi–Squassina $d^s$-barriers)

## Phase 6 — Write-up
- [ ] Introduction: one-phase vs two-phase obstruction; "better than Schauder" punchline
- [ ] Existence plumbing
- [ ] Complete bibliography (move from reading list to .bib)
- [ ] Bring §3–§5 of notes to Teymurazyan (KAUST) once Lemmas tail/beta/ceiling are verified
