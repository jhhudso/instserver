-- Deploy meatPacker:cpus to pg
-- requires: cycle_units
-- requires: computers

BEGIN;

CREATE TABLE cpus (
    computer_id bigint REFERENCES computers,
    model text NOT NULL,
    cores int NOT NULL,
    threads_per_core int NOT NULL,
    speed bigint NOT NULL,
    speed_unit cycle_units NOT NULL
);

COMMIT;