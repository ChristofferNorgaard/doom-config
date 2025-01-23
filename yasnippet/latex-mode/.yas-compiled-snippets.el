;;; Compiled snippets and support files for `latex-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'latex-mode
                     '(("title"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\begin{mytitlepage}{${1:title}}{${2:date}}\n	$0\n\\end{mytitlepage}"
                             "title")))
                        "mytitlepage environment for FMF documents" 'auto nil
                        nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/title.yasnippet"
                        nil nil)
                       ("tc"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\begin{tcolorbox}\n	$1\n\\end{tcolorbox}\n$0"
                             "tc")))
                        "tcolorbox environment" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/tc.yasnippet"
                        nil nil)
                       ("qu"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\begin{quote}\n	$1\n\\end{quote}"
                             "qu")))
                        "qu" nil nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/qu.yasnippet"
                        nil nil)
                       ("pm"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\begin{pmatrix}\n	$1\n\\end{pmatrix}$0"
                             "pm")))
                        "Parentheses matrix pmatrix" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/pm.yasnippet"
                        nil nil)
                       ("nn"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\begin{equation*}\n	$1\n\\end{equation*}\n$0"
                             "nn")))
                        "Equation environment with suppressed numbering" 'auto
                        nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/nn.yasnippet"
                        nil nil)
                       ("nano.98414.save"
                        "- Job pri firmi od njenega očima\n- Miha, laufa Adakta\n"
                        "nano.98414.save" nil nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/nano.98414.save"
                        nil nil)
                       ("mq"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "mqty(${1:${VISUAL:}})$0"
                             "mq")))
                        "\\mqty() (matrix for inline math)" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/mq.yasnippet"
                        nil nil)
                       ("mk"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\\\( $1 \\\\) $0"
                             "mk")))
                        "mk" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/mk.yasnippet"
                        nil nil)
                       ("mint"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\begin{minted}{$1}\n$0    \nnd{minted}"
                             "mint")))
                        "Minted environment" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/mint.yasnippet"
                        nil nil)
                       ("itt"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\begin{itemize}\n\n	\\item $0\n\n\\end{itemize}"
                             "itt")))
                        "Itemize environment" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/itt.yasnippet"
                        nil nil)
                       ("ii"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\item $0"
                             "ii")))
                        "Item" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/ii.yasnippet"
                        nil nil)
                       ("env"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\begin{$1}\n	$0\n\\end{$1}"
                             "env")))
                        "New environment" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/env.yasnippet"
                        nil nil)
                       ("enn"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\begin{enumerate}\n\n	\\item $0\n\n\\end{enumerate}"
                             "enn")))
                        "Enumerate environment" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/enn.yasnippet"
                        nil nil)
                       ("case"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\begin{cases}\n	$1\n\\end{cases}$0"
                             "case")))
                        "Cases environment" nil nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/case.yasnippet"
                        nil nil)
                       ("arr"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\begin{array}{${1:cc}}\n	$2\n\\end{array}$0"
                             "arr")))
                        "Array environment" nil nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/arr.yasnippet"
                        nil nil)
                       ("all"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\begin{align*}\n	$1\n\\end{align*}\n$0"
                             "all")))
                        "Align environment with suppressed numbering" 'auto nil
                        nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/all.yasnippet"
                        nil nil)
                       ("VV"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\begin{verbatim}\n	$1\n\\end{verbatim}"
                             "VV")))
                        "Verbatim environment" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/environments/VV.yasnippet"
                        nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'latex-mode
                     '(("ul"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\underline{$1}$0"
                             "ul")))
                        "ul" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/fonts/ul.yasnippet"
                        nil nil)
                       ("tt"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\texttt{$1}$0"
                             "tt")))
                        "tt" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/fonts/tt.yasnippet"
                        nil nil)
                       ("tm"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\music{$1}$0"
                             "tm")))
                        "tm" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/fonts/tm.yasnippet"
                        nil nil)
                       ("tii"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\textit{$1}$0"
                             "tii")))
                        "tii" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/fonts/tii.yasnippet"
                        nil nil)
                       ("tee"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\text{$1}$0"
                             "tee")))
                        "tee" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/fonts/tee.yasnippet"
                        nil nil)
                       ("tbb"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\textbf{$1}$0"
                             "tbb")))
                        "tbb" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/fonts/tbb.yasnippet"
                        nil nil)
                       ("rmm"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\mathrm{$1}$0"
                             "rmm")))
                        "rmm" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/fonts/rmm.yasnippet"
                        nil nil)
                       ("msf"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\mathsf{$1}$0"
                             "msf")))
                        "msf" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/fonts/msf.yasnippet"
                        nil nil)
                       ("mcc"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\mathcal{$1}$0"
                             "mcc")))
                        "mcc" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/fonts/mcc.yasnippet"
                        nil nil)
                       ("mbf"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\mathbf{$1}$0"
                             "mbf")))
                        "mbf" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/fonts/mbf.yasnippet"
                        nil nil)
                       ("mbb"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\mathbb{$1}$0"
                             "mbb")))
                        "mbb" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/fonts/mbb.yasnippet"
                        nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'latex-mode
                     '((";z" "\\zeta$0" "zeta" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/zeta.yasnippet"
                        nil nil)
                       (";x" "\\xi$0" "xi" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/xi.yasnippet"
                        nil nil)
                       (";vo" "\\vartheta$0" "vartheta" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/vartheta.yasnippet"
                        nil nil)
                       (";vf" "\\varphi$0" "varphi" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/varphi.yasnippet"
                        nil nil)
                       (";ve" "\\varepsilon$0" "varepsilon" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/varepsilon.yasnippet"
                        nil nil)
                       (";X" "\\Xi$0" "Xi" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/uXi.yasnippet"
                        nil nil)
                       (";O" "\\Theta$0" "Theta" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/uTheta.yasnippet"
                        nil nil)
                       (";S" "\\Sigma$0" "Sigma" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/uSigma.yasnippet"
                        nil nil)
                       (";P" "\\Psi$0" "Psi" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/uPsi.yasnippet"
                        nil nil)
                       (";I" "\\Pi$0" "Pi" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/uPi.yasnippet"
                        nil nil)
                       (";F" "\\Phi$0" "Phi" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/uPhi.yasnippet"
                        nil nil)
                       (";W" "\\Omega$0" "Omega" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/uOmega.yasnippet"
                        nil nil)
                       (";L" "\\Lambda$0" "Lambda" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/uLambda.yasnippet"
                        nil nil)
                       (";G" "\\Gamma$0" "Gamma" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/uGamma.yasnippet"
                        nil nil)
                       (";D" "\\Delta$0" "Delta" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/uDelta.yasnippet"
                        nil nil)
                       (";o" "\\theta$0" "theta" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/theta.yasnippet"
                        nil nil)
                       (";t" "\\tau$0" "tau" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/tau.yasnippet"
                        nil nil)
                       (";s" "\\sigma$0" "sigma" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/sigma.yasnippet"
                        nil nil)
                       (";r" "\\rho$0" "rho" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/rho.yasnippet"
                        nil nil)
                       (";p" "\\psi$0" "psi" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/psi.yasnippet"
                        nil nil)
                       (";i" "\\pi$0" "pi" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/pi.yasnippet"
                        nil nil)
                       (";f" "\\phi$0" "phi" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/phi.yasnippet"
                        nil nil)
                       (";w" "\\omega$0" "omega" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/omega.yasnippet"
                        nil nil)
                       (";n" "\\nu$0" "nu" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/nu.yasnippet"
                        nil nil)
                       (";N" "\\nabla$0" "∇ (nabla)" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/nabla.yasnippet"
                        nil nil)
                       (";m" "\\mu$0" "mu" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/mu.yasnippet"
                        nil nil)
                       (";l" "\\lambda$0" "lambda" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/lambda.yasnippet"
                        nil nil)
                       (";k" "\\kappa$0" "kappa" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/kappa.yasnippet"
                        nil nil)
                       (";g" "\\gamma$0" "gamma" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/gamma.yasnippet"
                        nil nil)
                       (";h" "\\eta$0" "eta" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/eta.yasnippet"
                        nil nil)
                       (";e" "\\epsilon$0" "epsilon" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/epsilon.yasnippet"
                        nil nil)
                       (";d" "\\delta$0" "delta" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/delta.yasnippet"
                        nil nil)
                       (";c" "\\chi$0" "chi" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/chi.yasnippet"
                        nil nil)
                       (";b" "\\beta$0" "beta" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/beta.yasnippet"
                        nil nil)
                       (";a" "\\alpha$0" "alpha" 'auto nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/alpha.yasnippet"
                        nil nil)
                       (";8" (progn (yas-expand-snippet "\\infty$0")) "8" 'auto
                        nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/greek/8.yasnippet"
                        nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'latex-mode
                     '(("xx"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\times $0"
                             "xx")))
                        "times" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/xx.yasnippet"
                        nil nil)
                       ("vv"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\vec{$1}$0"
                             "vv")))
                        "vv" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/vv.yasnippet"
                        nil nil)
                       ("uv"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\uvec{$1}$0"
                             "uv")))
                        "uv" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/uv.yasnippet"
                        nil nil)
                       ("TT"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "\\w$\\|[)}|']$\\|\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "^{T}$0"
                             "TT")))
                        "TTsuperscript" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/transposedsuperscript.yasnippet"
                        nil nil)
                       ("->"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\to $0"
                             "to")))
                        "to" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/to.yasnippet"
                        nil nil)
                       ("tff"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\tfrac{$1}{$2}$0"
                             "tff")))
                        "tff" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/tff.yasnippet"
                        nil nil)
                       ("sd"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "\\w$\\|[)}|']$\\|\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "_{mathrm{$1}}$0"
                             "sd")))
                        "Text subscript" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/textsubscript.yasnippet"
                        nil nil)
                       ("'"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "\\w$\\|[)}|']$\\|\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "^{$1}$0"
                             "'")))
                        "Superscript" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/superscript.yasnippet"
                        nil nil)
                       (";"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "\\w$\\|[)}|']$\\|\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "_{$1}$0"
                             ";")))
                        "Subscript" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/subscript.yasnippet"
                        nil nil)
                       ("**"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "\\w$\\|[)}|']$\\|\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "^{*}$0"
                             "**")))
                        "Starsuperscript" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/starsuperscript.yasnippet"
                        nil nil)
                       ("sq"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\sqrt{$1}$0"
                             "sqrt")))
                        "sq" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/sq.yasnippet"
                        nil nil)
                       ("\""
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "\\w$\\|[)}|']$\\|\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "' $0"
                             "\"")))
                        "prime" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/prime.yasnippet"
                        nil nil)
                       ("pp"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\partial$0"
                             "pp")))
                        "pp" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/pp.yasnippet"
                        nil nil)
                       ("=>"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "implies$0"
                             "=>")))
                        "implies" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/implies.yasnippet"
                        nil nil)
                       ("hat"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\hat{$1}$0"
                             "hat")))
                        "hat" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/hat.yasnippet"
                        nil nil)
                       ("fpp"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\frac{\\partial $1}{\\partial $2}$0"
                             "fpp")))
                        "fpp" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/fpp.yasnippet"
                        nil nil)
                       ("fnpp"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\frac{\\partial^{$1} $2}{\\partial $3^{$1}}$0"
                             "fnpp")))
                        "fnpp" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/fnpp.yasnippet"
                        nil nil)
                       ("ff"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\frac{$1}{$2}$0"
                             "ff")))
                        "ff" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/ff.yasnippet"
                        nil nil)
                       ("f2pp"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\frac{\\partial^{2} $1}{\\partial $2^{2}}$0"
                             "f2pp")))
                        "f2pp" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/f2pp.yasnippet"
                        nil nil)
                       (";E" " \\exists $0\n" "exists" (and (texmathp) 'auto)
                        nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/exists.yasnippet"
                        nil nil)
                       (";A" " \\forall$0\n" "every" (and (texmathp) 'auto) nil
                        nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/every.yasnippet"
                        nil nil)
                       ("<=>"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\Leftrightarrow$0"
                             "<=>")))
                        "equivalent" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/equivalent.yasnippet"
                        nil nil)
                       ("ee"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "e^{$1}$0"
                             "ee")))
                        "Auto e" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/ee.yasnippet"
                        nil nil)
                       ("b("
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\left( $1 \\right)$0"
                             "b(")))
                        "bround" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/bround.yasnippet"
                        nil nil)
                       ("bar"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "^$\\|[^a-zA-Z\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "\\bar{$1}$0"
                             "bar")))
                        "bar" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/bar.yasnippet"
                        nil nil)
                       ("00"
                        (progn
                          (yas-expand-snippet
                           (if
                               (string-match "\\w$\\|[)}|']$\\|\\]$"
                                             (buffer-substring-no-properties
                                              (line-beginning-position) (point)))
                               "_{0}$0"
                             "00")))
                        "00 Subscript" (and (texmathp) 'auto) nil nil
                        "/home/jakob/.doom.d/yasnippet/latex-mode/math/00.yasnippet"
                        nil nil)))


;;; Do not edit! File generated at Sat Jan 18 23:00:09 2025
