# Run this file to compile the webpage; then copy the contents of the `/__site/` folder to
# wherever the page is hosted

using Franklin
using Sass

cd(@__DIR__)

cd("_sass")
Sass.compile_file("style.scss", "../_css/celeste.min.css"; output_style = Sass.compressed)

cd("..")
#serve()
optimize(prepath="~tchr", minify=false)