using Documenter
using JSWAP

makedocs(
    sitename = "JSWAP",
    format = Documenter.HTML(),
    modules = [JSWAP]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
#=deploydocs(
    repo = "<repository url>"
)=#
