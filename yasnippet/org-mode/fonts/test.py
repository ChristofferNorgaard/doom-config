import os

snippets_text = r"""
# -*- mode: snippet -*-
# name: tt
# key: tt
# condition: 'auto
# type: command
# --
(yas-expand-snippet
(if (string-match "^$\\|[^a-zA-Z\\\\]$" (buffer-substring-no-properties (line-beginning-position) (point)))
 "\\texttt{$1}$0"
 "tt"))

# -*- mode: snippet -*-
# name: tii
# key: tii
# condition: 'auto
# type: command
# --
(yas-expand-snippet
(if (string-match "^$\\|[^a-zA-Z]$" (buffer-substring-no-properties (line-beginning-position) (point)))
 "\\textit{$1}$0"
 "tii"))

# -*- mode: snippet -*-
# name: tbb
# key: tbb
# condition: 'auto
# type: command
# --
(yas-expand-snippet
(if (string-match "^$\\|[^a-zA-Z]$" (buffer-substring-no-properties (line-beginning-position) (point)))
 "\\textbf{$1}$0"
 "tbb"))

# -*- mode: snippet -*-
# name: ul
# key: ul
# condition: 'auto
# type: command
# --
(yas-expand-snippet
(if (string-match "^$\\|[^a-zA-Z]$" (buffer-substring-no-properties (line-beginning-position) (point)))
 "\\underline{$1}$0"
 "ul"))

# -*- mode: snippet -*-
# name: tee
# key: tee
# condition: 'auto
# type: command
# --
(yas-expand-snippet
(if (string-match "^$\\|[^a-zA-Z]$" (buffer-substring-no-properties (line-beginning-position) (point)))
 "\\text{$1}$0"
 "tee"))

# -*- mode: snippet -*-
# name: rmm
# key: rmm
# condition: 'auto
# type: command
# --
(yas-expand-snippet
(if (string-match "^$\\|[^a-zA-Z]$" (buffer-substring-no-properties (line-beginning-position) (point)))
 "\\mathrm{$1}$0"
 "rmm"))

# -*- mode: snippet -*-
# name: mcc
# key: mcc
# condition: 'auto
# type: command
# --
(yas-expand-snippet
(if (string-match "^$\\|[^a-zA-Z]$" (buffer-substring-no-properties (line-beginning-position) (point)))
 "\\mathcal{$1}$0"
 "mcc"))

# -*- mode: snippet -*-
# name: msf
# key: msf
# condition: 'auto
# type: command
# --
(yas-expand-snippet
(if (string-match "^$\\|[^a-zA-Z]$" (buffer-substring-no-properties (line-beginning-position) (point)))
 "\\mathsf{$1}$0"
 "msf"))

# -*- mode: snippet -*-
# name: mbb
# key: mbb
# condition: 'auto
# type: command
# --
(yas-expand-snippet
(if (string-match "^$\\|[^a-zA-Z]$" (buffer-substring-no-properties (line-beginning-position) (point)))
 "\\mathbb{$1}$0"
 "mbb"))

# -*- mode: snippet -*-
# name: mbf
# key: mbf
# condition: 'auto
# type: command
# --
(yas-expand-snippet
(if (string-match "^$\\|[^a-zA-Z]$" (buffer-substring-no-properties (line-beginning-position) (point)))
 "\\mathbf{$1}$0"
 "mbf"))

# -*- mode: snippet -*-
# name: tm
# key: tm
# condition: 'auto
# type: command
# --
(yas-expand-snippet
(if (string-match "^$\\|[^a-zA-Z\\\\]$" (buffer-substring-no-properties (line-beginning-position) (point)))
 "\\music{$1}$0"
 "tm"))
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
