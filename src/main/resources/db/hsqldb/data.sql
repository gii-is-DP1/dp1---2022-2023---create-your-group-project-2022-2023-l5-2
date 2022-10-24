-- One admin user, named admin1 with passwor 4dm1n and authority admin
INSERT INTO users(username,password,enabled) VALUES ('admin1','4dm1n',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (1,'admin1','admin');
-- One owner user, named owner1 with passwor 0wn3r
INSERT INTO users(username,password,enabled) VALUES ('owner1','0wn3r',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (2,'owner1','owner');
-- One vet user, named vet1 with passwor v3t
INSERT INTO users(username,password,enabled) VALUES ('vet1','v3t',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (3,'vet1','veterinarian');

INSERT INTO users(username, password, enabled) VALUES ('eletomvel','EleTomas2002', TRUE);
INSERT INTO authorities(id,username,authority) VALUES (4,'eletomvel','owner');

INSERT INTO users(username, password, enabled) VALUES ('tadcabgom','helloimapassword', TRUE);
INSERT INTO authorities(id,username,authority) VALUES (5,'tadcabgom','owner');

INSERT INTO users(username, password, enabled) VALUES ('igngongon2','owner', TRUE);
INSERT INTO authorities(id,username,authority) VALUES (6,'igngongon2','owner');

INSERT INTO users(username,password,enabled) VALUES ('Ignacio', 'password',TRUE);
INSERT INTO authorities(id,username,authority) VALUES(7 ,'Ignacio','owner');

INSERT INTO users(username,password,enabled) VALUES ('jessolort', 'jessolort',TRUE);
INSERT INTO authorities(id,username,authority) VALUES(8,'jessolort','owner');

INSERT INTO users(username,password,enabled) VALUES ('frarosram', 'contra5ena',TRUE);
INSERT INTO authorities(id,username,authority) VALUES(9,'frarosram','owner');

INSERT INTO vets(id, first_name,last_name) VALUES (1, 'James', 'Carter');
INSERT INTO vets(id, first_name,last_name) VALUES (2, 'Helen', 'Leary');
INSERT INTO vets(id, first_name,last_name) VALUES (3, 'Linda', 'Douglas');
INSERT INTO vets(id, first_name,last_name) VALUES (4, 'Rafael', 'Ortega');
INSERT INTO vets(id, first_name,last_name) VALUES (5, 'Henry', 'Stevens');
INSERT INTO vets(id, first_name,last_name) VALUES (6, 'Sharon', 'Jenkins');


INSERT INTO specialties VALUES (1, 'radiology');
INSERT INTO specialties VALUES (2, 'surgery');
INSERT INTO specialties VALUES (3, 'dentistry');

INSERT INTO vet_specialties VALUES (2, 1);
INSERT INTO vet_specialties VALUES (3, 2);
INSERT INTO vet_specialties VALUES (3, 3);
INSERT INTO vet_specialties VALUES (4, 2);
INSERT INTO vet_specialties VALUES (5, 1);

INSERT INTO types VALUES (1, 'cat');
INSERT INTO types VALUES (2, 'dog');
INSERT INTO types VALUES (3, 'lizard');
INSERT INTO types VALUES (4, 'snake');
INSERT INTO types VALUES (5, 'bird');
INSERT INTO types VALUES (6, 'hamster');
INSERT INTO types VALUES (7, 'turtle');

INSERT INTO owners VALUES (1, 'George', 'Franklin', '110 W. Liberty St.', 'Madison', '6085551023', 'owner1');
INSERT INTO owners VALUES (2, 'Betty', 'Davis', '638 Cardinal Ave.', 'Sun Prairie', '6085551749', 'owner1');
INSERT INTO owners VALUES (3, 'Eduardo', 'Rodriquez', '2693 Commerce St.', 'McFarland', '6085558763', 'owner1');
INSERT INTO owners VALUES (4, 'Harold', 'Davis', '563 Friendly St.', 'Windsor', '6085553198', 'owner1');
INSERT INTO owners VALUES (5, 'Peter', 'McTavish', '2387 S. Fair Way', 'Madison', '6085552765', 'owner1');
INSERT INTO owners VALUES (6, 'Jean', 'Coleman', '105 N. Lake St.', 'Monona', '6085552654', 'owner1');
INSERT INTO owners VALUES (7, 'Jeff', 'Black', '1450 Oak Blvd.', 'Monona', '6085555387', 'owner1');
INSERT INTO owners VALUES (8, 'Maria', 'Escobito', '345 Maple St.', 'Madison', '6085557683', 'owner1');
INSERT INTO owners VALUES (9, 'David', 'Schroeder', '2749 Blackhawk Trail', 'Madison', '6085559435', 'owner1');
INSERT INTO owners VALUES (10, 'Carlos', 'Estaban', '2335 Independence La.', 'Waunakee', '6085555487', 'owner1');
INSERT INTO owners VALUES (11, 'Elena', 'Tomas Vela', 'C. Virgen Santisima', 'Enorme sorpresa', '646987746', 'eletomvel');
INSERT INTO owners VALUES (12, 'Tadeo', 'Cabrera', 'C. Sierra Games', 'Ortera', '634865763', 'tadcabgom');
INSERT INTO owners VALUES (13, 'Ignacio', 'González', 'C. Peña Wena', 'Cefirot', '646578964', 'igngongon2');
INSERT INTO owners VALUES (14, 'Ignacio', 'Arroyo', 'Mercedes Benz', 'Bikini Bottom', '112', 'Ignacio');
INSERT INTO owners VALUES (15, 'Jesus', 'Solis Ortega', 'C. de la piruleta 28C', 'Pueblo Paleta', '666777888', 'jessolort');
INSERT INTO owners VALUES (16, 'Francisco', 'Rosso Ramírez', '888 Avenue St.', 'Tarkir', '123456789', 'frarosram');

INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (1, 'Leo', '2010-09-07', 1, 1);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (2, 'Basil', '2012-08-06', 6, 2);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (3, 'Rosy', '2011-04-17', 2, 3);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (4, 'Jewel', '2010-03-07', 2, 3);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (5, 'Iggy', '2010-11-30', 3, 4);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (6, 'George', '2010-01-20', 4, 5);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (7, 'Samantha', '2012-09-04', 1, 6);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (8, 'Max', '2012-09-04', 1, 6);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (9, 'Lucky', '2011-08-06', 5, 7);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (10, 'Mulligan', '2007-02-24', 2, 8);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (11, 'Freddy', '2010-03-09', 5, 9);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (12, 'Lucky', '2010-06-24', 2, 10);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (13, 'Sly', '2012-06-08', 1, 10);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (14, 'Cloti', '2005-02-10', 1, 11);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (15, 'India', '2014-08-08', 2, 12);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (16, 'Andhra', '2019-09-09', 2, 12);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (17, 'Scruffy', '2020-01-28', 2, 12);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (18, 'Haku', '2021-01-10', 2, 12);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (19, 'Enamorado', '2010-05-12', 2, 13);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (20, 'Rocinante','1605-08-12',5, 14);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (21, 'Ambrosio','2020-11-01',3, 16);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (22, 'Splinter','2000-06-15',7, 16);


INSERT INTO visits(id,pet_id,visit_date,description) VALUES (1, 7, '2013-01-01', 'rabies shot');
INSERT INTO visits(id,pet_id,visit_date,description) VALUES (2, 8, '2013-01-02', 'rabies shot');
INSERT INTO visits(id,pet_id,visit_date,description) VALUES (3, 8, '2013-01-03', 'neutered');
INSERT INTO visits(id,pet_id,visit_date,description) VALUES (4, 7, '2013-01-04', 'spayed');

INSERT INTO room_type(id, name) VALUES
    (1,'TRAP'), (2,'MONSTER'), (3,'ADVANCED_TRAP'), (4,'ADVANCED_MONSTER');

INSERT INTO room_passive_trigger(id, name) VALUES
    (1,'DESTROY_THIS_ROOM'),
    (2,'DESTROY_ANOTHER_ROOM'),
    (3,'HERO_DIES_IN_THIS_ROOM'),
    (4,'DAMAGE_HERO'),
    (5,'BUILD_THIS_ROOM'),
    (6,'NONE'),
    (7,'USE_SPELL_CARD'),
    (8,'BUILD_MONSTER_ROOM');


INSERT INTO rooms(id,name,card_image,room_type_id,treasure,damage,passive_trigger_id) VALUES
    (1, 'Bottomless Pit', 'd', 1, '0001', 1, 1),
    (2, 'The Crushinator', 'd', 2, '0001', 2, 2),
    (3, 'Vampire Bordello', 'd', 2, '0010', 3, 3),
    (4, 'Monster Ballroom', 'd', 4, '0100', 0, 2),
    (5, 'Boulder Ramp', 'd', 4, '0001', 1, 2),
    (6, 'Construction Zone', 'd', 3, '0101', 1, 2),
    (7, 'Dark Altar', 'd', 1, '0020', 1, 2);

INSERT INTO heroes(id, name, card_image, treasure, health, is_epic, necessary_players) VALUES 
    (1,     'Acacia,_Warrior_of_Light',             'resources\static\resources\images\Acacia,_Warrior_of_Light.jpg',           'cleric', 6 , false, 2),
    (2,     'Antonius,_the_Rune_Knight',            'resources\static\resources\images\Antonius,_the_Rune_Knight.jpg',          'fighter', 13 , true, 2),
    (3,     'Asmor_the_Aweless',                    'resources\static\resources\images\Asmor_the_Aweless.jpg',                  'fighter', 13 , true, 4),
    (4,     'Blackbeard_Jake',                      'resources\static\resources\images\Blackbeard_Jake.jpg',                    'thief', 11 , true, 3),
    (5,     'Boden_the_Pantless' ,                  'resources\static\resources\images\Boden_the_Pantless.jpg',                 'fighter', 4 , false, 2),
    (6,     'Brandork_the_Neverwrong' ,             'resources\static\resources\images\Brandork_the_Neverwrong.jpg',            'mage', 4 , false, 4),
    (7,     'Cecil_Leoran,_Master_Factotum' ,       'resources\static\resources\images\Cecil_Leoran,_Master_Factotum.jpg',      'thief', 13 , true, 2),
    (8,     'Charles_the_Young' ,                   'resources\static\resources\images\Charles_the_Young.jpg',                  'cleric', 6 , false, 3),
    (9,     'Chia_Kang,_Mystical_Warlock_of_Yu' ,   'resources\static\resources\images\Chia_Kang,_Mystical_Warlock_of_Yu.jpg',  'mage', 11 , true, 3),
    (10,    'Crystol_and_A`lan_of_Gerd' ,           'resources\static\resources\images\Crystol_and_A%27lan_of_Gerd.jpg',        'fighter', 8 , false, 4),
    (11,    'Dartteon,_Elf_Pyromancer' ,            'resources\static\resources\images\Dartteon,_Elf_Pyromancer.jpg',           'mage', 8 , false, 2),
    (12,    'Delatorious,_Angel_of_Light' ,         'resources\static\resources\images\Delatorious,_Angel_of_Light.jpg',        'cleric', 8 , false, 2),
    (13,    'Fire%27s_Breath,_Heroine_of_Arcadia' , 'resources\static\resources\images\Fire%27s_Breath,_Heroine_of_Arcadia.jpg','fighter', 6 , false, 2),
    (14,    'Frankov,_the_Envoy' ,                  'resources\static\resources\images\Frankov,_the_Envoy.jpg',                 'fighter', 11 , true, 2),
    (15,    'Hya,_Legendary_Shinobi' ,              'resources\static\resources\images\Hya,_Legendary_Shinobi.jpg',             'thief', 11 , true, 2),
    (16,    'Jarek,_Squire_to_the_Lion_Knights' ,   'resources\static\resources\images\Jarek,_Squire_to_the_Lion_Knights.jpg',  'fighter', 4 , false, 4),
    (17,    'Jejune_%26_Everlea,_Holy_Sisters' ,    'resources\static\resources\images\Jejune_%26_Everlea,_Holy_Sisters.jpg',   'cleric', 13, true, 4),
    (18,    'Jerome,_Kung_Fu_Monkey' ,              'resources\static\resources\images\Jerome,_Kung_Fu_Monkey.jpg',             'thief', 8 , false, 4),
    (19,    'Jesta_the_Rogue' ,                     'resources\static\resources\images\Jesta_the_Rogue.jpg',                    'thief', 8 , false, 4),
    (20,    'Johnny_of_the_Evening_Watch' ,         'resources\static\resources\images\Johnny_of_the_Evening_Watch.jpg',        'fighter', 8 , false, 2),
    (21,    'Joman_Chimm,_Cutpurse' ,               'resources\static\resources\images\Joman_Chimm,_Cutpurse.jpg',              'thief', 4, false, 2),
    (22,    'Kalish_Ninefingers' ,                  'resources\static\resources\images\Kalish_Ninefingers.jpg',                 'mage', 6, false, 3),
    (23,    'Katelyn,_Angelic_Healer' ,             'resources\static\resources\images\Katelyn,_Angelic_Healer.jpg',            'cleric', 11, true, 2),
    (24,    'Kerberos_Dirtbeard,_Canine_Cleric' ,   'resources\static\resources\images\Kerberos_Dirtbeard,_Canine_Cleric.jpg',  'cleric', 11, true, 3),
    (25,    'Kins_Klauski,_Mad_Conquistador' ,      'resources\static\resources\images\Kins_Klauski,_Mad_Conquistador.jpg',     'thief', 6, false, 3),
    (26,    'Koey,_the_Last_Dragon_Mage' ,          'resources\static\resources\images\Koey,_the_Last_Dragon_Mage.jpg',         'mage', 8, false, 4),
    (27,    'Lance_Uppercut,_Treasure_Hunter' ,     'resources\static\resources\images\Lance_Uppercut,_Treasure_Hunter.jpg',    'thief', 4, false, 4),
    (28,    'Lord_Van_Ette' ,                       'resources\static\resources\images\Lord_Van_Ette.jpg',                      'cleric', 13, true, 2),
    (29,    'Mitchell,_the_Judge' ,                 'resources\static\resources\images\Mitchell,_the_Judge.jpg',                'mage', 6, false, 2),
    (30,    'Nate_the_Squidslayer' ,                'resources\static\resources\images\Nate_the_Squidslayer.jpg',               'fighter', 11, true, 3),
    (31,    'Nick_the_Masher' ,                     'resources\static\resources\images\Nick_the_Masher.jpg',                    'cleric', 4, false, 2),
    (32,    'Pugi_the_Druidess' ,                   'resources\static\resources\images\Pugi_the_Druidess.jpg',                  'cleric', 4, false, 4),
    (33,    'Romero,_the_Indigo_Friar' ,            'resources\static\resources\images\Romero,_the_Indigo_Friar.jpg',           'cleric', 8, false, 4),
    (34,    'Samurai_Tom' ,                         'resources\static\resources\images\Samurai_Tom.jpg',                        'fighter', 6, false, 3),
    (35,    'Sir_Digby_Apple,_Ace_Detective' ,      'resources\static\resources\images\Sir_Digby_Apple,_Ace_Detective.jpg',     'thief', 8, false, 2),
    (36,    'Tempros_the_Time_Marauder',            'resources\static\resources\images\Tempros_the_Time_Marauder.jpg',          'mage', 11, true, 2),
    (37,    'Terric_Warhelm,_Half-Elf_Archmage',    'resources\static\resources\images\Terric_Warhelm,_Half-Elf_Archmage.jpg',  'mage', 13, true, 2),
    (38,    'The_Fool' ,                            'resources\static\resources\images\The_Fool.jpg',                           'fool', 2, false, 2),
    (39,    'Tieg_and_the_Magic_Bubble',            'resources\static\resources\images\Tieg_and_the_Magic_Bubble.jpg',          'mage', 4, false, 2),
    (40,    'Wallbanger_Basketweaver',              'resources\static\resources\images\Wallbanger_Basketweaver.jpg',            'thief', 13, true, 4),
    (41,    'Wayward,_the_Drifter',                 'resources\static\resources\images\Wayward,_the_Drifter.jpg',               'mage', 13, true, 4);





    