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

### 4d. THE OPEN PROBLEM (this is the whole game)
The one open input of Thm 3.1 / Thm 4.1 is **(ND)/$(\star)$**: coercivity of the
degenerate linearized kernel $K_{v_0}$, scale-uniformly. By Lemma 5.1 this equals
**directional nondegeneracy of the blow-up limit $v_0$**. It has been reduced to:

> **(Sup ⟹ directional).** From $\sup_{B_R}v_0\ge cR^\beta$ (sup-nondegeneracy,
> provable via the barrier, one phase — Lemma 5.2) and $v_0(0)=0$, deduce that on
> each annulus $B_{2R}\setminus B_R$ there is a unit vector $e_R$ and a set of
> measure $\ge\mu|B_{2R}\setminus B_R|$ with $D_{e_R}v_0\ge cR^{\beta-1}$,
> **uniformly in $R$**.

If (Sup ⟹ directional) holds: Lemma 5.1 ⇒ coercivity (7.1) on each rescaled
annulus ⇒ GJS §7 Hölder estimate ⇒ Thm 3.1 rescaling (run on annuli, not centred
at the flat origin) ⇒ $v_0$ affine ⇒ $v_0\equiv0$ ⇒ contradiction ⇒ **main
theorem (one phase).**

**Difficulty:** sup-nondegeneracy gives the *magnitude* of $v_0$'s variation but
not its *directional coherence*. Controlling the direction is the nut.
**Two-phase:** the barrier is one-signed; across a genuine branching point the
nonlocal comparison (ordering on the whole complement) is delicate — do the two
phases separately or find a two-signed barrier.

---

## 5. NEXT STEPS (prioritized)

1. **Attack (Sup ⟹ directional).** This is THE target. Ideas: (a) monotonicity /
   moving-planes to get a preferred direction; (b) an Alt–Caffarelli-type
   nondegeneracy-of-the-gradient argument; (c) De Giorgi oscillation on annuli to
   upgrade sup-nondegeneracy to gradient nondegeneracy on a positive fraction.
   Compare with the LOCAL $p$-Laplacian: $C^{1,\alpha}$ there is proved WITHOUT the
   linearized operator (Uhlenbeck/DiBenedetto/Tolksdorf, direct on $|\nabla u|$) —
   the fractional case cannot avoid the linearized operator (GJS need §6), so the
   local trick only partially transfers.
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
