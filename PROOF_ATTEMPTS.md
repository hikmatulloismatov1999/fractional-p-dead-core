# Proof-level attempts on the two core gaps (2026-07-02, second session)

## NEW this session
1. **Shifted-kernel resolution of affine subtraction (Task A.5).** After excess iteration the affine part moves into the OPERATOR: A_b v(x) = P.V.∫ J_p(v(x)-v(y)+b·(x-y))|x-y|^{-n-sp}dy. Well-defined on bounded functions by P.V. oddness cancellation + |J_p(t+τ)-J_p(τ)| ≤ c(|t|+|τ|)^{p-2}|t| ~ |y|^{p-2}, integrable iff p-2 < sp ⟺ p < 2/(1-s) — third independent appearance of the GJS range. Monotone in v ⇒ Minty applies. Perturbation lemma must be stated for the FAMILY {A_b : |b| ≤ B}, uniformly in b.
2. **Exact near-diagonal BDOR match (Task B1).** With w(z)=|z|^a, a=(β*-1)(p-2), p'=2, s'=m/2 (m=sp-p+2): BDOR kernel = |x|^a|x-y|^{-n-m} near diagonal = our linearized kernel exactly. |z|^a ∈ A_2 iff a<n ✓. FAR FIELD MISMATCH: ours ~ |y|^{β*(p-2)} exceeds BDOR model by (|y|/|x|)^a ⇒ BDOR only scale-local + far field as truncation datum. Core open condition (X1): |∇v_0|^{p-2} ∈ A_2 uniformly under β*-rescalings — NOT KNOWN, even n=2 (no nonlocal quasiregularity).
3. **Dichotomy closing structure (Task B2).** Bad-branch domination (Σδ(2^j) small) ⇒ telescoping jet-to-growth ⇒ growth strictly below β* ⇒ rescalings tail-admissible ⇒ DIRECT vanishing-jet Liouville (GJS Thm 1.1, no degenerate kernel) kills v_0. Good-branch domination ⇒ coercive route (interp lemma + GJS §7). OPEN: mixed regime composition (tool: bounded dyadic oscillation of δ).
4. **Task E is structurally dead:** J_{p,ε} destroys (p-1)-homogeneity (the RHS-killing mechanism) AND the expected exponent drifts with ε (crossover to p=2 at small amplitudes). Not an estimates problem — an exponent problem.

## Lemma (P) — perturbation (NEXT TO WRITE)
2≤p<2/(1-s), |b|≤B. ∃δ₀,α',C: A_b v = f in B_1, ‖v‖_∞ ≤1, Tail_{p-1,sp}(v;1) ≤1, ‖f‖_∞ ≤ δ₀ ⇒ ‖v‖_{C^{1,α'}(B_{1/2})} ≤ C uniformly in b.
Proof chain: Biswas–Topp Lipschitz → Arzelà (C^0_loc) → Caccioppoli (DKP) → weak W^{s,p}_loc → Minty (monotone, no strong conv needed) + fractional Rellich (DNPV Thm 7.1) + TAIL-SPACE convergence hypothesis (unavoidable; CS Rem 4.4) → limit A_b v_0 = 0 → regularity of limit: b=0 GJS Thm 1.1; b≠0 = GJS stages 2-3 EXTRACTION (not a stated theorem; ~70%) → quantitative ε-closeness in C^0(B_{1/2}) ONLY (C^1-closeness would be circular) → excess iteration tail-safe ((1+α')(p-1)<sp).

## Lemma (X) — BDOR reduction
(X1) [w_0]_{A_2} ≤ Λ₀ uniformly under rescalings + (X2) scale-local two-sided comparability ⇒ BDOR Thm 3.5 (p'=2, s'=m/2) on dyadic balls + far-field datum ⇒ scale-uniform Hölder for L_{0,h} ⇒ Hypothesis (L). Status: (X1) not known; BDOR nonhomogeneous = "expected" by them, extraction needed. P ≈ 30-40%.

## Lemma (D) — dichotomy
δ(R) := R^{1+α'-β*}[v_0]_{C^{1+α'}(B_R)}. Good (δ≥δ₀): Hölder decay at scale R (interp lemma + L5.1 + GJS§7), constants dep. δ₀. Bad: sup_{B_R}|W^h| ≤ C|h|δ₀^θ R^{β*-1}. Closing: bad-dominant ⇒ subcritical growth ⇒ direct Liouville; good-dominant ⇒ decay chain. OPEN: mixed regime. P ≈ 50%.

## Verdicts
- Task C (finite-scale avoids (L)?): NO. Failure located at classification of the compactness limit at critical exponent (unamplified: entire dead-core Liouville, circular; amplified: L_{0,h} again).
- Task D (direct nonlinear Liouville): DEAD as stated. β*(p-1)>sp ⇒ operator undefined; compensated/modulo-polynomial theory exists only linear (DSV RMI 35 (2019)); fractional p-harmonic with polynomial growth: NOT KNOWN. Increments ARE the compensated definition.
- Task E: DEAD for uniform estimates (see NEW-4). No references exist for this regularization giving fractional-p C^{1,α}.

## Must-not-claim
GJS for A_b (unextracted); strong W^{s,p} where Minty suffices; BDOR nonhomogeneous; (X1) any n; C^1-closeness in perturbation; mixed-regime dichotomy; sharpness of γ<(p-1)/(1+sp); unconditional theorem.
