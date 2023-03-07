<!--
Add here global page variables to use throughout your website.
-->
+++
author = "Thomas Christensen"
mintoclevel = 2

# Add here files or directories that should be ignored by Franklin, otherwise
# these files might be copied and, if markdown, processed by Franklin which
# you might not want. Indicate directories by ending the name with a `/`.
# Base files such as LICENSE.md and README.md are ignored by default.
ignore = ["node_modules/" "franklin", "franklin.pub"]

# RSS (the website_{title, descr, url} must be defined to get RSS)
generate_rss = true
website_title = "Research | tchr"
website_descr = "Thomas Christensen"
website_url   = "https://thchr.github.io/"

# Uncomment below if the site will be hosted at https://www.mit.edu/~tchr/
# prepath = "~tchr"
+++

<!--
Add here global latex commands to use throughout your
pages. It can be math commands but does not need to be.
For instance:
* \newcommand{\phrase}{This is a long phrase to copy.}
-->
\newcommand{\rv}{\mathbf{r}}
\newcommand{\correspondmark}{*}
\newcommand{\hfig}[1]{[![](#1)](#1)} # include a "clickable" figure