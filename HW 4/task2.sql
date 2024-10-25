insert into petpet values
	("Hammy","Diane","hamster","M","2010-10-30",null);
    
INSERT INTO petEvent (petname,eventdate,eventtype,remark) VALUES
	("Fluffy", "2020-10-1","vet","antibiotics");
INSERT INTO petEvent (petname,eventdate,eventtype,remark) VALUES
	("Hammy","2020-10-15","vet","antibiotics");
INSERT INTO petEvent (petname,eventdate,eventtype,remark) VALUES
	("Fluffy","2023-07-20","litter","5 kittens 3 females 2 males");
update petevent set petname="Claws" where eventdate="1997-08-03";
update petpet set death= "2020-09-01" where petname = "puffball";
INSERT INTO petEvent (petname,eventdate,eventtype,remark) VALUES
	("puffball", "2020-09-01","death",null);
delete from petpet where owner = "Harold" and species= "dog";
