# Literature review — nonlocal two-phase $p$-dead-core

Reading log with "shopping lists": what each paper must supply to the project. Status: 🔲 not read · 🔶 skimmed · ✅ extracted.

> **Supervisor's guidance (R. Teymurazyan, email 2026-04-26):** extend the PTU result to the fractional $p$-Laplacian. Main step in PTU: a Liouville-type theorem for the (two-phase) fractional Laplacian combined with known regularity results. For the local $p$-Laplacian, this strategy was employed in **§6 of Correa–dos Prazeres** (arXiv:2504.11370). Regularity for fractional $p$-harmonic functions: **Giovagnoli–Jesus–Silvestre** (arXiv:2509.26565). Read these three, then discuss.

## Core (read line-by-line) — the supervisor's three pillars (PDFs in `papers/`)

### 🔲 dos Prazeres, Teymurazyan, Urbano (PTU) — arXiv:2504.09557
*Improved regularity for a nonlocal dead-core problem.* To appear in Indiana Univ. Math. J. — `papers/2504.09557_PTU_nonlocal-dead-core.pdf`
- The template paper ($p=2$): $(-\Delta)^s u = u_+^\gamma$, exponent $\frac{2s}{1-\gamma}$, range $\gamma \in (0,1/3)$, $s \in (1/2,1)$.
- **Shopping list:** §4 line-by-line; the $\theta_k$ device (4.3)–(4.8); exponent bookkeeping; step (4.11) incremental quotients (do we need it?); Theorem 3.1 Step 1 (Liouville); Theorem 5.3 (Liouville with growth); Remark 4.1; §6 fully nonlinear case ($\delta^{-1}F(\delta M) \to DF(0)M$ — parallel to our homogeneity mechanism).

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

### 🔲 Caffarelli–Silvestre — ARMA 200 (2011), 59–88
*Regularity results for nonlocal equations by approximation.*
- Lemma 5 = the stability lemma PTU uses; we need its $(-\Delta_p)^s$ replacement (see Brasco–Lindgren / KKL above).

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
- …

### For Prop. `prop:homog` (stability lemma)
- …

### For Lemma `lem:tail` (tail form)
- …
