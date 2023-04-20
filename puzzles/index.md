# Puzzles

Inspired by a [colleague's excellent example](https://kaminer.technion.ac.il/3041-2/), I've collected a few mathy physics puzzles here, each encountered in different research projects. 
If you've solved some of them and want to hear more about the research behind the puzzle, reach out or come by my office!


## Wilson loops on discrete paths

There’s an important object in topology called the Wilson operator (or sometimes, the holonomy):
$$
\bm{U}(\mathcal{C}) = \mathop{\mathrm{P}}\mathrm{e}^{\mathrm{i}\oint_{\mathcal{C}} \mathbf{A}(\mathbf{k})\cdot\mathrm{d}\mathbf{k}}.
$$
Here, $\mathbf{A}(\mathbf{k})$ is a Hermitian matrix (the Berry connection) with elements $A_{nm}(\mathbf{k}) = \mathrm{i}\langle n(\mathbf{k})|\nabla_{\mathbf{k}}m(\mathbf{k})\rangle$ and $|n(\mathbf{k})\rangle$ and $|m(\mathbf{k})\rangle$ are Bloch states of momentum $\mathbf{k}$ in bands $n$ and $m$ (which ranges over some finite set of bands; even one band is interesting).
The $\mathrm{P}$ denotes [path-ordering](https://en.wikipedia.org/wiki/Ordered_exponential), by which we mean that "earlier" points in the **k**-path $\mathcal{C}$ must occur "before" "later" points. More precisely, if the path $\mathcal{C}$ is closed, starting at a point $\mathbf{k}_0$ and ending at $\mathbf{k}_{N+1} = \mathbf{k}_0$, we imagine passing through $\mathcal{C}$ by traversing $\mathbf{k}_i$ in the order $i = 1, \ldots, N$ with $N \rightarrow \infty$, and define the path-ordered exponential of a **k**-dependent operator $\mathbf{O}(\mathbf{k})$ by
$$
\mathop{\mathrm{P}}\mathrm{e}^{\mathrm{i}\oint_{\mathcal{C}} \mathbf{A}(\mathbf{k})\cdot\mathrm{d}\mathbf{k}}
=
\lim_{N\rightarrow\infty}
\mathrm{e}^{\mathrm{i}\mathbf{O}(\mathbf{k}_N)⋅\bm{\delta}_N}
\cdots
\mathrm{e}^{\mathrm{i}\mathbf{O}(\mathbf{k}_1)⋅\bm{\delta}_1}
\equiv
\overleftarrow{\prod_i} \mathrm{e}^{\mathrm{i}\mathbf{O}(\mathbf{k}_i)⋅\bm{\delta}_i},
$$
where $\bm{\delta}_i = \mathbf{k}_{i+1} – \mathbf{k}_i$ and $|\bm{\delta}_i| \rightarrow 0$ as $N \rightarrow \infty$.

Can you explain why this a meaningful definition. And why do we need to bother with specifying an ordering? Try to see if you can find any interesting properties of $\bm{U}(\mathcal{C})$ (there are many)!

Okay, finally, the real question. Suppose you discretize $\mathcal{C}$ in a finite but large number of steps (i.e., $N$ finite): can you find an asymptotically correct expression for $\bm{U}(\mathcal{C})$ which only involves matrix products of matrices $\mathbf{M}(\mathbf{k}_i, \mathbf{k}_j)$ with elements $M_{nm}(\mathbf{k}_i, \mathbf{k}_j) = \langle n(\mathbf{k}_i) | \nabla_{\mathbf{k}} m(\mathbf{k}_j)\rangle$. A good starting point is trying to rewrite $\mathrm{e}^{\mathrm{i}\mathbf{A}(\mathbf{k}_i)⋅\bm{\delta}_i}$ in terms of the matrices $\mathbf{M}(\mathbf{k}_i,\mathbf{k}_j)$.

If you make it to the end: congratulations, you now have a gauge-invariant numerical scheme to calculate Berry phases (the arguments of the eigenvalues of $\bm{U}(\mathcal{C})$)!


## More to come

This page remains a work-in-progress: more puzzles will be added some day :).