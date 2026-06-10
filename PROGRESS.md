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
- [ ] **Tail integrability (Lemma `lem:tail`)**: recompute the boxed condition $\gamma < \frac{(p-1)^2}{p-1+sp}$ — first pass, MUST be verified
  - [ ] Decide: is PTU step (4.11) (incremental quotients) needed, or does the tail condition apply directly to $v_0$?
  - [ ] Sanity check $p=2$: recover $\gamma < \frac{1}{1+2s}$
- [ ] **Order of jet (Lemma `lem:beta`)**: $\gamma < (p-1) - \frac{sp}{2}$ (forces $sp < 2(p-1)$)
- [ ] **Regularity ceiling (Lemma `lem:ceiling`)**:
  - [x] Track down the $C^{1,\alpha_0}$ paper → **Giovagnoli–Jesus–Silvestre, arXiv:2509.26565** (Thm 1.1: $C^{1,\alpha}$ for $(-\Delta_p)^s u = 0$, $p \in [2,\frac{2}{1-s})$, with Tail term)
  - [ ] Record exact statement, constants, tail terms, uniformity as $s \nearrow 1$; ⚠️ check it extends to RHS $f \in L^\infty$ (their Thm 1.1 is homogeneous)
  - [ ] Record constraint $\alpha < 1 + \alpha_0$ and window $p \in [2, \frac{2}{1-s})$
- [ ] Intersect the three boxed regions; draw the admissible set (= hypothesis of the main theorem)
- [ ] Evaluate fallback: only $C^{0,\gamma_0}$ estimates with $u(x_0)=0$ — is the parameter range nonempty?

## Phase 4 — Liouville theorem (Conjecture `conj:liouville`) ★ load-bearing wall
- [ ] Read Correa–dos Prazeres §6 (arXiv:2504.11370) — supervisor's pointer: the Liouville + regularity strategy for the local $p$-Laplacian
- [ ] Route (a) — try first: scaled functions $v_\rho$, $C^{1,\alpha_0}$ estimate "modulo affine functions" (flatness-improvement style)
- [ ] Route (b) — backup: linearization along $v$; incremental quotients solve $L_K w_h = 0$ with degenerate kernel; check kernel class under the growth bound
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
