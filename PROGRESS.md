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
  - [x] Checked CS stability hypotheses (2026-06-10): Lemma 4.3 requires **global** $L^1(\mathbb{R}^n,\omega)$ convergence, and their Remark 4.4 counterexample (far-field mass at radius $2^k$) shows it cannot be weakened — option (iv) is closed
  - [x] Attack notes written (2026-06-10, main.tex §5 end, HEURISTIC): (a) compatibility forces $\alpha' \le \frac{sp-(p-1)}{p-1}$, hence $s > 1-\frac1p$ (explains PTU's $s>\frac12$?); (b) **likely fix: far field = slowly-varying datum** — its oscillation (not size) is what matters; at $p=2$ increments kill the divergent constant and oscillation $\to 0$ iff $\gamma < \frac{1}{1+2s}$ = the tail condition, no lower bound on $\theta_k$ needed; (c) for $p\neq2$: truncation error $G_k = a_k + g_k$ with $\|\nabla g_k\| \to 0$ iff $\gamma < \frac{p-1}{1+sp}$ (NEW candidate constraint, stricter than tail for $p>2$); crux = what kills the constant $a_k$
  - [x] ★ (b) made rigorous-in-outline at $p=2$ (2026-06-10, main.tex (c′), 5 steps): truncation → oscillation vanishes → $a_k$ bounded **a posteriori** → limit equation $= b\cdot h$ → second differences kill $b$ → Liouville. **No lower bound on $\theta_k$ needed. Repairs PTU (4.12).**
  - [ ] Check (c′) steps (1)–(5) line by line on paper (esp. uniform regularity in (2), measurability of $a(h)$, cubic deduction in (5))
  - [ ] Port to $p\neq2$: increments solve the LINEAR equation $L_{K_k}w=$ RHS-diff (GJS §7 kernel); datum trick is linear-friendly; constraint $\gamma<\frac{p-1}{1+sp}$
  - [ ] ★ Resolve the (a)/(d) constraint clash — likely spurious (weak formulation avoids pointwise evaluation; PTU work at $\nu=2$). Redo all exponent bookkeeping slowly on paper
  - [ ] Still: ask R.T. about PTU (4.12) — now with a proposed fix in hand
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
