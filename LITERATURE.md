# Literature review — nonlocal two-phase $p$-dead-core

Reading log with "shopping lists": what each paper must supply to the project. Status: 🔲 not read · 🔶 skimmed · ✅ extracted.

> **Supervisor's guidance (R. Teymurazyan, email 2026-04-26):** extend the PTU result to the fractional $p$-Laplacian. Main step in PTU: a Liouville-type theorem for the (two-phase) fractional Laplacian combined with known regularity results. For the local $p$-Laplacian, this strategy was employed in **§6 of Correa–dos Prazeres** (arXiv:2504.11370). Regularity for fractional $p$-harmonic functions: **Giovagnoli–Jesus–Silvestre** (arXiv:2509.26565). Read these three, then discuss.

## Core (read line-by-line) — the supervisor's three pillars (PDFs in `papers/`)

### 🔲 dos Prazeres, Teymurazyan, Urbano (PTU) — arXiv:2504.09557
*Improved regularity for a nonlocal dead-core problem.* To appear in Indiana Univ. Math. J. — `papers/2504.09557_PTU_nonlocal-dead-core.pdf`
- The template paper ($p=2$): $(-\Delta)^s u = u_+^\gamma$, exponent $\frac{2s}{1-\gamma}$, range $\gamma \in (0,1/3)$, $s \in (1/2,1)$.
- **Shopping list:** §4 line-by-line; the $\theta_k$ device (4.3)–(4.8); exponent bookkeeping; step (4.11) incremental quotients (do we need it?); Theorem 3.1 Step 1 (Liouville); Theorem 5.3 (Liouville with growth); Remark 4.1; §6 fully nonlinear case ($\delta^{-1}F(\delta M) \to DF(0)M$ — parallel to our homogeneity mechanism).

### 🔲 Correa, dos Prazeres — arXiv:2504.11370
*A two-phase quenching-type problem for the p-Laplacian.* (Apr 2025) — `papers/2504.11370_Correa-dosPrazeres_two-phase-quenching-pLaplacian.pdf`
- Minimizers of Alt–Phillips-type functionals $J(u)=\int_{B_1}(\frac{|Du|^p}{p}+\lambda_1(u_+)^\gamma+\lambda_2(u_-)^\gamma)$, $p>2$, $0\le\gamma<p/2$; **two-phase**, no sign constraint; Hausdorff measure estimates for the free boundary.
- **Shopping list (supervisor):** **§6** — where the Liouville + known-regularity strategy is run for the *local* $p$-Laplacian. Extract: how they handle nonlinearity in the Liouville step (our route (a)/(b) question); blow-up classification; comparison of their variational (minimizer) setting vs our equation-based two-phase RHS $u_+^\gamma - u_-^\gamma$.

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

### For Lemma `lem:ceiling` ($C^{1,\alpha_0}$ estimate)
- …

### For Prop. `prop:homog` (stability lemma)
- …

### For Lemma `lem:tail` (tail form)
- …
