import os

snippets_text = r"""
# -*- mode: snippet -*-
# name: nabla
# key: ;N
# condition: 'auto
# --
\nabla $0

# -*- mode: snippet -*-
# name: alpha
# key: ;a
# condition: 'auto
# --
\alpha $0

# -*- mode: snippet -*-
# name: beta
# key: ;b
# condition: 'auto
# --
\beta $0

# -*- mode: snippet -*-
# name: gamma
# key: ;g
# condition: 'auto
# --
\gamma $0

# -*- mode: snippet -*-
# name: Gamma
# key: ;G
# condition: 'auto
# --
\Gamma $0

# -*- mode: snippet -*-
# name: delta
# key: ;d
# condition: 'auto
# --
\delta $0

# -*- mode: snippet -*-
# name: Delta
# key: ;D
# condition: 'auto
# --
\Delta $0

# -*- mode: snippet -*-
# name: epsilon
# key: ;e
# condition: 'auto
# --
\epsilon $0

# -*- mode: snippet -*-
# name: varepsilon
# key: ;ve
# condition: 'auto
# --
\varepsilon $0

# -*- mode: snippet -*-
# name: zeta
# key: ;z
# condition: 'auto
# --
\zeta $0

# -*- mode: snippet -*-
# name: eta
# key: ;h
# condition: 'auto
# --
\eta $0

# -*- mode: snippet -*-
# name: theta
# key: ;o
# condition: 'auto
# --
\theta $0

# -*- mode: snippet -*-
# name: vartheta
# key: ;vo
# condition: 'auto
# --
\vartheta $0

# -*- mode: snippet -*-
# name: Theta
# key: ;O
# condition: 'auto
# --
\Theta $0

# -*- mode: snippet -*-
# name: kappa
# key: ;k
# condition: 'auto
# --
\kappa $0

# -*- mode: snippet -*-
# name: lambda
# key: ;l
# condition: 'auto
# --
\lambda $0

# -*- mode: snippet -*-
# name: Lambda
# key: ;L
# condition: 'auto
# --
\Lambda $0

# -*- mode: snippet -*-
# name: mu
# key: ;m
# condition: 'auto
# --
\mu $0

# -*- mode: snippet -*-
# name: nu
# key: ;n
# condition: 'auto
# --
\nu $0

# -*- mode: snippet -*-
# name: xi
# key: ;x
# condition: 'auto
# --
\xi $0

# -*- mode: snippet -*-
# name: Xi
# key: ;X
# condition: 'auto
# --
\Xi $0

# -*- mode: snippet -*-
# name: pi
# key: ;i
# condition: 'auto
# --
\pi $0

# -*- mode: snippet -*-
# name: Pi
# key: ;I
# condition: 'auto
# --
\Pi $0

# -*- mode: snippet -*-
# name: rho
# key: ;r
# condition: 'auto
# --
\rho $0

# -*- mode: snippet -*-
# name: sigma
# key: ;s
# condition: 'auto
# --
\sigma $0

# -*- mode: snippet -*-
# name: Sigma
# key: ;S
# condition: 'auto
# --
\Sigma $0

# -*- mode: snippet -*-
# name: tau
# key: ;t
# condition: 'auto
# --
\tau $0

# -*- mode: snippet -*-
# name: phi
# key: ;f
# condition: 'auto
# --
\phi $0

# -*- mode: snippet -*-
# name: varphi
# key: ;vf
# condition: 'auto
# --
\varphi $0

# -*- mode: snippet -*-
# name: Phi
# key: ;F
# condition: 'auto
# --
\Phi $0

# -*- mode: snippet -*-
# name: chi
# key: ;c
# condition: 'auto
# --
\chi $0

# -*- mode: snippet -*-
# name: psi
# key: ;p
# condition: 'auto
# --
\psi $0

# -*- mode: snippet -*-
# name: Psi
# key: ;P
# condition: 'auto
# --
\Psi $0

# -*- mode: snippet -*-
# name: omega
# key: ;w
# condition: 'auto
# --
\omega $0

# -*- mode: snippet -*-
# name: Omega
# key: ;W
# condition: 'auto
# --
\Omega $0
"""

def split_snippets(snippets_text):
    snippets = snippets_text.strip().split("\n\n")
    for snippet in snippets:
        lines = snippet.split("\n")
        key_line = [line for line in lines if line.startswith("# key: ")]
        name_line = [line for line in lines if line.startswith("# name: ")]
        if not key_line or not name_line:
            continue
        key = key_line[0].split(": ")[1]
        name = name_line[0].split(": ")[1]
        folder_name = key.strip(';')
        
        if not os.path.exists(folder_name):
            os.makedirs(folder_name)

        file_path = os.path.join(folder_name, f"{name}.yasnippet")
        with open(file_path, 'w') as file:
            file.write(snippet)
        print(f"Snippet '{name}' saved to: {file_path}")

if __name__ == "__main__":
    split_snippets(snippets_text)
