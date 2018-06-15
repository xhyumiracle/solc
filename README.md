cd to /tmp before execute the actual solc everytime when execute solc, which is the default bin of this image.

place this to .zshrc or .bashrc:
`alias solc='docker run -v `pwd`:/tmp -it --rm xhyumiracle/solc'`
