## add modifed ParallelStencil
using Pkg
Pkg.add(url="https://github.com/deconvolution/ParallelStencil.jl",
rev="higher_order_accuracy");
##
using Test,JSWAP

@test true
