#!/bin/bash

# docker run \
#     --rm \
#     --label "traefik.enable=true" \
#     --label "traefik.http.routers.final.rule=Host(\`subdomain.domain.com\`) && PathPrefix(\`/final\`)" \
#     --label "traefik.http.services.final.loadbalancer.server.port=5000" \
#     --label "traefik.http.middlewares.finalmiddleware.stripprefix.prefixes=/final" \
#     --label "traefik.http.routers.final.middlewares=finalmiddleware@docker" \
#     --network=traefik_testnet \
#     -d \
#     -e FLASK_APP=whoami.py \
#     -e WHOAMI=final \
#     --name final \
#     whoami

docker run --rm --label "traefik.enable=true" --label "traefik.http.routers.initial.rule=Host(\`subdomain.domain.com\`) && PathPrefix(\`/initial\`)" --label "traefik.http.services.initial.loadbalancer.server.port=5000" --label "traefik.http.middlewares.initialmiddleware.stripprefix.prefixes=/initial" --label "traefik.http.routers.initial.middlewares=initialmiddleware@docker" --network=traefik_testnet -d -e FLASK_APP=whoami.py -e WHOAMI=initial --name initial whoami