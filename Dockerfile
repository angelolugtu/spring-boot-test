FROM websphere-liberty:springBoot2
COPY --chown=1001:0 ./target/nrsa-atd.war /config/dropins/spring/