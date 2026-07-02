# Q&A on the open inputs (2026-07-02) — strict assessment

Companion to HANDOFF.md §4. Answers to the eight questions on the increment-linearization route. Rule: "known" only with a reference; theorem numbers marked (unverified) where not checked this session.

## Q1 — Stability L_{k,h}W_k = f_k → L_{0,h}W_0 = 0
YES; sufficient: C^0_loc convergence of v_k + uniform local Lipschitz (Biswas–Topp, needs p<2/(1−s)) + tail condition γ<(p−1)/(1+sp) + truncation with exterior-data lemma. C^1_loc NOT needed (linearity in W ⇒ dominated convergence in the bilinear form; no strong W^{s,p} convergence needed). Far field: truncate at ρ_k=1/(4r_k); datum oscillation → 0 under the tail condition; the constant a_k(h) → 0 by the exterior-data lemma (far field of blow-up = near field of u_k at |z|~1/4, uniformly Lipschitz ⇒ a_k ≲ θ_k^{−(p−1)}r_k^{σ−δ}, σ=1>β*γ). Trap to record: for operator order m=sp−p+2<1, solutions of LW=c₀ grow like |x|^m (sublinear!) — sublinear growth does NOT exclude a constant RHS; the constant must vanish (it does, above). Status: assembly is bookkeeping.

## Q2 — Existing Liouville for degenerate a(x,y)~|v(x)−v(y)|^{p−2}
NO theorem in the literature. Uniformly elliptic translation-invariant: FRO book Ch.2 / Serra CalcVar 54 (2015) (numbers unverified). x-dependent uniformly elliptic measurable: no quotable single theorem; standard via scale-uniform Hölder + oscillation iteration. Degenerate: nothing. Liouville ⟸ coercivity (GJS (A3)/(7.1)) at all scales = exactly our (ND)/scale-dichotomy gap. Unit scale: PROVED (proofs_pcase.tex Lemma lem:interp + lem:coerc), conditional on the C^1-compactness input (see Q6).

## Q3 — Harnack/Hölder for degenerate kernels (verified refs)
- Kassmann–Schwab, Riv. Math. Univ. Parma 5 (2014) 183–212: Hölder, measure nondegeneracy, f=0 (thm no. unverified).
- Imbert–Silvestre, JEMS 22 (2020) 507–592: weak Harnack + Hölder, Boltzmann-type measure nondegeneracy, RHS allowed (GJS's input [26]).
- GJS arXiv:2509.26565 §7 Thms 7.2–7.3: packaging for K_v under (A1)–(A3); (A3)=coercivity.
- **Behn–Diening–Ok–Rolfes arXiv:2409.11829, Thms 3.4/3.5/3.6** (verified from intro): local boundedness, interior Hölder, Harnack for k(x,y)≈w(x)w(y)/w(B_{x,y})·|x−y|^{−n}, w ∈ A_p Muckenhoupt; f=0; **s-stable constants**; nonhomogeneous "expected" (their §1). = nonlocal Fabes–Kenig–Serapioni.
- Uniformly elliptic p-kernels: Di Castro–Kuusi–Palatucci JFA 267 (2014), ANIHPC 33 (2016); Cozzi JFA 272 (2017).
Why standard theory fails: pointwise lower kernel bound enters every De Giorgi/Moser step; a vanishes on pairs v(x)≈v(y) = full-measure pair-sets near the free boundary.

## Q4 — A₂ route
BDOR (arXiv:2409.11829) IS the nonlocal FKS. Gaps to our need: product-form point-degenerate weight vs our pair-degenerate a(x,y); homogeneous; p-energy vs linearized quadratic form. Content of route (W): prove a(x,y) ≳ w(x)^{1/2}w(y)^{1/2} with w=|∇v|^{p−2} in A₂-AVERAGE sense (weaker than pointwise nondegeneracy). Local evidence: |∇u|^{p−2} Muckenhoupt for p-harmonic u in n=2 via quasiregular gradient (Bojarski–Iwaniec; Manfredi); open in higher d. Model (|x|+|y|)^a|x−y|^{−n−m} ≈ BDOR with w=|z|^a ∈ A_p iff −n<a<n(p−1). Upgrade route (W) to co-first priority; try n=2 first.

## Q5 — Tail condition (careful derivation)
Far field: A,B ≈ −v(y) ⇒ a^h ≲ |v(y)|^{p−2} ≲ |y|^{β*(p−2)} — FUNCTION values, saturated generically. |W(y)| ≲ |h||y|^{β*−1}. Integrand |y|^{β*(p−2)+β*−1−n−sp}; converges iff β*(p−1)<1+sp ⟺ β*γ<1 ⟺ γ<(p−1)/(1+sp). p=2: γ<1/(1+2s) = PTU ✓. The exponent (β*−1)(p−2) belongs to two OTHER regimes: near-diagonal order reduction (m=sp−p+2) and flat-origin weight. Sharp for this route (generic saturation); sharpness for the theorem unknown.

## Q6 — C^{1,α} inventory (strict)
- Homogeneous: GJS Thm 1.1, 2≤p<2/(1−s), Tail term, α non-explicit, NOT s-uniform.
- f∈L^∞: NO C^{1,α}. Lipschitz: Biswas–Topp Ann. PDE 11 (2025), arXiv:2504.09457. Below C^1: Biswas–Sen arXiv:2507.09920; Bögelein–Duzaar–Liao–Molica Bisci–Servadei JFA 289 (2025). Fresh search 2026-07-02: nothing newer at C^{1,α} level.
- RHS→0: not in literature; perturbation/improvement-of-flatness against GJS gives uniform C^{1,α'} for small ‖f‖_∞ — MUST BE WRITTEN; inherits p<2/(1−s); loses s-uniformity.
- ⇒ C^1_loc compactness of blow-ups is conditional on that perturbation lemma = the SINGLE CONDITIONAL ROOT (unit-scale (ND) and the seminorm normalization both sit on it). Unconditionally: Lipschitz compactness only; keep flatness as sup_{B_r}|u|=o(r), never ∇u(x₀)=0.

## Q7 — Strategy ranking
1. Scale dichotomy (current; unit-scale coercivity proved; open: interleaving iteration).
2. Weighted route (W) via BDOR: adapt to linear form + RHS; prove A₂-average comparability; n=2 first. NOW CO-FIRST.
3. Finite-scale improvement of flatness: WARNING — does not dodge degeneracy (on v: divergent β*-tail; on increments: limit satisfies the same degenerate equation). Revisit only if 1–2 stall.
4. Regularization a_ε: scaffolding only (needs ε-uniform estimates — circular alone).

## Q8 — Table
- RIGOROUS: scaling; vanishing RHS; increment linearization; corrected tail condition + 3-exponent bookkeeping; C^0/Lipschitz compactness; barrier; exterior-data lemma; coercivity⟺directional (L5.1); (Seminorm⟹directional) interpolation lemma; jet-to-growth.
- LITERATURE: Biswas–Topp Lipschitz; GJS homogeneous C^{1,α}; KS/IS/GJS§7 degenerate Hölder; BDOR nonlocal FKS; KKL; DCKP.
- CONDITIONAL: Q1 assembly; perturbation lemma (RHS→0 ⇒ uniform C^{1,α'}) ← single root; complement ordering in barrier comparison.
- OPEN: scale propagation of coercivity (= degenerate Liouville); A₂-comparability (n=2 candidate); two-phase comparison; sharpness of γ<(p−1)/(1+sp).
- SAFEST THEOREM: p≥2, p<2/(1−s), s>1−1/p, γ<(p−1)/(1+sp), flat branching point (sup_{B_r}|u|=o(r)); ASSUMING (i) C^1-compactness input and (ii) scale-uniform (ND): |u(x)|≤C|x−x₀|^{β*}. Not unconditional; no ∇u(x₀)=0.
