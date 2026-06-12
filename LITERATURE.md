# Literature review — nonlocal two-phase $p$-dead-core

Reading log with "shopping lists": what each paper must supply to the project. Status: 🔲 not read · 🔶 skimmed · ✅ extracted.

> **Supervisor's guidance (R. Teymurazyan, email 2026-04-26):** extend the PTU result to the fractional $p$-Laplacian. Main step in PTU: a Liouville-type theorem for the (two-phase) fractional Laplacian combined with known regularity results. For the local $p$-Laplacian, this strategy was employed in **§6 of Correa–dos Prazeres** (arXiv:2504.11370). Regularity for fractional $p$-harmonic functions: **Giovagnoli–Jesus–Silvestre** (arXiv:2509.26565). Read these three, then discuss.

## Core (read line-by-line) — the supervisor's three pillars (PDFs in `papers/`)

### 🔲 dos Prazeres, Teymurazyan, Urbano (PTU) — arXiv:2504.09557
*Improved regularity for a nonlocal dead-core problem.* To appear in Indiana Univ. Math. J. — `papers/2504.09557_PTU_nonlocal-dead-core.pdf`
- The template paper ($p=2$): $(-\Delta)^s u = u_+^\gamma$, exponent $\frac{2s}{1-\gamma}$, range $\gamma \in (0,1/3)$, $s \in (1/2,1)$.
- **§4 extracted 2026-06-10 (the far-field question):**
  - Their device: $\theta_k(r') = \sup_{r'<r<1/2} r^{2s+\gamma-\frac{2s}{1-\gamma}}[u_k]_{C^{2s+\gamma}(B_r)}$; choice of $r_k > 1/k$ via (4.5); $v_k = u_k(r_k\cdot)/(\theta_k r_k^{\frac{2s}{1-\gamma}})$; seminorm bound (4.8) $[v_k]_{C^{2s+\gamma}(B_R)} \le R^{\frac{2s}{1-\gamma}-2s-\gamma}$ valid for $1 \le R \le \frac{1}{2r_k}$ **only** (since (4.7) needs $r_kR < 1/2$); second-difference anchor trick (same as CP); normalization (4.10) $[v_0]_{C^{2s+\gamma}(B_1)} \ge \frac12$.
  - Increments: (4.11) bounds $|v_k(x+h)-v_k(x)| \le C_h|x|^{\frac{2s}{1-\gamma}-1}$, and $\gamma < \frac{1}{1+2s}$ makes this $L^1_s$ — **exactly our incremental-quotient tail condition at $p=2$.** ✓
  - **⚠️ FINDING: the far-field gap is present in PTU too.** (4.11) is derived from (4.8), so it is justified only for $|x|+|h| \le \frac{1}{2r_k}$; outside, $u_k$ is merely bounded and the increment only obeys $|w_k| \le 2(\theta_k r_k^{\frac{2s}{1-\gamma}})^{-1}$. Passing (4.12) to the limit via stability ([11, Lemma 5] = Caffarelli–Silvestre ARMA 2011) needs uniform $L^1_s$ control of $w_k$ on ALL of $\mathbb{R}^n$; the outer contribution is $\sim \theta_k^{-1} r_k^{-\frac{2s\gamma}{1-\gamma}}$, bounded iff $\theta_k \gtrsim r_k^{-\frac{2s\gamma}{1-\gamma}}$ — the same lower bound our Step 3 needs, and as far as I can see (4.5) does not supply it ((4.5) gives only $\theta_k(r_k)$ vs $\theta_k(1/k)$ comparisons). So either there is an implicit standard fix, or this is a genuine (small) gap in the published argument. **Ask Teymurazyan directly — he's an author; the fix for $p=2$ will likely be the fix for general $p$.**
  - Possible fixes to propose: (i) dichotomy in $k$: if $\theta_k \ge r_k^{-\delta}$ tails are fine, else $r_k \ge \theta_k^{-1/\delta}$ is not-too-small and one can rerun the device at a definite scale; (ii) cutoff $w_k\chi_{B_{1/(4r_k)}}$ + error estimate in the equation (error $\to 0$ needs the same quantity — check); (iii) replace stability-in-$L^1_s$ by viscosity stability with locally-uniform-only convergence (check exact hypotheses of CS Lemma 5 / [10] Lemma 4.5–Cor 4.7).
  - Also: their $\nu=2$ (second-order jet, $\beta = \frac{2s}{1-\gamma}-2$) is special to $p=2$; Remark 4.1 covers the $u(x_0)=|Du(x_0)|=0$ case for $s \in (\frac12, 1-\gamma)$ — the regime analogous to our $\nu=1$.
- **Theorem 3.1 (Liouville) extracted 2026-06-10 — confirms our route:** Step 1 sets $w = u - u(0) - Du(0)\cdot x$; this is legitimate *only* because the hypothesis is an equation on increments, $(-\Delta)^s(u(\cdot+h)-u)=0$, from which affine parts drop out, and differences of increments are again solutions (**linearity, twice**). Then $w_e = Dw\cdot e$ has growth $|x|^\beta$, $\beta<1<2s$ gives $L^1_s$, stability ⇒ $w_e$ $s$-harmonic; the rescaling $v=\rho^{-\beta}w_e(\rho\,\cdot)$ + interior estimate give $\|Dw_e\|_{L^\infty(B_{1/2\rho})} \le C\rho^{\beta-1} \to 0$, hence $Dw_e(0)=0$, and translation invariance upgrades to $Dw_e\equiv0$ ⇒ $w\equiv0$. **None of this survives $p\neq2$** — our vanishing-jet CP-style formulation is the correct replacement (as already adopted). Their $\rho^{\beta-1}\to0$ gradient-decay trick *does* transplant: it's the same mechanism as CP Lemma 5 / our proof template.
- **Still to extract:** Theorem 5.3; §6 fully nonlinear remark.

### ✅ Correa, dos Prazeres — arXiv:2504.11370 (§6 extracted 2026-06-10)
*A two-phase quenching-type problem for the p-Laplacian.* (Apr 2025) — `papers/2504.11370_Correa-dosPrazeres_two-phase-quenching-pLaplacian.pdf`
- Minimizers of Alt–Phillips-type functionals $J(u)=\int_{B_1}(\frac{|Du|^p}{p}+\lambda_1(u_+)^\gamma+\lambda_2(u_-)^\gamma)$, $p>2$, $0\le\gamma<p/2$; **two-phase**, no sign constraint. §6 = the two-dimensional optimal growth theorem (their Theorem 3): $|u(x)|\le C|x|^{p/(p-\gamma)}$ at points with $u=|Du|=0$. (Their RHS is $\sim u^{\gamma-1}$, so their $\gamma$ ↔ our $\gamma+1$; exponents match.)
- **§6 extraction — see "Extraction notes" below. Headline: their Liouville needs NO affine subtraction; this dissolves the obstruction flagged in main.tex route (a).**

### 🔲 Giovagnoli, Jesus, Silvestre — arXiv:2509.26565
*$C^{1+\alpha}$ regularity for fractional p-harmonic functions.* (Sep 2025) — `papers/2509.26565_Giovagnoli-Jesus-Silvestre_C1alpha-fractional-p-harmonic.pdf`
- **This is the $C^{1,\alpha_0}$ paper of Lemma `lem:ceiling`** (previously "[28] in arXiv:2509.15988" — now identified). Theorem 1.1: $s\in(0,1)$, $2\le p<2/(1-s)$, $u\in L^{p-1}_{sp}(\mathbb{R}^d)$ solving $(-\Delta_p)^s u=0$ in $B_2$ ⇒ $\|u\|_{C^{1,\alpha}(B_1)} \le C(\|u\|_{L^\infty(B_2)} + \mathrm{Tail}_{p-1,sp}(u;2))$, $\alpha=\alpha(d,s,p)$.
- ⚠️ Statement is for the **homogeneous** equation; our compactness step (Lemma `lem:ceiling`) needs $(-\Delta_p)^s u = f \in L^\infty$ — check whether their proof tolerates a bounded RHS, or whether Prop. `prop:homog` lets us work close enough to homogeneous.
- **Shopping list:** dependence of $\alpha$ and $C$ on $d,s,p$; tail space $L^{p-1}_{sp}$ vs our Tail; weak ≡ viscosity remark (they cite it); behavior/uniformity as $s\nearrow1$ (window opens to all $p\ge2$); §9 technical modifications for weak solutions.

## Regularity machinery for $(-\Delta_p)^s$

### 🔲 Brasco–Lindgren–Schikorra — arXiv:1711.09835
*Higher Hölder regularity for the fractional p-Laplacian in the superquadratic case.*
- **Shopping list:** interior $C^{0,\gamma_0}$ estimate with explicit tail dependence; the form of $\mathrm{Tail}_{p-1,sp}$; stability under limits.

### ✅ $C^{1,\alpha_0}$ estimates paper — IDENTIFIED: Giovagnoli–Jesus–Silvestre, arXiv:2509.26565 (see Core above)

### 🔲 Korvenpää–Kuusi–Lindgren
*Equivalence of weak and viscosity solutions for the fractional p-Laplacian.*
- Cite, do not read deeply on the first pass. Possibly also the stability lemma.

## Local benchmarks (dead core, $s = 1$)

### 🔲 da Silva–Salort — arXiv:2501.13063
- Local benchmark $C^{\frac{p}{p-1-q}}$ for the $p$-dead-core. **One-phase.**
- **Shopping list:** hypotheses; compare one-phase vs two-phase gap — our Theorem `thm:local` (two-phase local) does not appear here, nor in da Silva–Rossi–Salort or Teixeira. Highlight novelty.

### 🔲 da Silva–Rossi–Salort; Teixeira (dead-core papers)
- One-phase local theory; for context and introduction.

## Background / tools

### ✅ Caffarelli–Silvestre — ARMA 200 (2011), 59–88 (arXiv:0902.4030) — stability hypotheses extracted 2026-06-10
*Regularity results for nonlocal equations by approximation.*
- **Lemma 4.3 (≈ published Lemma 5), exact hypotheses:** $I_k(u_k,x) \le f_k$ in $\Omega$; $u_k \to u$ in the $\Gamma$-sense in $\Omega$; **$u_k \to u$ in $L^1(\mathbb{R}^n, \omega)$ — GLOBAL weighted convergence, $\omega \sim (1+|y|)^{-n-2s}$**; $f_k \to f$ loc. unif.; $I_k \to I$ weakly; $u_k$ loc. bounded.
- **Remark 4.4 = counterexample showing the global weighted convergence CANNOT be dropped:** $u_k = \chi_{B_1}(|x|^2-1) - M_k\chi_{\mathbb{R}^n\setminus B_{2^k}}$ with $M_k$ huge satisfies $I_k u_k \le 0$ in $B_1$ yet the local limit has $\Delta u = 2n > 0$. Far-field mass escaping at radius $R_k$ with size $M_k$ breaks the limit equation unless $M_k \cdot R_k^{-2s} \to 0$.
- **Consequence (the verdict on the far-field question):** this is *structurally identical* to our blow-up family — mass $\sim (\theta_k r_k^\alpha)^{-1}$ at radius $\frac{1}{2r_k}$, giving far $L^1(\omega)$-mass $\sim \theta_k^{-1} r_k^{-\alpha\gamma}$ ($p=2$: $\theta_k^{-1}r_k^{-2s\gamma/(1-\gamma)}$). **No weaker stability lemma can rescue it; the lower bound on $\theta_k$ (or a cutoff/dichotomy argument) is genuinely required — in PTU §4 as written, and in our scheme.** Question for R.T. fully justified.
- We still need the $(-\Delta_p)^s$ analogue of this stability lemma for weak solutions (Brasco–Lindgren / KKL) — same global-tail-convergence hypothesis expected.

### 🔲 Teymurazyan — *The fractional Laplacian: a primer*
- Background. Author at KAUST — bring notes §3–§5 once Lemmas tail/beta/ceiling are verified.

### 🔲 Barrier computations (for nondegeneracy, later)
- Brasco et al.: 1-d power-function computations for $(-\Delta_p)^s$.
- Iannizzotto–Mosconi–Squassina: $d^s$-barriers.

### 🔲 Bourgain–Brezis–Mironescu-type limit for $(-\Delta_p)^s$
- Needed for $s \nearrow 1$ (Theorem `thm:local`): convergence $(-\Delta_p)^s \to -\Delta_p$ and normalizing constants $c_{n,s,p}$. Locate the precise reference.

---

## Extraction notes

(As papers are read, paste exact statements with constants here, keyed to the lemma they feed.)

### ✅ Correa–dos Prazeres §6 (extracted 2026-06-10) — feeds Conjecture `conj:liouville` + Theorem `thm:main`

**Setting:** $n=2$, $p>2$. Quantified $C^{1,\alpha_p}$ regularity for $p$-harmonic functions (their Def. 3: $\alpha_p$ = largest exponent with $\|v\|_{C^{1,\alpha_p}(B_{1/2})} \le C\|v\|_{L^\infty(B_1)}$); in 2D Baernstein II–Kovalev give an explicit lower bound for $\alpha_p$, which buys $1+\alpha_p > \frac{p}{p-\gamma}$ for $\gamma < 1+\delta_p$. Their Remark 5: the argument works in **any** dimension where the behavior of $\alpha_p$ is known — the dimension restriction is *only* about quantifying $\alpha_p$.

**Their Lemma 5 (Liouville) — THE KEY TEMPLATE:**
> $u$ entire $p$-harmonic, $u(0)=|Du(0)|=0$, $|u|\le C|x|^{1+\alpha}$ with $\alpha<\alpha_p$ ⇒ $u\equiv 0$.

Proof mechanism (one page, no linearization, **no affine subtraction**):
1. Scale: $v_l(x) = u(lx)/l^{1+\alpha}$ — still $p$-harmonic (homogeneity, our Prop. `prop:scaling` with zero RHS), and $\sup_{B_1}|v_l| \le C$ by the growth hypothesis.
2. Apply the quantitative interior estimate to $v_l$: since $v_l(0)=|Dv_l(0)|=0$, the $C^{1,\alpha_p}$ bound gives $|v_l(x)| \le C|x|^{1+\alpha_p}$ in $B_{1/2}$.
3. Unscale: $\sup_{B_{l/2}} \frac{|u|}{|x|^{1+\alpha_p}} = l^{\alpha-\alpha_p} \sup_{B_{1/2}} \frac{|v_l|}{|x|^{1+\alpha_p}} \to 0$ since $\alpha < \alpha_p$. Hence $u \equiv 0$.

**Why this dissolves our route-(a) obstruction:** the conjecture in main.tex assumed only seminorm growth and concluded $v$ *affine* — subtracting the affine part breaks the equation for $p\neq 2$. But in the application (blow-up at a free boundary point) the limit $v_0$ **inherits $v_0(0)=|Dv_0(0)|=0$ for free**, so the Liouville can assume the vanishing 1-jet from the start and conclude $v_0\equiv 0$ directly. Restate Conjecture `conj:liouville` accordingly.

**Their Lemma 6** (jet-to-growth): $u(0)=|Du(0)|=0$ and $\sup_{0<r<1/2} r^{\alpha-\beta}[u]_{C^{1+\alpha}(B_r)} \le A$ with $\beta>\alpha$ ⇒ $|u(x)| \le A|x|^{1+\beta}$ in $B_{1/2}$. Pure mean-value argument, dimension- and operator-free — **transplants verbatim** to our setting.

**Their Theorem 3 proof = the $\theta_k$ device, quasilinear edition:**
- $\theta_k(r') := \sup_{r'<r<1/2} r^{1+\alpha-\frac{p}{p-\gamma}}[u_k]_{C^{1+\alpha}(B_r)}$; pick $r_k > 1/k$ with $r_k^{1+\alpha-\frac{p}{p-\gamma}}[u_k]_{C^{1+\alpha}(B_{r_k})} \ge \frac12\theta_k(r_k)$, $\ge \frac1k \theta_k(1/k) \to \infty$ ⇒ $r_k \to 0$.
- $v_k(x) := \frac{u_k(r_k x)}{\theta_k(r_k)\, r_k^{p/(p-\gamma)}}$ gives $[v_k]_{C^{1+\alpha}(B_R)} \le R^{\frac{p}{p-\gamma}-1-\alpha}$ for all $1\le R \le \frac{1}{2r_k}$ + normalization $[v_0]_{C^{1+\alpha}(B_1)} \ge \frac12$.
- **Gradient anchor trick:** $\int_{B_1} \eta\, D_e v_k = \int D_e\eta\, v_k \le C_n$ gives a point $z$ with $|Dv_k(z)| \le C_n$; combined with the seminorm bound this yields $|D_e v_k| \le CR^{\frac{p}{p-\gamma}-1}$ and $|v_k| \le C|x|^{p/(p-\gamma)}$ — local boundedness WITHOUT normalizing $v_k$ in $L^\infty$. (Useful nonlocally: this is what gives tail-controllable growth.)
- RHS dies by homogeneity: $\Delta_p v_k = \theta_k(r_k)^{-(p-\gamma)}[(v_k)_+^{\gamma-1} - (v_k)_-^{\gamma-1}]$, factor $\to 0$ — same mechanism as our Prop. `prop:homog`. Limit is entire $p$-harmonic with vanishing 1-jet and growth $\frac{p}{p-\gamma} = 1+\alpha$ with $\alpha<\alpha_p$ ⇒ Lemma 5 kills it ⇒ contradiction with the surviving normalization.

**⚠️ The genuinely nonlocal gap (the real work for us):** in step 1–2 of their Lemma 5, the interior estimate is applied to $v_l$, which is only *locally* bounded with growth $|x|^{1+\alpha}$ at infinity. Locally that's free; nonlocally GJS needs $\mathrm{Tail}_{p-1,sp}(v_l) < \infty$, i.e. $(1+\alpha)(p-1) < sp$ — but our target $1+\beta = \frac{sp}{p-1-\gamma}$ has $(1+\beta)(p-1) > sp$ whenever $\gamma>0$. **The tail of the rescaled function diverges if applied naively.** Options to investigate (this is now the precise content of Lemma `lem:tail`):
  1. Truncate $v_l$ outside $B_{2R}$ and control the error in the equation (truncation error enters as an $L^\infty$ RHS on $B_R$ — another reason the GJS-with-RHS question matters);
  2. PTU-style incremental quotients (growth drops by one order: $(\beta)(p-1) < sp$ is weaker);
  3. Check what PTU actually do at the matching step (their (4.11)) and mirror it.

**Dimension question for us:** they need $n=2$ only to *quantify* $\alpha_p$. GJS gives $\alpha_0 = \alpha_0(d,s,p)$ non-explicitly — so our Theorem would be conditional on $\alpha > 1+\alpha_0$... no wait, conditional on $\frac{sp}{p-1-\gamma} < 1+\alpha_0$, exactly Lemma `lem:ceiling`. Worth asking: is there a nonlocal Baernstein–Kovalev (explicit $\alpha_0$ in 2D, or any $d$, for $(-\Delta_p)^s$)? If not — possible side result, or keep $\alpha_0$ implicit and state the theorem for $\gamma$ small.

### For Lemma `lem:ceiling` ($C^{1,\alpha_0}$ estimate)

**✅ GJS structural assessment (2026-06-10), arXiv:2509.26565:**

*Proof structure (3 stages, after Lipschitz from Biswas–Topp [3] / Biswas–Sen [2]):*
1. **Stage 1 (most delicate, purely nonlocal):** dyadic improvement $\|\nabla u\|_{L^\infty(B_{2^{-k}})} \le C_0(1-\delta)^k$ via the linearized equation $L_u(\partial_e u)=0$ with kernel $K_u(x,y)=(p-1)\frac{|u(x)-u(y)|^{p-2}}{|x-y|^{d+sp}}$ (degenerate where $u$ flat); novelty = nondegeneracy of $K_u$ along segments where the gradient curve first leaves a neighborhood of $e$; De Giorgi iteration.
2. **Stage 2:** Ishii–Lions on $u(x)-e\cdot x$.
3. **Stage 3:** Hölder for $\nabla u$ in the mild-uniform-ellipticity regime à la Kassmann–Schwab [28] / **Imbert–Silvestre [26] — the latter ALREADY allows nonzero bounded RHS at the linearized level.**
- §9 = technical extension from classical to weak solutions.

*Q1 — does $f\in L^\infty$ break it?* Not claimed, but **plausible in a sub-range, by their own remark (§2):** $L_u$ has order $2-p(1-s)$; differentiating the equation costs one derivative ($\partial_e u$ solves $L_u(\partial_e u)=\partial_e f$), so when the order exceeds 1, i.e. $p < \frac{1}{1-s}$, they explicitly "expect similar regularity even if there was a non-zero bounded right-hand side." Supporting facts: stage-3 machinery [26] takes a RHS; the Lipschitz starting point with RHS exists (Biswas–Sen arXiv:2507.09920, fractional $(p,q)$-Poisson *with data*).
- **Consequence for us:** natural conditional range $2 \le p < \frac{1}{1-s}$, which forces $s > \frac12$ — pleasingly the same restriction as PTU's $s\in(\frac12,1)$. For $\frac{1}{1-s} \le p < \frac{2}{1-s}$: open. Writing the $f\in L^\infty$ extension in the range $p<\frac{1}{1-s}$ could even be a standalone lemma/section of our paper.

*Q2 — uniformity as $s\nearrow 1$?* **NO — explicitly fails.** Quote (§1.2): "the techniques we use in the first stage of our proof are purely nonlocal. Therefore, the constants … do not remain bounded in the limit $s\to1$."
- **⚠️ STRATEGIC CONSEQUENCE:** Theorem `thm:local` (two-phase local $p$-dead-core via $s\nearrow1$) CANNOT be obtained through the GJS estimate as planned. Options: (i) prove `thm:local` directly with local $C^{1,\alpha}$ theory ($p$-harmonic functions — classical, constants $s$-free; essentially run Correa–dos Prazeres §6 with RHS $u_+^\gamma-u_-^\gamma$, which may be straightforward and publishable separately); (ii) find/await an $s$-uniform $C^{1,\alpha}$ estimate; (iii) drop `thm:local` from this paper. **Discuss with supervisor.**

*Also recorded:* $p<\frac{2}{1-s}$ is natural/sharp-ish (solutions not expected Lipschitz beyond; no counterexamples known); $p<2$ entirely open ($K_u=+\infty$ issue); their $\alpha=\alpha(d,s,p)$ is NOT explicit — no nonlocal Baernstein–Kovalev, so the admissible $\gamma$-range stays implicit ("$\gamma$ small").

### For Prop. `prop:homog` (stability lemma)
- …

### For Lemma `lem:tail` (tail form)
- …
