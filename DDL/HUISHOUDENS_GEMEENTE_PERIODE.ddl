-- FIXDB.HUISHOUDENS_GEMEENTE_PERIODE source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `HUISHOUDENS_GEMEENTE_PERIODE` AS
select
    '2025_Q2' AS `PERIODE`,
    `vq1`.`GEMEENTE` AS `gemeente`,
    `vq1`.`FIXTEAMS` AS `fixteams`,
    `vq1`.`HUISHOUDENS_FIXED` AS `huishoudens_fixed`,
    `vq1`.`BETAALDE_WERKNEMERS` AS `betaalde_werknemers`,
    `vq1`.`VRIJWILLIGERS` AS `vrijwilligers`
from
    `VRAGENLIJST_2025_Q2` `vq1`
union
select
    '2025_Q1' AS `PERIODE`,
    `vq2`.`GEMEENTE` AS `gemeente`,
    `vq2`.`FIXTEAMS` AS `fixteams`,
    `vq2`.`HUISHOUDENS_FIXED` AS `huishoudens_fixed`,
    `vq2`.`BETAALDE_WERKNEMERS` AS `betaalde_werknemers`,
    `vq2`.`VRIJWILLIGERS` AS `vrijwilligers`
from
    `VRAGENLIJST_2025_Q1` `vq2`
union
select
    '2024_Q4' AS `PERIODE`,
    `vq3`.`GEMEENTE` AS `gemeente`,
    `vq3`.`FIXTEAMS` AS `fixteams`,
    `vq3`.`HUISHOUDENS_FIXED` AS `huishoudens_fixed`,
    `vq3`.`BETAALDE_WERKNEMERS` AS `betaalde_werknemers`,
    `vq3`.`VRIJWILLIGERS` AS `vrijwilligers`
from
    `VRAGENLIJST_2024_Q4` `vq3`
union
select
    '2024_Q3' AS `PERIODE`,
    `vq4`.`GEMEENTE` AS `gemeente`,
    `vq4`.`FIXTEAMS` AS `fixteams`,
    `vq4`.`HUISHOUDENS_FIXED` AS `huishoudens_fixed`,
    `vq4`.`BETAALDE_WERKNEMERS` AS `betaalde_werknemers`,
    `vq4`.`VRIJWILLIGERS` AS `vrijwilligers`
from
    `VRAGENLIJST_2024_Q3` `vq4`
union
select
    '2024_Q2' AS `PERIODE`,
    `vq5`.`GEMEENTE` AS `gemeente`,
    `vq5`.`FIXTEAMS` AS `fixteams`,
    `vq5`.`HUISHOUDENS_FIXED` AS `huishoudens_fixed`,
    `vq5`.`BETAALDE_WERKNEMERS` AS `betaalde_werknemers`,
    `vq5`.`VRIJWILLIGERS` AS `vrijwilligers`
from
    `VRAGENLIJST_2024_Q2` `vq5`
union
select
    '2024_Q1' AS `PERIODE`,
    `vq6`.`GEMEENTE` AS `gemeente`,
    `vq6`.`FIXTEAMS` AS `fixteams`,
    `vq6`.`HUISHOUDENS_FIXED` AS `huishoudens_fixed`,
    `vq6`.`BETAALDE_WERKNEMERS` AS `betaalde_werknemers`,
    `vq6`.`VRIJWILLIGERS` AS `vrijwilligers`
from
    `VRAGENLIJST_2024_Q1` `vq6`
union
select
    '2023' AS `PERIODE`,
    `vq7`.`GEMEENTE` AS `gemeente`,
    `vq7`.`FIXTEAMS` AS `fixteams`,
    `vq7`.`HUISHOUDENS_FIXED` AS `huishoudens_fixed`,
    `vq7`.`BETAALDE_WERKNEMERS` AS `betaalde_werknemers`,
    `vq7`.`VRIJWILLIGERS` AS `vrijwilligers`
from
    `VRAGENLIJST_2023` `vq7`
union
select
    '2022' AS `PERIODE`,
    `vq8`.`GEMEENTE` AS `gemeente`,
    `vq8`.`FIXTEAMS` AS `fixteams`,
    `vq8`.`HUISHOUDENS_FIXED` AS `huishoudens_fixed`,
    `vq8`.`BETAALDE_WERKNEMERS` AS `betaalde_werknemers`,
    `vq8`.`VRIJWILLIGERS` AS `vrijwilligers`
from
    `VRAGENLIJST_2022` `vq8`;
