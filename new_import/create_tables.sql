select *
from hisb_import.vz_1850
limit 10;

ALTER TABLE hisb_import.vz_1850 ADD PRIMARY KEY (id_nr);

select beruf_gewerbe, count(*) as num
from hisb_import.vz_1850
group by beruf_gewerbe
--order by beruf_gewerbe;
order by num desc;




/*
 * VZ 1860
 */



select *
from hisb_import.vz_1860
limit 10;

ALTER TABLE hisb_import.vz_1860 ADD PRIMARY KEY (id_nr);

select beruf_gewerbe, count(*) as num
from hisb_import.vz_1860
group by beruf_gewerbe
--order by beruf_gewerbe;
order by num desc;



/*
 * Kranken- und Pfründenregister
 */



select *
from hisb_import.patientenregister
limit 50;

select jahr, woche, spit_nr, pfr_erst_eintritt_datum_jahr, abteilung
from hisb_import.patientenregister
order by jahr desc
limit 50;


/*
 * Jede Zeile ist ein Eintritt oder Austritt 
 * 
 * kpr_nr: beim erstenn Eintritt und Austritt
 * 
 * 
 */

--ALTER TABLE hisb_import.patientenregister ADD PRIMARY KEY (kpr_nr);

select abteilung, count(*) as num
from hisb_import.patientenregister
group by abteilung
--order by beruf_gewerbe;
order by num desc;




