<!-- PROJECT LOGO -->
<p align="center">
  <a href="https://github.com/betulcalik/KNN-MPSO">
    <img src="https://github.com/betulcalik/KNN-MPSO/blob/main/images/logo.png" alt="Logo" width="130" height="100">
  </a>

  <h1 align="center"> KNN-MPSO </h1>

  <p align="center">
    This repository contains <strong>Modified Particle Swarm Optimization (MPSO)</strong> algorithm integration with <strong>KNN (k-Nearest Neighbor)</strong>. Aim is improvement MPSO algorithm.
    <br />
    <a href="https://github.com/betulcalik/KNN-MPSO/tree/main/KNN-MPSO"><strong>Explore the project »</strong></a>
    <br />
    <br />
    <a href="https://github.com/betulcalik/KNN-MPSO/issues">Report Bug</a>
  </p>
</p>

---
<!-- Article and code links -->

<a href="https://www.sciencedirect.com/science/article/abs/pii/S0957417420301780?via%3Dihub"><strong>Explore the article of MPSO algorithm using adaptive strategy »</strong></a>

<a href="https://github.com/lhustl/MPSO"><strong>Explore the MPSO algorithm MATLAB code »</strong></a>

<!-- Turkish article -->
<p><strong>KNN-MPSO algoritmasına ait Türkçe Makale:
<a href="https://github.com/betulcalik/FDB-MPSO/blob/main/reports/KNN-MPSO.pdf">KNN-MPSO</a></strong></p>

<!-- Table Of Contents -->

## Table Of Contents

### 1. MPSO Algorithm

<p>In expert systems, complex optimization problems are usually nonlinear, nonconvex, multimodal and discontinuous. As an efficient and simple optimization algorithm, particle swarm optimization (PSO) has been widely applied to solve various real optimization problems in expert systems. However, avoiding premature convergence and balancing the global exploration and local exploitation capabilities of the PSO remains an open issue. To overcome these drawbacks and strengthen the ability of PSO in solving complex optimization problems, a modified PSO using adaptive strategy called MPSO is proposed. In MPSO, in order to well balance the global exploration and local exploitation capabilities of the PSO, a chaos-based non-linear inertia weight is proposed. Meanwhile, to avoid the premature convergence, stochastic and mainstream learning strategies are adopted. </p>

<p>In MPSO, the four major highlights are described below.</p>
<ol>
    <li> Chaotic-Based Inertia Weight </li>
    <li> Stochastic and Mainstream Learning Strategies </li>
    <li> Adaptive Position Updating Strategy </li>
    <li> Terminal Replacement Mechanism </li>
</ol>

<p>To verify MPSO’s convergence performance on various optimization
problems, comparison experiments on complex CEC2017 are carried out. The experiment results
and corresponding statistical analysis indicate that MPSO outperforms quite a few state-of-the-art
PSO variants and some other evolutionary algorithms proposed recently.</p>

### 2. KNN Algorithm

<p>KNN algorithm is one of the most used supervised learning method algorithms. KNN algorithm can be used for classification and regression in supervised learning. Substantially, the KNN algorithm assumes that similar points exist in close proximity. K value in the KNN algorithm indicates the number of nearest neighbors. However, the k value is not a fixed value that means the k value can change according to problem type. </p>

### 3. KNN-MPSO

<p>The KNN-MPSO algorithm has been developed to improve the performance of the MPSO algorithm. Two distance formulas were used to constitute the KNN-MPSO algorithm: Euclidean Formula and Manhattan Formula.</p>

<p>The <strong>heuristic weight setting</strong> method was used to develop the KNN-MPSO algorithm. Experimental results are given below: </p>

| Euclidean  | Manhattan |
| ------------- | ------------- |
| 5 (%3.44)   | 4 (%2.75)  | 