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
- [x] **Direct computation DONE 2026-06-15** (main.tex, full proof of `prop:homog`): RHS factor $= \theta_k^{\gamma-(p-1)}\to 0$. Mechanism = exponent collapse: spatial scaling gives $r_k^{sp}$, amplitude scaling gives $(\theta_k r_k^\alpha)^{-(p-1-\gamma)}$, and $\alpha(p-1-\gamma)=sp$ **exactly** kills all powers of $r_k$. Symbolically verified ($r$-exponent $=0$).
- [ ] Locate and quote the stability lemma (weak/viscosity solutions under local uniform convergence with tail control) — Brasco–Lindgren or KKL **[only analytic input left in Phase 2]**
- [x] Remark written (main.tex NOTE after `prop:homog`): homogeneity replaces differentiability of $F$ at $0$ (PTU §6 parallel)

## Phase 3 — Admissible region in $(s,p,\gamma)$
- [x] **Tail integrability (Lemma `lem:tail`)**: VERIFIED 2026-06-10 — $\gamma < \frac{(p-1)^2}{p-1+sp}$ is exactly the incremental-quotient tail condition $(\alpha-1)(p-1) < sp$
  - [x] Decided: incremental quotients are NOT optional — uniform tails for $v_k$ itself are impossible ($\mathrm{Tail}^{p-1} \sim (\theta_k r_k^\alpha)^{-\gamma} \to \infty$ under the seminorm normalization)
  - [x] Sanity check $p=2$: $\gamma < \frac{1}{1+2s}$ ✓
  - [x] Checked PTU §4 (2026-06-10): their device does **not** obviously give the lower bound — the same far-field issue appears unaddressed in PTU itself ((4.11) justified only up to $\frac{1}{2r_k}$). See LITERATURE.md
  - [x] Checked CS stability hypotheses (2026-06-10): Lemma 4.3 requires **global** $L^1(\mathbb{R}^n,\omega)$ convergence, and their Remark 4.4 counterexample (far-field mass at radius $2^k$) shows it cannot be weakened — option (iv) is closed
  - [x] Attack notes written (2026-06-10, main.tex §5 end, HEURISTIC): (a) compatibility forces $\alpha' \le \frac{sp-(p-1)}{p-1}$, hence $s > 1-\frac1p$ (explains PTU's $s>\frac12$?); (b) **likely fix: far field = slowly-varying datum** — its oscillation (not size) is what matters; at $p=2$ increments kill the divergent constant and oscillation $\to 0$ iff $\gamma < \frac{1}{1+2s}$ = the tail condition, no lower bound on $\theta_k$ needed; (c) for $p\neq2$: truncation error $G_k = a_k + g_k$ with $\|\nabla g_k\| \to 0$ iff $\gamma < \frac{p-1}{1+sp}$ (NEW candidate constraint, stricter than tail for $p>2$); crux = what kills the constant $a_k$
  - [x] ★ (b) made rigorous-in-outline at $p=2$ (2026-06-10, main.tex (c′), 5 steps): truncation → oscillation vanishes → $a_k$ bounded **a posteriori** → limit equation $= b\cdot h$ → second differences kill $b$ → Liouville. **No lower bound on $\theta_k$ needed. Repairs PTU (4.12).**
  - [x] **★ Checked (c′) steps (1)–(5) 2026-06-15 — VERDICT: sound in outline at $p=2$ under the single hypothesis $\gamma<\frac{1}{1+2s}$.** Written into main.tex as Remark `rem:cprime-check`. Key resolutions: **Step 2 is NOT circular** — the operator bound at $x_0$ splits into (local singular part, bounded by PTU's uniform $C^{2s+\gamma}$) + (tail, bounded using ONLY the growth bound $|w_k|\le C_h|y|^{\alpha-1}$ on the truncated support $B_{\rho_k}$, converging iff $\gamma<\frac{1}{1+2s}$); neither uses $a_k$ or any $\theta_k$ lower bound, so $a_k$ is solved-for a posteriori. Steps (1),(3),(5) verified; (4) needs a one-line diagonal-subsequence fix (noted). **Conclusion: (c′) repairs PTU (4.12), no lower bound on $\theta_k$.** $p\neq2$ obstruction LOCATED: steps (4)–(5) use translation invariance, which the $v$-dependent kernel $K_k$ lacks → drop the $a(h)$ route, use vanishing-jet (CP) Liouville directly. **One thing to confirm w/ R.T.**
  - Original per-step risk notes (now resolved, kept for the paper pass):
    - (1) Oscillation bound: redo both integrals with explicit constants; check the annulus bound really uses $|w_k| \le C_h|y|^{\alpha-1}$ only up to $\rho_k < \frac{1}{2r_k}$ (it does — that's why $\rho_k = \frac{1}{4r_k}$); check $\alpha - 2s - 2 < 0$ in the claimed range
    - (2) THE riskiest step: "uniform local regularity + uniform $L^1_s$ ⇒ $(-\Delta)^s\tilde w_k(x_0)$ uniformly bounded" — needs $C^{2s+\gamma'}$ at $x_0$ with $2s+\gamma' > 2s$ (PTU's interior bound gives this, but check it survives truncation: $\tilde w_k$ is discontinuous at $\partial B_{\rho_k}$ — harmless for the integral at $x_0 \in B_R$? distance $\sim \rho_k$, contributes $\rho_k^{-2s}\cdot$cap — recheck this is bounded WITHOUT the $\theta_k$ bound... it's the same outer integral as $a_k$ itself, so circular? NO — the point evaluation bounds $f_k(x_0) + a_k + o(1)$ as a WHOLE; verify the logic is: LHS bounded ⇒ $a_k$ bounded, not circular)
    - (3) Dominated convergence for $\tilde w_k \to w_0$ in $L^1_s$: dominating function $C_h(1+|y|)^{\alpha-1}$, fine under tail condition; check pointwise convergence at fixed $y$ (eventually $y \in B_{\rho_k}$ ✓)
    - (4) Cocycle: $a(h)$ defined along subsequences — need it well-defined (limit independent of subsequence) or run the cocycle at the level of $a_k(h)$ before passing to the limit; measurability of $h \mapsto a(h)$: it's a pointwise limit of continuous-in-$h$ quantities — check
    - (5) "$\Delta_h^2 v$ affine $\forall h$ ⇒ $v$ polynomial of degree ≤ 3": prove or find reference (difference calculus; $v \in C^1$ helps); then growth $\alpha < 1+2s \le 3$ cuts to degree ≤ 2 — careful: need $\alpha < 3$ AND coefficients of degree-3 part killed by growth — write it out; vanishing 2-jet: PTU branching points have $D^2 u_k(0) = 0$ ✓ but check it passes to $v_0$
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
- [x] **Intersected the regions 2026-06-15** (main.tex §3 "Synthesis" subsection; symbolically verified). Findings: (i) **C4 $=\frac{p-1}{1+sp}$ is the binding explicit constraint for $p>2$** ($C4\le C1$, eq. only at $p=2$); explicit region $\gamma<\min(C2,C4)$ is **nonempty**. (ii) **$\nu=1$-only is fine where the result is new**: C2 window at $s=1$ is $\gamma<\frac p2-1>0$ for all $p>2$; only pinches at $p=2$ (= PTU's done case). (iii) **Real binding = ceiling $\alpha<1+\alpha_0$** — needs a QUANTITATIVE lower bound on GJS $\alpha_0$ (e.g. $\alpha_0>\frac12$ at $p=3,s=\frac34,\gamma=\frac12$), which GJS doesn't give for free. **Decision for R.T.:** abstract $\alpha_0$ (clean, region nonempty only in corner $sp\downarrow p-1$) vs. extract explicit $\alpha_0(n,s,p)$.
- [ ] Evaluate fallback: only $C^{0,\gamma_0}$ estimates with $u(x_0)=0$ — is the parameter range nonempty?

## Phase 4 — Liouville theorem (Conjecture `conj:liouville`) ★ load-bearing wall
- [x] Read Correa–dos Prazeres §6 (arXiv:2504.11370) — extracted 2026-06-10, see LITERATURE.md. **Key: no affine subtraction needed** — restate Liouville with vanishing 1-jet hypothesis (their Lemma 5 form)
- [x] Restate Conjecture `conj:liouville` in vanishing-jet form — done 2026-06-10 in main.tex
- [x] **Closed the nonlocal gap 2026-06-15** (main.tex Lemma `lem:tailfix` + Remark `rem:linkernel`): $v_l$ tail diverges ($\alpha(p-1)>sp$), so use **incremental quotients** $w^h$ — growth drops one order, tail finite **iff tail condition C1** $(\alpha-1)(p-1)<sp$. Resolution (ii) confirmed as the right one.
- [x] Transplant their Lemma 6 (jet-to-growth) — done 2026-06-10, Lemma `lem:jet` in main.tex with proof
- [x] Route (b) characterized (Remark `rem:linkernel`): for $p\neq2$, $w^h$ solves LINEAR $L_{K_v}w^h=0$, kernel $K_v\simeq|v(x)-v(y)|^{p-2}|x-y|^{-n-sp}$ (GJS §7); use their measurable-kernel $C^{1,\alpha_0}$ est. **⚠️ Caveat: $K_v$ degenerates where $v$ flat (worst at branching point) — must check $v_0$ not flat on an open set. Flag to R.T.**
- [x] Remark written: $\nu = 2$ fails (quadratics not $(s,p)$-harmonic for $p \neq 2$) — main.tex

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
