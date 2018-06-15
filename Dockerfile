FROM ethereum/solc:stable
RUN a=$(which solc) && \
    mv $a $(dirname $a)/_solc && \
    echo -e '#!/bin/sh\ncd /tmp\n_solc "$@"' > $a && \
    chmod +x $a
