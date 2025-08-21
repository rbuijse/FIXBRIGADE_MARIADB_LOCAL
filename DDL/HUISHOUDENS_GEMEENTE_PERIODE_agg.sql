select gemeente
, count(periode) as count_periode_ingevuld
, max(periode) as laatst_beschikbare_periode
, count(fixteams) as count_teams_ingevuld
, count(huishoudens_fixed) as count_huishoudens_ingevuld
, count(betaalde_werknemers) as count_betaalde_werknemers_ingevuld
, count(vrijwilligers) as count_vrijwilligers_ingevuld
, max(fixteams) as max_teams
, sum(huishoudens_fixed) as sum_huishoudens
, max(huishoudens_fixed) as max_huishoudens
from FIXDB.HUISHOUDENS_GEMEENTE_PERIODE
group by gemeente
order by gemeente