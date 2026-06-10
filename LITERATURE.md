# Literature review — nonlocal two-phase $p$-dead-core

Reading log with "shopping lists": what each paper must supply to the project. Status: 🔲 not read · 🔶 skimmed · ✅ extracted.

## Core (read line-by-line)

### 🔲 dos Prazeres, Teymurazyan, Urbano (PTU) — arXiv:2504.09557
*Improved regularity for a nonlocal dead-core problem.* To appear in Indiana Univ. Math. J.
- The template paper ($p=2$): $(-\Delta)^s u = u_+^\gamma$, exponent $\frac{2s}{1-\gamma}$, range $\gamma \in (0,1/3)$, $s \in (1/2,1)$.
- **Shopping list:** §4 line-by-line; the $\theta_k$ device (4.3)–(4.8); exponent bookkeeping; step (4.11) incremental quotients (do we need it?); Theorem 3.1 Step 1 (Liouville); Theorem 5.3 (Liouville with growth); Remark 4.1; §6 fully nonlinear case ($\delta^{-1}F(\delta M) \to DF(0)M$ — parallel to our homogeneity mechanism).

## Regularity machinery for $(-\Delta_p)^s$

### 🔲 Brasco–Lindgren–Schikorra — arXiv:1711.09835
*Higher Hölder regularity for the fractional p-Laplacian in the superquadratic case.*
- **Shopping list:** interior $C^{0,\gamma_0}$ estimate with explicit tail dependence; the form of $\mathrm{Tail}_{p-1,sp}$; stability under limits.

### 🔲 $C^{1,\alpha_0}$ estimates paper — cited as [28] in arXiv:2509.15988
- **Shopping list:** exact statement; dependence of $\alpha_0$ and the constant on $n,s,p$; presence of tail terms; uniformity as $s \nearrow 1$; window $p \in [2, \frac{2}{1-s})$.
- TODO: identify the precise reference.

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
