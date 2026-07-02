# Routes assessment (2026-07-02) — all ways to close the gap, ranked

New findings this session (not previously in repo):
(F-fail) Pure barrier/comparison CANNOT give the upper bound nonlocally: (i) (-Δ_p)^s|x|^{β*} = -∞ (supercritical tail); (ii) exact zero-core supersolutions impossible (at core points operator = -∫Φ^{p-1}K < 0 = Φ^γ); (iii) positive profiles fail too: comparison forces Φ ≳ 1 on the far field, injecting a constant negative term -C_far vs available positivity ~|x|^{β*γ}→0. Far field injects ~r^{sp/(p-1)} ≫ r^{β*}; only the θ_k-renormalized blow-up absorbs it. Barriers stay valid for NONDEGENERACY (subsolution direction; two-phase sign -u_-^γ ≤ 0 even helps upper comparisons inside iterative schemes).
(G-circ) Unamplified finite-scale improvement is circular: u(r·)/r^{β*} is exactly scale-invariant, RHS does not vanish, compactness limit = entire dead-core solution ⇒ needs Liouville-with-growth, which PTU derive FROM the growth theorem. On increments: back to degenerate L_{0,h}.
(C-safe) The perturbation-lemma iteration is TAIL-SAFE: 1+α_GJS ≤ sp/(p-1) ⇒ (1+α')(p-1) < sp ⇒ rescalings keep convergent tails. This is why Route C is clean while the β*-Liouville is hard.
(B-balance) Energy/absorption balance is EXACT at β* (n+pβ*-sp = n+β*(1+γ)) ⇒ Weiss/Almgren territory. p=2: viable via CS extension (fractional Alt-Phillips Weiss formulas exist, e.g. arXiv:2308.06357 for two-phase almost minimizers). p≠2: NO extension for (-Δ_p)^s; monotonicity formula would be its own hard open problem.

## Ranking
1. ROUTE C (perturbation lemma: f→0 ⇒ uniform C^{1,α'}). Provable; Step 1 (one-step improvement by compactness vs GJS) safe; Step 2 (iteration: affine subtraction breaks equation — run on increments/excess with GJS §7 linear machinery at subcritical exponent) is the writing effort. Unlocks C^1-compactness + unit-scale (ND). FIRST LEMMA TO WRITE.
2. ROUTE A+D (Hypothesis (L) via BDOR A2-average comparability — n=2 first (quasiregularity: |∇u|^{p-2} Muckenhoupt for planar p-harmonic, Bojarski–Iwaniec/Manfredi) — or scale dichotomy on good annuli (unit-scale coercivity proved, proofs_pcase §5)).
3. ROUTE G-amplified = existing contradiction scheme (complete modulo 1,2).
4. ROUTE B energy/monotonicity: p=2 real option; p≠2 speculative-hard (no extension).
5. ROUTE E regularization J_{p,ε}: ellipticity ratio ε^{p-2} vs 1 = the degeneracy reappearing; no nonlocal elliptic intrinsic-scaling template; scaffolding only.
6. ROUTE F pure barrier for upper bound: NO (see F-fail above). Keep for nondegeneracy.

## Paper changes
- Promote perturbation lemma to its own section (before Liouville).
- Add remarks: F-fail (why barriers can't give the upper bound) and G-circ (why unamplified flatness improvement is circular) — preempt referees.
- Lemmas to add: (1) perturbation lemma [prove]; (2) nonlinear Caccioppoli for v_k [routine]; (3) A2-average comparability for homogeneous model profiles, n=2 [attempt]; (4) F-fail remark-lemma; (5) G-circ remark; (6) scale-dichotomy interleaving [held].

## Do-not-claim
Unconditional theorem; Dv_0(0)=0 / C^1-compactness before Route C written; BDOR as-is (pair vs point degeneracy); barriers for upper bound; s↗1 via GJS constants; sharpness of γ<(p-1)/(1+sp); any p≠2 monotonicity formula; Liouville from uniformly elliptic theory.

## Safest theorem
p≥2, p<2/(1-s), 0<γ<(p-1)/(1+sp), u bounded weak solution, x_0 flat branching (sup sense); under Assumption (compactness) + Hypothesis (L): |u(x)| ≤ C|x-x_0|^{β*}. After Route C: compactness assumption drops; conditional on (L) alone.
