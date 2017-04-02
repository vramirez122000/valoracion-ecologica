drop table if exists poli_services;

create table poli_services (
  gid int, landuse text, services int[]
);

with tmp as (select
1 gid,'wetland' landuse, '{13,15,16,21,27,29,30,42,43,47}'::int[] services
union select 2,'residential','{43}'
union select 3,'grass','{43}'
union select 4,'wood','{13,15,47}'
union select 5,'residential','{43}'
union select 6,'wetland','{13,15,16,21,27,29,30,42,43,47}'
union select 7,'wood','{13,15,16,21,27,29,30,42,43,47}'
union select 8,'scrub','{13,15,22,29,39,42,43,60}'
union select 9,'commercial', null
union select 10,'scrub','{13,15,47}'
union select 11,'residential','{43}'
union select 12,'residential','{43}'
union select 13,'beach','{2,8,61,63,64,7}'
union select 14,'residential','{43}'
union select 15,'scrub','{20,21,27,30,43}'
union select 16,'golf_course','{43}'
union select 17,'grassland','{11,12,13,15,20,21,22,25,27,30,38,40,41,45,50,58}'
union select 18,'scrub','{13,15,22,29,39,42,43,60}'
union select 19,'scrub','{11,12,13,15,20,21,22,25,27,30,38,40}'
union select 20,'scrub','{11,20,43}'
union select 21,'residential','{43}'
union select 22,'scrub','{11,20,43}'
union select 23,'beach','{2,8,61,63,64,7}'
union select 24,'reef','{1,2,3,7,9,10,17,14,24,26,32,35,36,44,48,49,51,52,54,62,63}'
union select 25,'grassland','{11,12,13,15,20,21,22,25,27,30,38,40,41,45,50,58}'
union select 26,'wood','{13,15,16,21,27,29,30,42,43,47}'
union select 27,'residential','{43}'
union select 28,'wood','{13,15,22,29,39,42,47,59,25,16,27}'
union select 29,'scrub','{13,15,22,29,39,42,43,60}'
union select 30,'reef','{1,2,3,7,9,10,17,14,24,26,32,35,36,44,48,49,51,52,54,62,63}'
union select 31,'wood','{13,15,22,29,39,42,47,59,25,16,27}'
union select 32,'wood','{13,15,47}'
union select 33,'beach','{2,8,61,63,64,7}'
union select 34,'wood','{13,15,16,22,29,39,42,45,47}'
union select 35,'scrub','{13,15,21,22,25,39,40,42,46,59}'
union select 36,'residential','{43}'
union select 37,'reef','{1,2,3,7,9,10,17,14,24,26,32,35,36,44,48,49,51,52,54,62,63}'
union select 38,'scrub','{11,12,13,15,20,21,22,25,27,30,38,40}'
union select 39,'wetland',null
union select 40,'rock','{55,61,26}'
union select 41,'beach','{2,8,61,63,64,7}'
union select 42,'farmland','{18,19,29,31}'
union select 43,'wood','{13,15,47}'
union select 44,'scrub','{13,15,22,29,39,42,43,60}'
union select 45,'wood','{13,15,22,29,39,42,47,59,25,16,27}'
union select 46,'wood','{13,15,16,21,27,29,30,42,43,47}'
union select 47,'scrub','{13,15,47,22}'
union select 48,'rock','{13,15,22,29,39,42,47,59,25,16,27,61}'
union select 49,'grass','{20,21,27,30,43}'
union select 50,'residential',null
union select 51,'residential','{43}'
union select 52,'residential','{43}'
union select 53,'beach','{2,8,61,63,64,7}'
union select 54,'scrub','{13,15,21,22,25,39,40,42,46,59}'
union select 55,'wetland','{13,15,47}'
union select 56,'wood','{13,15,16,21,27,29,30,42,43,47}'
union select 57,'wood','{13,15,47}'
union select 58,'beach','{2,8,61,63,64,7}'
union select 59,'beach','{2,8,61,63,64,7}'
union select 60,'grass','{43}'
             ) insert into poli_services(gid, landuse, services) select gid, landuse, services from tmp;


