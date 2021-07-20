## add modifed ParallelStencil
Pkg.add(url="https://github.com/deconvolution/ParallelStencil.jl",
rev="higher_order_accuracy");
##
using Documenter,JSWAP

makedocs(
    modules=[JSWAP],
    authors="Yi Zhang",
    sitename="JuliaSoundWAvePropagation",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/deconvolution/JSWAP.git",
    branch = "gh-pages",
    target = "build",
    devbranch = "main",
    devurl = "dev",
    forcepush=true,
    push_preview =true
)
