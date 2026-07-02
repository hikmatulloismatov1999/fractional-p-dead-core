# PROJECT HANDOFF — Fractional $p$-Laplacian two-phase dead-core

> Read this file first when resuming in a new chat/project. It is self-contained.
> Last updated: 2026 (current session). Author: Hikmatullo Ismatov (KAUST),
> supervisor Rafayel Teymurazyan (co-author of the template paper PTU).

---

## 1. The problem

We study improved regularity at branching (flat free-boundary) points for the
**two-phase nonlocal dead-core problem**

$$(-\Delta_p)^s u = u_+^\gamma - u_-^\gamma \quad\text{in } B_1,\qquad
p\ge 2,\ \ s\in(0,1),\ \ 0<\gamma<p-1,$$

where $(-\Delta_p)^s u(x)=\mathrm{P.V.}\int \frac{J_p(u(x)-u(y))}{|x-y|^{n+sp}}dy$,
$J_p(t)=|t|^{p-2}t$.

**Goal.** At a flat branching point ($u(x_0)=0$, $u$ vanishing to first order),
prove the sharp growth
$$|u(x)|\le C|x-x_0|^{\beta},\qquad \boxed{\beta=\frac{sp}{p-1-\gamma}}.$$
This beats the optimal regularity of $(s,p)$-harmonic functions ("better than
Schauder"). Byproduct via $s\nearrow1$: the local two-phase $p$-dead-core
estimate $C|x|^{p/(p-1-\gamma)}$, new even locally.

**Method.** Transplant the PTU (dos Prazeres–Teymurazyan–Urbano, $p=2$) blow-up +
Liouville machine. The new mechanism: **$(p-1)$-homogeneity of $(-\Delta_p)^s$
replaces the linearization** used in the linear case.

Useful identity: $\beta(p-1)-sp=\beta\gamma$.

---

## 2. STATUS IN ONE PARAGRAPH

The easy structure is rigorous (scaling, vanishing RHS along blow-ups, increment
linearization, tail condition, $C^0$ compactness via the seminorm device, a
barrier, stability under exterior data). The PTU-faithful proofs are written
(Thm 3.1 Liouville, Lemma 3.1 jet-to-growth, Thm 4.1 main) **modulo one open
input**. That input has been reduced (this session) to a single concrete,
classical-flavored free-boundary statement. **The whole project now hinges on
one implication** (see §5). At $p=2$ everything closes and reduces to PTU.

---

## 3. FILE MAP (all in the repo `fractional-p-dead-core`)

| File | Role |
|---|---|
| `paper.tex` | Main manuscript — honest **conditional** draft (14 pp). All lemmas + the open-problems section. Compiles clean. |
| `proofs_pcase.tex` | **PTU-faithful proofs, $p$-case** (6 pp): Thm 3.1, Lemma 3.1, Thm 4.1, and §5 the reduction of the open input. This is the "write a proof for each PTU lemma" file Rafayel asked for. Compiles clean. |
| `main.tex` | Lab notebook / working notes (older; some claims superseded — trust `paper.tex`/`proofs_pcase.tex`). |
| `STUDY_NOTES_PTU.md` (+ `.pdf`) | Beginner walkthrough of PTU §1–§4 + glossary of every technical term. |
| `PROGRESS.md`, `PROJECT_STATE.md` | Phase checklists / state. |
| `LITERATURE.md` | Reading log with per-paper "shopping lists". |
| `meeting_note.tex` (+ `.pdf`) | 2-page discussion note for Rafayel. |
| `papers/` | The three pillar PDFs (PTU, Correa–dos Prazeres, GJS). |
| `HANDOFF.md` | **This file.** |

Workflow: edit locally → `git add -A && git commit && git push` → pull in Overleaf
(Menu → GitHub). Overleaf tracks **`main`** branch. Git identity:
`user.email hikmatullo.ismatov@kaust.edu.sa`. (The sandbox cannot commit; run git
from Terminal.)

---

## 4. MATHEMATICAL STATE — what is proved / conditional / open

### 4a. Rigorous / unconditional
- **Scaling.** $u_r=u(r\cdot)/r^\beta$ solves the same equation iff $\beta=\frac{sp}{p-1-\gamma}$.
- **Amplified blow-up.** $v_k=u_k(r_k\cdot)/(\theta_k r_k^\beta)$ gives
  $(-\Delta_p)^s v_k=\theta_k^{\gamma-(p-1)}F(v_k)\to0$ since $\gamma<p-1$.
- **Increment linearization (weak).** $W_k^h=v_k(\cdot+h)-v_k$ solves
  $L_{k,h}W_k^h=f_k$ weakly, kernel $a_k^h=(p-1)\int_0^1|(1-t)B_k+tA_k|^{p-2}dt\ge0$,
  $A_k=v_k(x{+}h)-v_k(y{+}h)$, $B_k=v_k(x)-v_k(y)$. Rigorous for $p\ge2$ (FTC for $J_p$).
- **Tail condition (CORRECTED — important).** The far-field coefficient is
  $a^h(x,y)\sim|v(y)|^{p-2}\sim|y|^{\beta(p-2)}$ (the FUNCTION value, **not**
  $|Dv|^{p-2}\sim|y|^{(\beta-1)(p-2)}$; that latter exponent governs only the
  operator *order* $sp-p+2$ near the diagonal, and the *weight near the flat
  origin*). Integrand $|y|^{\beta(p-2)}|y|^{\beta-1}|y|^{-n-sp}$ ⇒ converges iff
  $$\boxed{\beta(p-1)<sp+1 \iff \beta\gamma<1 \iff \gamma<\frac{p-1}{1+sp}}.$$
  At $p=2$: $\gamma<\frac1{1+2s}$ (PTU's condition). **Keep the three exponents
  straight:** diagonal $|x-y|^{p-2}$ (order); flat-origin $|x|^{(\beta-1)(p-2)}$
  (weight); far-field $|y|^{\beta(p-2)}$ (tail).
- **$C^0_{loc}$ compactness.** The seminorm $\theta_k$-device gives uniform local
  seminorm bounds **by construction** (no tail needed) ⇒ Arzelà–Ascoli. *The tail
  does NOT break compactness* — it obstructs **stability** (the limit equation).
- **Scale-local barrier.** A capped power $\psi_{L,R}$ ($=|x|^\beta$ on $B_{2R}$,
  $=L^\beta$ outside $B_{2LR}$, smooth) has $(-\Delta_p)^s\psi_{L,R}\le -c_0R^{\beta\gamma}<0$
  on $R\le|x|\le\frac32R$, for $L$ large. Mechanism: the non-admissible tail of
  $|x|^\beta$, capped far, gives a $-L^{\beta\gamma}\to-\infty$ contribution — the
  tail is an *asset* for barriers. (Proof: symmetrize; convexity of $|x|^\beta$ +
  monotonicity of $J_p$ ⇒ local part $\le0$; capped plateau ⇒ $\le -cL^{\beta\gamma}$.)
- **Coercivity = directional nondegeneracy (Lemma 5.1 of `proofs_pcase.tex`).**
  GJS's abstract coercivity (7.1) for $K_v$ is EQUIVALENT to: $\exists e$ with
  $D_e v\ge c_1>0$ on a positive-measure set. **Fully proved.**

### 4b. Available from the literature (cite, don't reprove)
- **Baseline regularity (inhomogeneous, $f\in L^\infty$):** $C^{0,\gamma_\circ}$,
  $\gamma_\circ=\min\{1,\frac{sp}{p-1}\}$, Lipschitz when $\frac{sp}{p-1}>1$ —
  **Biswas–Topp**, Ann. PDE 11 (2025), arXiv:2504.09457.
- **Homogeneous $C^{1,\alpha}$:** $p\in[2,\frac2{1-s})$ — **GJS**, arXiv:2509.26565.
  Their §7 gives the **local Hölder estimate for the linearized equation** under
  uniform ellipticity (their (A1)–(A3), $(sp+1)$-tail); their §6 establishes the
  nondegeneracy that (A3) needs.
- **Higher Hölder / almost-Lipschitz:** BLS, Adv. Math. 338 (2018), arXiv:1711.09835.
- **Global Hölder:** Iannizzotto–Mosconi–Squassina, Rev. Mat. Iberoam. 32 (2016).
- **Weak ≡ viscosity:** Korvenpää–Kuusi–Lindgren, JMPA 132 (2019), arXiv:1605.03455.
- **Potential/CZ/measure data, De Giorgi for fractional $p$:** Kuusi–Mingione–Sire,
  CMP 337 (2015), arXiv:1406.7432; Di Castro–Kuusi–Palatucci, ANIHPC 33 (2016).
- **Solutions of polynomial growth "modulo polynomials":** Dipierro–Savin–Valdinoci,
  Rev. Mat. Iberoam. 35 (2019), arXiv:1610.04663. (Linear $(-\Delta)^s$ only.)
- **Liouville with growth, measurable *uniformly elliptic* kernels:**
  Fernández-Real–Ros-Oton, book *Integro-Differential Elliptic Equations* (2024);
  Serra, Calc. Var. 54 (2015), arXiv:1405.0930.
- **Local dead-core nondegeneracy (analogue of Lemma 5.2):** da Silva–Salort;
  Teixeira.

### 4c. Conditional inputs (stated openly in the papers)
- **(S) Stability** of $L_{k,h}W_k^h=f_k\to0$: available for **uniformly elliptic**
  measurable kernels (Di Castro–Kuusi–Palatucci; FRO book). The **constant $a_k$**
  (degree-0 polynomial) is handled at $p=2$ by DSV/PTU (modulo polynomials); it
  also $\to0$ under **exterior Lipschitz data** (`paper.tex` Lemma "stability under
  exterior data": $a_k(h)\lesssim\theta_k^{-(p-1)}r_k^{\sigma-\delta}\to0$ if
  exterior $C^{0,\sigma}$, $\sigma>\beta\gamma$; and $\beta\gamma<1$ so $\sigma=1$ works).
- **Inhomogeneous $C^{1,\alpha}$** (would license writing $\nabla u(x_0)=0$ and
  give $C^1_{loc}$ compactness): **NOT available.** Only Lipschitz. Use the flatness
  $\sup_{B_r}|u|=o(r)$ instead. (Bögelein–Duzaar–Liao–Moring give gradient
  *integrability*, not pointwise $C^{1,\alpha}$; the $p\in(1,2]$ gradient-regularity
  paper arXiv:2409.02012 is the wrong range.)

### 4d. THE OPEN PROBLEM (updated 2026-07-02 — read carefully, it changed)
**Two developments this session (in `proofs_pcase.tex` §5):**

**(i) CORRECTION.** The former reduction target (Sup ⟹ directional) was based on
the claim that sup-nondegeneracy of $u$ transfers to the blow-up limit $v_0$.
**That transfer is FALSE**: the blow-up is amplified,
$v_k=u_k(r_k\cdot)/(\theta_k r_k^\beta)$, $\theta_k\to\infty$, so
$\sup_{B_R}v_k\ge cR^\beta/\theta_k\to0$. The withdrawn sentence is marked in
red in `proofs_pcase.tex`. Lemma 5.2 (sup-nondegeneracy of $u$) stays, but feeds
only the Liouville-with-growth theorem and nondegeneracy of $u$ — NOT (ND).

**(ii) PROVED: (Seminorm ⟹ directional) at unit scale — Lemma `lem:interp`.**
Pure interpolation, no equation: if $\|v\|_{C^{1,\alpha_0}(B_2)}\le\Lambda$ and
$[v]_{C^{1+\alpha'}(B_1)}\ge\frac12$ with $\alpha'<\alpha_0$, then some direction
$e$ has $D_ev\ge c_1$ on measure $\ge\mu|B_2|$, with explicit
$c_1=\frac18(2\Lambda)^{-\alpha'/(\alpha_0-\alpha')}$. Mechanism: the two-exponent
gap forbids the seminorm from concentrating on close pairs ($|x-y|\ge d_0$),
giving a definite gradient at a definite point, spread by $C^{0,\alpha_0}$
continuity of $\nabla v$. Combined with Lemma 5.1 (coercivity ⟺ directional):
**at unit scale, (ND) is CLOSED** (Corollary `cor:unitcoerc`).

**THE remaining open point — (Scale dichotomy).** The Liouville rescaling needs
coercivity at every scale $\rho$; the normalization gives $\delta(1)\ge\frac12$
only, where $\delta(\rho):=\rho^{1+\alpha'-\beta'}[v_0]_{C^{1+\alpha'}(B_\rho)}\in[0,1]$.
Good scales ($\delta\ge\delta_0$): coercivity PROVED (interp lemma applies to the
rescaling, uniform constants). Bad scales ($\delta<\delta_0$): coercivity may
fail, but increments are automatically small
($\sup_{B_\rho}|w^h|\le|h|\sup_{B_{2\rho}}|\nabla v_0|$, controlled by small
$\delta$'s via jet-to-growth). **Task: interleave the two regimes into one decay
iteration.** Danger: alternating good/bad scales; tool: $\delta$ has bounded
dyadic oscillation (nested seminorms).

**Two-phase (unchanged):** the barrier is one-signed; across a genuine branching
point the nonlocal comparison is delicate — two phases separately or a
two-signed barrier.

---

## 5. NEXT STEPS (prioritized)

1. **Attack (Scale dichotomy).** [REPLACES (Sup ⟹ directional), which is
   superseded — see §4d.] Write the decay iteration for the increment $w^h$ that
   interleaves: good scales (coercivity from Lemma `lem:interp` ⇒ GJS §7 Hölder
   decay) and bad scales ($|w^h|$ small directly from small $\delta$). Key
   technical points: (a) prove the bounded-dyadic-oscillation of $\delta(\rho)$;
   (b) make the bad-scale smallness quantitative via jet-to-growth; (c) check the
   good-scale estimate only needs coercivity in a fixed sub-ball (GJS (A3) is a
   positive-fraction condition — it does). If interlacing resists, try a
   two-parameter iteration (scale + seminorm level) à la De Giorgi.
2. **Alternative route (W): weighted-kernel Liouville.** Prove Liouville for
   $\mathcal K\sim(|x|+|y|)^{a}|x-y|^{-n-m}$, $m=sp-p+2$, $a=(\beta-1)(p-2)$
   (weight near the flat origin), $A_2$ iff $a<n$. Model of the degeneracy;
   possibly its own paper. Look at Fabes–Kenig–Serapioni (local $A_2$) for a
   nonlocal analogue.
3. **Finish Lemma 5.2** (sup-nondegeneracy) rigorously: verify the nonlocal
   comparison ordering on the complement, one phase.
4. **Two-phase.** Handle the branching-point comparison (both phases / two-signed
   barrier).
5. **DSV-type modulo-polynomial stability** for the degenerate variable kernel
   $K_{v_0}$ (would remove the constant $a_k$ intrinsically for $p\ne2$).
6. **Write-up:** fill §2 (existence plumbing, weak≡viscosity), §5 consequences
   ($s\nearrow1$ direct proof via CP §6), polish intro.

**Safest theorem to state now** (already in `paper.tex`): under $p\ge2$,
$s>1-\frac1p$, $\gamma<\frac{p-1}{1+sp}$, flatness $\sup_{B_r}|u|=o(r)$, AND (ND)
(directional nondegeneracy of blow-up limits) — then $|u(x)|\le C|x|^\beta$.
Everything is rigorous except (ND). Do **not** state unconditionally; do **not**
write $\nabla u(x_0)=0$.

---

## 6. STRATEGIC NOTES for the supervisor meeting
- Ask Rafayel about **(Sup ⟹ directional)** directly — it is a classical-flavored
  free-boundary nondegeneracy he will have intuition about.
- Ask whether **PTU (4.12)** was a real gap (then the $(c')$ truncation repair is a
  publishable note) or standard.
- Decide: **publish the conditional analysis now** vs **hold** until (ND) is proved.
  The conditional paper is ~70–75% ready; the unconditional one is gated by (ND).

---

## 7. CONVENTIONS / PREFERENCES
- Define every technical term on first use (see glossary in `STUDY_NOTES_PTU.md`).
- Honesty over optimism: mark clearly proved / conditional / open. Never claim a
  theorem exists without a precise reference.
- $\nu=2$ (vanishing 2-jet, cap $\beta<3$) has **no** $p$-analogue (no $C^{2,\alpha}$
  for $p$-Laplacian). Only $\nu=1$, cap $\beta<1+\alpha_{s,p}$.
- Cap is $\beta<1+\alpha_{s,p}$, NOT $\beta<2$ (the rough linearized kernel gives
  only a Hölder estimate; $\beta<2$ is special to $p=2$ where increments are smooth).
