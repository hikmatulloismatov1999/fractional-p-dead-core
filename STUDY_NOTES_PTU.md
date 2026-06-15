# Study notes — PTU, *Improved regularity for a nonlocal dead-core problem*

> dos Prazeres, Teymurazyan, Urbano. arXiv:2504.09557 (v2, Nov 2025). To appear, Indiana Univ. Math. J.
> Beginner-friendly walkthrough built for the meeting with R. Teymurazyan. Companion to `LITERATURE.md` and `PROGRESS.md`.

The equation studied:
$$-(-\Delta)^s u = u_+^\gamma - u_-^\gamma \quad\text{in } B_1,\qquad \gamma\in(0,\tfrac13),\ s\in(\tfrac12,1).$$

---

## Lesson 1 — Orientation

**Physical picture (dead cores).** A reactant diffuses into a catalyst pellet and is consumed by a reaction of order $\gamma<1$. If the reaction is fast, the reactant is used up before reaching the center, leaving a region where the concentration is *exactly* zero — the **dead core**. The sublinear, non-Lipschitz term $u^\gamma$ (with $0<\gamma<1$) is precisely what lets $u$ reach zero on a whole set rather than at isolated points.

**The equation, unpacked.**
- $(-\Delta)^s$ = fractional Laplacian: *nonlocal* diffusion. It averages differences $u(x)-u(y)$ over **all** of $\mathbb{R}^n$, weighted by $|x-y|^{-n-2s}$. Far-away values influence $x$ — the root of every technical difficulty.
- **Two-phase**: $u$ has no fixed sign. RHS is $u_+^\gamma$ where $u>0$, $-u_-^\gamma$ where $u<0$. The set where $u$ vanishes with derivatives = **branching points** (the free-boundary analogue).
- $\gamma\in(0,1/3)$, $s\in(1/2,1)$: forced by the method. $\gamma<1/3 \iff \gamma<\frac{1}{1+2s}$ is the integrability condition that makes a key increment lie in the tail space $L^1_s$.

**Main result (eq. 1.2).** At a branching point $x_0$:
$$|u(x)| \le C\,|x-x_0|^{\frac{2s}{1-\gamma}}.$$
"Improved" because the exponent $\frac{2s}{1-\gamma} > 2s+\gamma$ beats the Schauder ceiling $C^{2s+\gamma}$.

**Strategy (the whole paper in 4 moves).**
1. **Scale** around the branching point: $v_r(x)=u(rx)/r^{2s/(1-\gamma)}$, study $r\to0$.
2. **Pass to the limit** $v_r\to v_0$; the reaction term dies in the limit, leaving a clean equation.
3. **Liouville** (§3): the only such limit with the allowed growth is a polynomial of degree $\nu\in\{1,2\}$.
4. **Contradiction**: polynomial structure forces the sharp growth (1.2).

This skeleton — *scale → limit → Liouville → contradict* — is reused by Correa–dos Prazeres for the $p$-Laplacian and is what our project ports.

---

## Lesson 2 — The grammar of §2 (spaces, solutions, regularity toolbox)

**1. The fractional Laplacian.**
$$(-\Delta)^s u(x) = c_{n,s}\,\mathrm{P.V.}\!\int_{\mathbb{R}^n}\frac{u(x)-u(y)}{|x-y|^{n+2s}}\,dy.$$
- **P.V.**: the weight $|x-y|^{-n-2s}$ is non-integrable near $y=x$; symmetric cancellation of the odd part of $u(x)-u(y)$ makes the limit finite. Needs $u$ locally $C^{1,1}$/$C^2$ at $x$ for the classical value — motivates viscosity solutions.
- **Scaling (memorize):** $(-\Delta)^s[u(\lambda\cdot)](x)=\lambda^{2s}\,((-\Delta)^su)(\lambda x)$ — order-$2s$ derivative. This dictates the $r^{2s/(1-\gamma)}$ normalization in §4.
- $c_{n,s}$: normalization, depends only on $n,s$; ensures $(-\Delta)^s\to-\Delta$ as $s\to1$ (used in §5).

**2. Tail space $L^1_s$.** $\displaystyle\|u\|_{L^1_s}=\int_{\mathbb{R}^n}\frac{|u(y)|}{1+|y|^{n+2s}}\,dy.$ Finiteness $\iff$ the far-field tail is tame enough for nonlocal diffusion to be defined/stable. **Every difficulty (the §4 gap, the $p$-port) reduces to whether a rescaled function stays in (the analogue of) $L^1_s$.**

**3. Viscosity solutions (Def. 2.1).** Touching-test-function notion: $u$ is a subsolution if wherever smooth $\varphi$ touches $u$ from above at $x_0$, the operator inequality holds for $v=\varphi$ (in small ball) $\cup\ u$ (outside). Chosen because (i) never differentiates $u$ directly, (ii) supports comparison/existence, (iii) generalizes to fully nonlinear / $p$-Laplacian. Note $v$ keeps real $u$ outside the ball — nonlocality built in.

**4. Comparison principle (Thm 2.1).** $Lu_1\le0\le Lu_2$ in $B_1$ and $u_1\ge u_2$ *outside* $B_1$ $\Rightarrow u_1\ge u_2$ everywhere. Ordering on the complement (not boundary) controls the inside; powers Perron existence.

**5. Hölder seminorms.** $[u]_{C^\alpha}=\sup\frac{|u(x)-u(y)|}{|x-y|^\alpha}$; $[u]_{C^{1+\alpha}}=\max_{|\beta|=1}[D^\beta u]_{C^\alpha}$; $[u]_{C^{2+\alpha}}$ likewise with $|\beta|=2$. §4's $\theta_k$ just tracks these under rescaling.

**6. Three regularity theorems (black boxes).**
- **Thm 2.2** (homogeneous): $(-\Delta)^su=0$, $\|u\|_{L^1_s}<\infty$ $\Rightarrow u\in C^{1+\sigma}(B_{1/2})$, $\|u\|_{C^{1+\sigma}(B_{1/2})}\le C(\|u\|_{L^\infty(B_1)}+\|u\|_{L^1_s})$. Tail term is the price of nonlocality. **Engine for the Liouville theorem.**
- **Thm 2.3** (bounded RHS): $-(-\Delta)^su=f\in L^\infty$, $s\in(1/2,1)$ $\Rightarrow u\in C^{1+\sigma}(B_{1/2})$, any $\sigma<2s-1$. *Why $s>1/2$:* need $2s-1>0$ to be in the differentiable regime. Baseline regularity.
- **Thm 2.4** (Schauder): $(-\Delta)^su\in C^\sigma \Rightarrow u\in C^{\sigma+2s}_{loc}$. With RHS $\in C^\gamma$ gives $u\in C^{2s+\gamma}_{loc}$ = the **Schauder ceiling** the main theorem beats.

Flow: 2.3 → differentiable regime; 2.4 → ceiling $C^{2s+\gamma}$; 2.2 → engine for Liouville. Main theorem beats the ceiling at branching points ($\frac{2s}{1-\gamma}$).

---

## Lesson 3 — The Liouville theorem (§3), the technical heart

**Liouville = "entire solution + controlled growth ⇒ polynomial."**

**Theorem 3.1.** If $s\in(1/2,1)$, $(-\Delta)^s(u(x+h)-u(x))=0$ in $B_1$ for all $h$ (3.1), and $[u]_{C^{\nu+\alpha}(B_R)}\le CR^{\beta-\alpha}$ for all $R\ge1$ with $0\le\alpha<\beta<1$, $\nu\in\{1,2\}$ (3.2), then $u$ is a degree-$\nu$ polynomial.

**Why the hypothesis is on increments (3.1), not on $u$:** that's the form the blow-up limit $v_0$ in §4 satisfies — $v_0$ isn't $s$-harmonic, but all its first differences are.

**Proof, $\nu=1$ (five moves):**
1. **Subtract the affine part** $w=u-u(0)-Du(0)\cdot x$. Legal because (a) increments of an affine function are constant in $x$ and $(-\Delta)^s(\text{const})=0$, so $w$ solves the same increment equation — *pure linearity, the move that dies for $p\ne2$*; (b) $[\cdot]_{C^{1+\alpha}}$ ignores affine parts so (3.2) is inherited. Now $w(0)=|Dw(0)|=0$.
2. **Differentiate + ride growth into the tail:** $w_e=Dw\cdot e$, $w_e(0)=0$ ⇒ $|w_e(x)|\le[w]_{C^{1,\alpha}(B_{|x|})}|x|^\alpha\le C|x|^\beta$ outside $B_1$. Since $\beta<1<2s$, $\int_{B_1^c}|w_e|/|y|^{n+2s}<\infty$ ⇒ **$w_e\in L^1_s$**. ($\beta<1$ is exactly what buys this.)
3. **Stability ⇒ $w_e$ is $s$-harmonic:** $w_e=\lim$ difference quotients of $w$, each $s$-harmonic; they converge in $L^1_s$ *globally*, so Caffarelli–Silvestre stability [11, Lem 5] passes the equation to the limit: $(-\Delta)^sw_e=0$ in $B_1$. **⚠️ This lemma needs GLOBAL $L^1_s$ convergence — here free, but in §4 it's exactly the gap.**
4. **Gradient-decay trick $\rho^{\beta-1}\to0$ (transplants to $p$!):** $v(x)=\rho^{-\beta}w_e(\rho x)$ has $\|v\|_{L^\infty(B_1)}\le C$ uniformly; Thm 2.2 ⇒ $\|Dv\|_{L^\infty(B_{1/2})}\le C$; but $=\rho^{1-\beta}\|Dw_e\|_{L^\infty(B_{1/2\rho})}$ ⇒ $\|Dw_e\|_{L^\infty(B_{1/2\rho})}\le\rho^{\beta-1}C_3\to0$. So $Dw_e(0)=0$; translation invariance ⇒ $Dw_e\equiv0$.
5. $w_e\equiv$ const $=0$ for every $e$ ⇒ $Dw\equiv0$ ⇒ $w\equiv0$ ⇒ $u$ affine. ∎

**$\nu=2$:** subtract quadratic Taylor poly, run the same machine on $w_{ee}$ ⇒ $u$ quadratic. (This is the case §4 uses, $\beta=\frac{2s}{1-\gamma}-2$.)

**Lemma 3.1 (jet-to-growth, mean value theorem only — transplants verbatim):** vanishing jet $u(0)=|D^{\nu-1}u(0)|=|D^\nu u(0)|=0$ + $\sup_{0<r<1/2}r^{\alpha-\beta}[u]_{C^{\nu+\alpha}(B_r)}\le A$ ($\beta>\alpha$) ⇒ $|u(x)|\le A|x|^{\nu+\beta}$ in $B_{1/2}$. Converts seminorm control + vanishing jet into pointwise growth; used in §4 to turn the contradiction hypothesis into Liouville's input.

**Carry-outs for the project:**
1. **Linearity used twice** (affine subtraction; derivative = limit of $s$-harmonic increments) — both fail for $p\ne2$ ⇒ must use Correa–dos Prazeres no-subtraction Liouville.
2. **Stability's global-$L^1_s$ hypothesis** = seed of the §4 gap.
3. **$\rho^{\beta-1}\to0$ decay trick survives** to the nonlinear/p setting.
