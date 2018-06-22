FROM hasura/graphql-bench:v0.3

COPY bench.py /graphql-bench/bench.py
COPY plot.py /graphql-bench/plot.py
COPY bench-lib.lua /graphql-bench/bench-lib.lua
COPY bench.lua /graphql-bench/bench.lua

RUN mkdir -p /graphql-bench/ws
WORKDIR /graphql-bench/ws/

ENTRYPOINT ["python3", "-u", "/graphql-bench/bench.py"]
