CREATE TABLE IF NOT EXISTS character (
    character_id serial NOT NULL,
    character_name varchar(60) NOT NULL,
    
    CONSTRAINT pk_character PRIMARY KEY (character_id)
);

CREATE TABLE IF NOT EXISTS moves (
   move_id serial NOT NULL,
   move_input varchar(20) NOT NULL,
   move_name varchar (60) NOT NULL,
   
   CONSTRAINT pk_move PRIMARY KEY (move_id)
);

CREATE TABLE IF NOT EXISTS character_move (
   character_move_id serial NOT NULL,
   move_id int NOT NULL,
   character_id int NOT NULL,
   startup_frames varchar(15) NULL,
   block_frames varchar(15) NULL,
   
   CONSTRAINT pk_character_move PRIMARY KEY (character_move_id),
   CONSTRAINT fk_move FOREIGN KEY (move_id) REFERENCES moves(move_id),
   CONSTRAINT fk_character FOREIGN KEY (character_id) REFERENCES character(character_id)
);
INSERT INTO character (character_name)
   VALUES ('Sol Badguy');
INSERT INTO character (character_name)
   VALUES ('Ky Kiske');
INSERT INTO character (character_name)
   VALUES ('Axl Low');
INSERT INTO character (character_name)
   VALUES ('Chipp Zanuff');
INSERT INTO character (character_name)
   VALUES ('Faust');
INSERT INTO character (character_name)
   VALUES ('May');
INSERT INTO character (character_name)
   VALUES ('Millia Rage');
INSERT INTO character (character_name)
   VALUES ('Potemkin');
INSERT INTO character (character_name)
   VALUES ('Zato-1');
INSERT INTO character (character_name)
   VALUES ('Anji Mito');
INSERT INTO character (character_name)
   VALUES ('I-No');
INSERT INTO character (character_name)
   VALUES ('Leo Whitefang');
INSERT INTO character (character_name)
   VALUES ('Ramlethal Valentine');
INSERT INTO character (character_name)
   VALUES ('Giovanna');
INSERT INTO character (character_name)
   VALUES ('Goldlewis Dickinson');
INSERT INTO character (character_name)
   VALUES ('Nagoriyuki');
INSERT INTO moves (move_input, move_name)
   VALUES ('5P', '5P');
INSERT INTO moves (move_input, move_name)
   VALUES('5K', '5K');
INSERT INTO moves (move_input, move_name)
   VALUES ('c.S', 'Close Slash');
INSERT INTO moves (move_input, move_name)
   VALUES('f.S', 'Far Slash');
INSERT INTO moves (move_input, move_name)
   VALUES('5H', '5H');
INSERT INTO moves (move_input, move_name)
   VALUES('5D', 'Dust');
INSERT INTO moves (move_input, move_name)
   VALUES('6P', '6P');
INSERT INTO moves (move_input, move_name)
   VALUES('6K', '6K');
INSERT INTO moves (move_input, move_name)
   VALUES('6S', '6S');
INSERT INTO moves (move_input, move_name)
   VALUES('6H', '6H');
INSERT INTO moves (move_input, move_name)
   VALUES('2P', '2P');
INSERT INTO moves (move_input, move_name)
   VALUES('2K', '2K');
INSERT INTO moves (move_input, move_name)
   VALUES('3K', '3K');
INSERT INTO moves (move_input, move_name)
   VALUES('2S', '2S');
INSERT INTO moves (move_input, move_name)
   VALUES('2H', '2H');
INSERT INTO moves (move_input, move_name)
   VALUES('2D', '2D');
INSERT INTO moves (move_input, move_name)
   VALUES('j.P', 'Jumping Punch');
INSERT INTO moves (move_input, move_name)
   VALUES('j.K', 'Jumping Kick');
INSERT INTO moves (move_input, move_name)
   VALUES('j.S', 'Jumping Slash');
INSERT INTO moves (move_input, move_name)
   VALUES('j.H', 'Jumping Heavy Slash');
INSERT INTO moves (move_input, move_name)
   VALUES('j.D', 'Jumping Dust');
INSERT INTO moves (move_input, move_name)
   VALUES('6D', 'Forward Ground Throw');
INSERT INTO moves (move_input, move_name)
   VALUES('4D', 'Back Ground Throw');
INSERT INTO moves (move_input, move_name)
   VALUES('j.6D', 'Forward Air Throw');
INSERT INTO moves (move_input, move_name)
   VALUES('j.4D', 'Back Air Throw');
INSERT INTO moves (move_input, move_name)
   VALUES('236P', 'Gun Flame');
INSERT INTO moves (move_input, move_name)
   VALUES('214P', 'Gun Flame (Feint)');
INSERT INTO moves (move_input, move_name)
   VALUES('623S', 'Slash Volcanic Viper');
INSERT INTO moves (move_input, move_name)
   VALUES('623H', 'Heavy Volcanic Viper');
INSERT INTO moves (move_input, move_name)
   VALUES('236K', 'Bandit Revolver');
INSERT INTO moves (move_input, move_name)
   VALUES ('j.236K', 'Aerial Bandit Revolver');
INSERT INTO moves (move_input, move_name)
   VALUES('214K', 'Bandit Bringer');
INSERT INTO moves (move_input, move_name)
   VALUES ('j.214K', 'Aerial Bandit Bringer');
INSERT INTO moves (move_input, move_name)
   VALUES('623K', 'Wild Throw');
INSERT INTO moves (move_input, move_name)
   VALUES('214S', 'Night Raid Vortex');
INSERT INTO moves (move_input, move_name)
   VALUES('41236H', 'Fafnir');
INSERT INTO moves (move_input, move_name)
   VALUES('632146H', 'Tyrant Rave');
INSERT INTO moves (move_input, move_name)
   VALUES('214214H', 'Heavy Mob Cemetary');
INSERT INTO moves (move_input, move_name)
   VALUES('236S', 'Stun Edge');
INSERT INTO moves (move_input, move_name)
   VALUES('236H', 'Charged Stun Edge');
INSERT INTO moves (move_input, move_name)
   VALUES('j.236S', 'Aerial Stun Edge');
INSERT INTO moves (move_input, move_name)
   VALUES('j.236H', 'Aerial Charged Stun Edge');
INSERT INTO moves (move_input, move_name)
   VALUES('236K', 'Stun Dipper');
INSERT INTO moves (move_input, move_name)
   VALUES('214K', 'Foudre Arc');
INSERT INTO moves (move_input, move_name)
   VALUES('623S', 'Slash Vapor Thrust');
INSERT INTO moves (move_input, move_name)
   VALUES('623H', 'Heavy Vapor Thrust');
INSERT INTO moves (move_input, move_name)
   VALUES('214S', 'Dire Eclat');
INSERT INTO moves (move_input, move_name)
   VALUES('632146H', 'Ride The Lightning');
INSERT INTO moves (move_input, move_name)
   VALUES('236236P', 'Sacred Edge');
INSERT INTO moves (move_input, move_name)
   VALUES('214214H', 'Dragon Install');
INSERT INTO moves (move_input, move_name)
   VALUES('[4]6S', 'Sickle Flash');
INSERT INTO moves (move_input, move_name)
   VALUES('[4]6S, 8', 'Soaring Chain Strike');
INSERT INTO moves (move_input, move_name)
   VALUES('[4]6S, 2', 'Spinning Chain Strike');
INSERT INTO moves (move_input, move_name)
   VALUES('[4]6S, S', 'Winter Cherry');
INSERT INTO moves (move_input, move_name)
   VALUES('412236H', 'Winter Mantis');
INSERT INTO moves (move_input, move_name)
   VALUES('214S', 'Rainwater');
INSERT INTO moves (move_input, move_name)
   VALUES('214H', 'Snail');
INSERT INTO moves (move_input, move_name)
   VALUES('j.214H', 'Air Snail');
INSERT INTO moves (move_input, move_name)
   VALUES('j.623H', 'Axl Bomber');
INSERT INTO moves (move_input, move_name)
   VALUES('236236H', 'Sickle Storm');
INSERT INTO moves (move_input, move_name)
   VALUES('632146P', 'One Vision');
INSERT INTO moves (move_input, move_name)
   VALUES('j.2K', 'j.2K');
INSERT INTO moves (move_input, move_name)
   VALUES('236P', 'Alpha Blade Horizontal');
INSERT INTO moves (move_input, move_name)
   VALUES('236K', 'Alpha Blade Diagonal');
INSERT INTO moves (move_input, move_name)
   VALUES('623S', 'Beta Blade');
INSERT INTO moves (move_input, move_name)
   VALUES('236H', 'Gamma Blade');
INSERT INTO moves (move_input, move_name)
   VALUES('236S', 'Resshou');
INSERT INTO moves (move_input, move_name)
   VALUES('236S, 236S', 'Rokusai');
INSERT INTO moves (move_input, move_name)
   VALUES('236S, 236K', 'Senshuu');
INSERT INTO moves (move_input, move_name)
   VALUES('236S, 236S, 236K', 'Senshuu');
INSERT INTO moves (move_input, move_name)
   VALUES('63214S', 'Genrou Zan');
INSERT INTO moves (move_input, move_name)
   VALUES('j.214P', 'Shuriken');
INSERT INTO moves (move_input, move_name)
   VALUES('632146H', 'Zansei Rouga');
INSERT INTO moves (move_input, move_name)
   VALUES('236236K', 'Banki Messai');
INSERT INTO moves (move_input, move_name)
   VALUES('41236K', 'Thrust');
INSERT INTO moves (move_input, move_name)
   VALUES('236P', 'What Could This Be?');
INSERT INTO moves (move_input, move_name)
   VALUES('236S', 'Mix Mix Mix');
INSERT INTO moves (move_input, move_name)
   VALUES('236H', 'Snip Snip Snip');
INSERT INTO moves (move_input, move_name)
   VALUES('j.236P', 'Love');
INSERT INTO moves (move_input, move_name)
   VALUES('214P', 'Behind Scarecrow');
INSERT INTO moves (move_input, move_name)
   VALUES('214K', 'Front Scarecrow');
INSERT INTO moves (move_input, move_name)
   VALUES('214S', 'Up Scarecrow');
INSERT INTO moves (move_input, move_name)
   VALUES('632146H', 'Bone-crushing Excitement');
INSERT INTO moves (move_input, move_name)
   VALUES('236236P', 'W-W-What Could This Be?');
INSERT INTO moves (move_input, move_name)
   VALUES('236236236P', 'W-W-W-W-W-W-W-W-W-What Could This Be?');
INSERT INTO moves (move_input, move_name)
   VALUES('j.2H', 'j.2H');
INSERT INTO moves (move_input, move_name)
   VALUES('[4]6S', 'Slash Mr.Dolphin Horizontal');
INSERT INTO moves (move_input, move_name)
   VALUES('[4]6H', 'Heavy Mr.Dolphin Horizontal');
INSERT INTO moves (move_input, move_name)
   VALUES('[2]8S', 'Slash Mr.Dolphin Vertical');
INSERT INTO moves (move_input, move_name)
   VALUES('[2]8H', 'Heavy Mr.Dolphin Vertical');
INSERT INTO moves (move_input, move_name)
   VALUES('623K', 'Overhead Kiss');
INSERT INTO moves (move_input, move_name)
   VALUES('214P', 'Arisugawa Sparkle');
INSERT INTO moves (move_input, move_name)
   VALUES('214K', 'Arisugawa Sparkle');
INSERT INTO moves (move_input, move_name)
   VALUES('236236S', 'Great Yamada Attack');
INSERT INTO moves (move_input, move_name)
   VALUES('632146H', 'The Wonderful and Dynamic Goshogawara');
INSERT INTO moves (move_input, move_name)
   VALUES('236S', 'Slash Tandem Top');
INSERT INTO moves (move_input, move_name)
   VALUES('236H', 'Heavy Tandem Top');
INSERT INTO moves (move_input, move_name)
   VALUES('j.236P', 'Bad Moon');
INSERT INTO moves (move_input, move_name)
   VALUES('j.236K', 'Turbo Fall');
INSERT INTO moves (move_input, move_name)
   VALUES('214P', 'Iron Savior');
INSERT INTO moves (move_input, move_name)
   VALUES('214S', 'Lust Shaker');
INSERT INTO moves (move_input, move_name)
   VALUES('214K', 'Mirazh');
INSERT INTO moves (move_input, move_name)
   VALUES('j.236H', 'Kapel');
INSERT INTO moves (move_input, move_name)
   VALUES('632146H', 'Winger');
INSERT INTO moves (move_input, move_name)
   VALUES('236236S', 'Septem Voices');
INSERT INTO moves (move_input, move_name)
   VALUES('632146P', 'Potemkin Buster');
INSERT INTO moves (move_input, move_name)
   VALUES('623H', 'Heat Knuckle');
INSERT INTO moves (move_input, move_name)
   VALUES('236P', 'Forward Mega Fist');
INSERT INTO moves (move_input, move_name)
   VALUES('214P', 'Back Mega Fist');
INSERT INTO moves (move_input, move_name)
   VALUES('236S', 'Slide Head');
INSERT INTO moves (move_input, move_name)
   VALUES('[4]6H', 'Hammer Fall');
INSERT INTO moves (move_input, move_name)
   VALUES('63214S', 'F.D.B');
INSERT INTO moves (move_input, move_name)
   VALUES('214H', 'Garuda Impact');
INSERT INTO moves (move_input, move_name)
   VALUES('236236S', 'Heavenly Potemkin Buster');
INSERT INTO moves (move_input, move_name)
   VALUES('632146H', 'Giganter Kai');
INSERT INTO moves (move_input, move_name)
   VALUES('214H', 'Summon Eddie');
INSERT INTO moves (move_input, move_name)
   VALUES('236P', '\"Pierce\"');
INSERT INTO moves (move_input, move_name)
   VALUES(']P[', '\"Pierce\"');
INSERT INTO moves (move_input, move_name)
   VALUES('236K', '\"That''s a lot\"');
INSERT INTO moves (move_input, move_name)
   VALUES(']K[', '\"That''s a lot\"');
INSERT INTO moves (move_input, move_name)
   VALUES('236S', '\"Leap\"');
INSERT INTO moves (move_input, move_name)
   VALUES(']S[', '\"Leap\"');
INSERT INTO moves (move_input, move_name)
   VALUES('236H', '\"Oppose\"');
INSERT INTO moves (move_input, move_name)
   VALUES(']H[', '\"Oppose\"');
INSERT INTO moves (move_input, move_name)
   VALUES('22H', 'Invite Hell');
INSERT INTO moves (move_input, move_name)
   VALUES('214[K]', 'Break The Law');
INSERT INTO moves (move_input, move_name)
   VALUES('623S', 'Damned Fang');
INSERT INTO moves (move_input, move_name)
   VALUES('214S', 'Drunkard Shade');
INSERT INTO moves (move_input, move_name)
   VALUES('632146H', 'Amorphous');
INSERT INTO moves (move_input, move_name)
   VALUES('632146S', 'Sun Void');
INSERT INTO moves (move_input, move_name)
   VALUES('236P', 'Shitsu');
INSERT INTO moves (move_input, move_name)
   VALUES('236K', 'Suigetsu No Hakobi');
INSERT INTO moves (move_input, move_name)
   VALUES('236H', 'Fuujin');
INSERT INTO moves (move_input, move_name)
   VALUES('236H, P', 'Shin: Ichishiki');
INSERT INTO moves (move_input, move_name)
   VALUES('236H, K', 'Issokutobi');
INSERT INTO moves (move_input, move_name)
   VALUES('236H', 'Nagiha');
INSERT INTO moves (move_input, move_name)
   VALUES('236H, H', 'Rin');
INSERT INTO moves (move_input, move_name)
   VALUES('236S', 'Kou');
INSERT INTO moves (move_input, move_name)
   VALUES('632146H', 'Issei Ougi: Sai');
INSERT INTO moves (move_input, move_name)
   VALUES('632146S', 'Kachoufuugetsu Kai');
INSERT INTO moves (move_input, move_name)
   VALUES('214P', 'Antidepressant Scale');
INSERT INTO moves (move_input, move_name)
   VALUES('j.214P', 'Aerial Antidepressant Scale');
INSERT INTO moves (move_input, move_name)
   VALUES('236S', 'Slash Stroke the Big Tree');
INSERT INTO moves (move_input, move_name)
   VALUES('236H', 'Heavy Stroke the Big Tree');
INSERT INTO moves (move_input, move_name)
   VALUES('j.236K', 'K Sultry Performance');
INSERT INTO moves (move_input, move_name)
   VALUES('j.236S', 'S Sultry Performance');   
 INSERT INTO moves (move_input, move_name)
   VALUES('j.236H', 'H Sultry Performance');
INSERT INTO moves (move_input, move_name)
   VALUES('214K', 'Chemical Love');
INSERT INTO moves (move_input, move_name)
   VALUES('632146H', 'Megalomania');
INSERT INTO moves (move_input, move_name)
   VALUES('632146S', 'Ultimate Fortissimo');
INSERT INTO moves (move_input, move_name)
   VALUES('[H]S', 'Guard Stance');
INSERT INTO moves (move_input, move_name)
   VALUES('[S]H', 'Guard Stance');
INSERT INTO moves (move_input, move_name)
   VALUES('[4]6S', 'Slash Gravierte Wurde');
INSERT INTO moves (move_input, move_name)
   VALUES('[4]6H', 'Heavy Gravierte Wurde');
INSERT INTO moves (move_input, move_name)
   VALUES('[2]8S', 'Slash Eisensturm');
INSERT INTO moves (move_input, move_name)
   VALUES('[2]8H', 'Heavy Eisensturm');
INSERT INTO moves (move_input, move_name)
   VALUES('236S', 'Erstes Kaltes Gestober');
INSERT INTO moves (move_input, move_name)
   VALUES('236H', 'Zweites Kaltes Gestober');
INSERT INTO moves (move_input, move_name)
   VALUES('214S', 'Turbulenz');
INSERT INTO moves (move_input, move_name)
   VALUES('bt.P', 'Brynhildr Stance --> P');
INSERT INTO moves (move_input, move_name)
   VALUES('bt.K', 'Brynhildr Stance --> K');
INSERT INTO moves (move_input, move_name)
   VALUES('bt.S', 'Brynhildr Stance --> S');
INSERT INTO moves (move_input, move_name)
   VALUES('bt.H', 'Brynhildr Stance --> H');
INSERT INTO moves (move_input, move_name)
   VALUES('bt.D', 'Kahn Schild');
INSERT INTO moves (move_input, move_name)
   VALUES('bt.214K', 'Glanzendes Dunkel');
INSERT INTO moves (move_input, move_name)
   VALUES('bt.214H', 'Blitzschlag');
INSERT INTO moves (move_input, move_name)
   VALUES('bt.22', 'Cancel');
INSERT INTO moves (move_input, move_name)
   VALUES('bt.632146S', 'Stalwirbel');
INSERT INTO moves (move_input, move_name)
   VALUES('632146H', 'Leidenschaft des Dirigenten');
INSERT INTO moves (move_input, move_name)
   VALUES('623P', 'Dauro');
INSERT INTO moves (move_input, move_name)
   VALUES('214P', 'Erarlumo');
INSERT INTO moves (move_input, move_name)
   VALUES('214P, 214P', 'Erarlumo (2nd Hit)');
INSERT INTO moves (move_input, move_name)
   VALUES('214P, 214P, 214P', 'Erarlumo (3rd Hit)');
INSERT INTO moves (move_input, move_name)
   VALUES('214K', 'Sildo Detruo');
INSERT INTO moves (move_input, move_name)
   VALUES('j.214K', 'Aerial Sildo Detruo');
INSERT INTO moves (move_input, move_name)
   VALUES('236S', 'Slash Bajoneto');
INSERT INTO moves (move_input, move_name)
   VALUES('236H', 'Heavy Bajoneto');
INSERT INTO moves (move_input, move_name)
   VALUES('j.214S', 'Agresa Ordono');
INSERT INTO moves (move_input, move_name)
   VALUES('214H', 'Sabrobato');
INSERT INTO moves (move_input, move_name)
   VALUES('632146H', 'Calvados');
INSERT INTO moves (move_input, move_name)
   VALUES('236236S', 'Mortobato');
INSERT INTO moves (move_input, move_name)
   VALUES('6HH', '6HH');
INSERT INTO moves (move_input, move_name)
   VALUES('6HHH', '6HHH');
INSERT INTO moves (move_input, move_name)
   VALUES('214K', 'Sepultura');
INSERT INTO moves (move_input, move_name)
   VALUES('236K', 'Trovao');
INSERT INTO moves (move_input, move_name)
   VALUES('623S', 'Sol Nascente');
INSERT INTO moves (move_input, move_name)
   VALUES('214S', 'Sol Poente');
INSERT INTO moves (move_input, move_name)
   VALUES('j.214S', 'Aerial Sol Poente');
INSERT INTO moves (move_input, move_name)
   VALUES('632146H', 'Ventania');
INSERT INTO moves (move_input, move_name)
   VALUES('j.236236H', 'Tempestade');
INSERT INTO moves (move_input, move_name)
   VALUES('41236H', 'Behemoth Typhoon (426)');
INSERT INTO moves (move_input, move_name)
   VALUES('j.41236H', 'Aerial Behemoth Typhoon (426)');
INSERT INTO moves (move_input, move_name)
   VALUES('63214H', 'Behemoth Typhoon (624)');
INSERT INTO moves (move_input, move_name)
   VALUES('j.63214H', 'Aerial Behemoth Typhoon (624)');
INSERT INTO moves (move_input, move_name)
   VALUES('23698H', 'Behemoth Typhoon (268)');
INSERT INTO moves (move_input, move_name)
   VALUES('j.23698H', 'Aerial Behemoth Typhoon (268)');
INSERT INTO moves (move_input, move_name)
   VALUES('21478H', 'Behemoth Typhoon (248)');
INSERT INTO moves (move_input, move_name)
   VALUES('j.21478H', 'Aerial Behemoth Typhoon (248)');
INSERT INTO moves (move_input, move_name)
   VALUES('69874H', 'Behemoth Typhoon (684)');
INSERT INTO moves (move_input, move_name)
   VALUES('j.69874H', 'Aerial Behemoth Typhoon (684)');
INSERT INTO moves (move_input, move_name)
   VALUES('47896H', 'Behemoth Typhoon (486)');
INSERT INTO moves (move_input, move_name)
   VALUES('j.47896H', 'Aerial Behemoth Typhoon (486)');
INSERT INTO moves (move_input, move_name)
   VALUES('87412H', 'Behemoth Typhoon (842)');
INSERT INTO moves (move_input, move_name)
   VALUES('j.87412H', 'Aerial Behemoth Typhoon (842)');
INSERT INTO moves (move_input, move_name)
   VALUES('89632H', 'Behemoth Typhoon (862)');
INSERT INTO moves (move_input, move_name)
   VALUES('j.89632H', 'Aerial Behemoth Typhoon (862)');
INSERT INTO moves (move_input, move_name)
   VALUES('214S', 'Thunderbird');
INSERT INTO moves (move_input, move_name)
   VALUES('236S', 'Skyfish');
INSERT INTO moves (move_input, move_name)
   VALUES('632146P', 'Down With The System');
INSERT INTO moves (move_input, move_name)
   VALUES('720P', 'Down With The System');
INSERT INTO moves (move_input, move_name)
   VALUES('1080P', 'Down With The System');
INSERT INTO moves (move_input, move_name)
   VALUES('236236K', 'Burn It Down');
INSERT INTO moves (move_input, move_name)
   VALUES('f.SS', 'f.SS');
INSERT INTO moves (move_input, move_name)
   VALUES('f.SSS', 'f.SSS');
INSERT INTO moves (move_input, move_name)
   VALUES('5H', '5H Level 2');
INSERT INTO moves (move_input, move_name)
   VALUES('5H', '5H Level 3');
INSERT INTO moves (move_input, move_name)
   VALUES('5H', '5H Blood Rage');
INSERT INTO moves (move_input, move_name)
   VALUES('6H', '6H Level 2');
INSERT INTO moves (move_input, move_name)
   VALUES('6H', '6H Level 3');
INSERT INTO moves (move_input, move_name)
   VALUES('6H', '6H Blood Rage');
INSERT INTO moves (move_input, move_name)
   VALUES('2H', '2H Level 2');
INSERT INTO moves (move_input, move_name)
   VALUES('2H', '2H Level 3');
INSERT INTO moves (move_input, move_name)
   VALUES('2H', '2H Blood Rage');
INSERT INTO moves (move_input, move_name)
   VALUES('j.H', 'j.H Level 2');
INSERT INTO moves (move_input, move_name)
   VALUES('j.H', 'j.H Level 3');
INSERT INTO moves (move_input, move_name)
   VALUES('j.H', 'j.H Blood Rage');
INSERT INTO moves (move_input, move_name)
   VALUES('236S', 'Zarameyuki');
INSERT INTO moves (move_input, move_name)
   VALUES('236K', 'Fukyo');
INSERT INTO moves (move_input, move_name)
   VALUES('214K', 'Fukyo');
INSERT INTO moves (move_input, move_name)
   VALUES('214H', 'Kamuriyuki');
INSERT INTO moves (move_input, move_name)
   VALUES('623H', 'Shizuriyuki');
INSERT INTO moves (move_input, move_name)
   VALUES('623P', 'Bloodsucking Universe');
INSERT INTO moves (move_input, move_name)
   VALUES('632146S', 'Wasureyuki');
INSERT INTO moves (move_input, move_name)
   VALUES('632146H', 'Zansetsu');   
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = '5P'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '4', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = '5K'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '3', '-14');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = 'c.S'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '7', '+3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = 'f.S'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '10', '+2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = '5H' AND move_name = '5H'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '11', '-5');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = '5D'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '20~28[28]', '-15[-10]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = '6P'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '9', '-11');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = '6S'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '15', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = '6H' AND move_name = '6H'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '9', '-22');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = '2P'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '5', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = '2K'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '6', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = '2S'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '10', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = '2H' AND move_name = '2H'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '11', '-17');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = '2D'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '10', '-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = 'j.P'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '5', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = 'j.K'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '6', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = 'j.S'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '10', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = 'j.H' AND move_name = 'Jumping Heavy Slash'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '9', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = '6D'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Sol%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = '4D'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Sol%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = 'j.6D'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Sol%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = 'j.4D'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Sol%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Gun Flame'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Sol%'), '20', '-8');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Gun Flame (Feint)'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Sol%'), null, null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Slash Volcanic Viper'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Sol%'), '7', '-22');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Heavy Volcanic Viper'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Sol%'), '13', '-26');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Bandit Revolver'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Sol%'), '30', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Aerial Bandit Revolver'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Sol%'), '10', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Bandit Bringer'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Sol%'), '30', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Aerial Bandit Bringer'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Sol%'), '25~33', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Wild Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Sol%'), '6', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Night Raid Vortex'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Sol%'), '15`31[32]', '-17');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Fafnir'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Sol%'), '24', '+11');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Tyrant Rave'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Sol%'), '5+2', '-34');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Heavy Mob Cemetary'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Sol%'), '13+7', null);   
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = '5P' AND move_name = '5P'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '5', '-1');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = '5K' AND move_name = '5K'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '7', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = 'c.S' AND move_name = 'Close Slash'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '7', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = 'f.S' AND move_name = 'Far Slash'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '12', '-11');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = '5H' AND move_name = '5H'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '14', '-8');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = '5D' AND move_name = 'Dust'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '20[28]', '-15[-10]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = '6P' AND move_name = '6P'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '9', '-8');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = '6K' AND move_name = '6K'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '25', '+4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = '6H' AND move_name = '6H'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '15', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = '2P' AND move_name = '2P'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '5', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = '2K' AND move_name = '2K'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '6', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = '2S' AND move_name = '2S'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '10', '-8');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = '2H' AND move_name = '2H'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '11', '-13');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = '2D' AND move_name = '2D'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '10', '-10');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = 'j.P' AND move_name = 'Jumping Punch'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '6', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = 'j.K' AND move_name = 'Jumping Kick'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = 'j.S' AND move_name = 'Jumping Slash'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = 'j.H' AND move_name = 'Jumping Heavy Slash'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '13', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = 'j.D' AND move_name = 'Jumping Dust'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '13', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = '6D'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = '4D'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = 'j.6D'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_input = 'j.4D'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_name = 'Stun Edge'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '11', '-17');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_name = 'Charged Stun Edge'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '39', '+15[+18]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_name = 'Aerial Stun Edge'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '21', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_name = 'Aerial Charged Stun Edge'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '21', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_name = 'Stun Dipper'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '5', '-15[-10]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_name = 'Foudre Arc'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '24', '-1~+6[+4~+11]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_name = 'Slash Vapor Thrust'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '11', '-33');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_name = 'Heavy Vapor Thrust'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '13', '-38');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_name = 'Dire Eclat'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '14', '-11[-9]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_name = 'Ride The Lightning'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '7+1', '-82');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_name = 'Sacred Edge'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '4+3', '+10[+15]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM  moves WHERE move_name = 'Dragon Install'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'ky%'), '21+1', '-5');      
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '3', '- 2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '6', '-3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Close Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '7', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Far Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '9', '-8');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '11', '-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Dust'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '20[28]', '-15[-10]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '9', '-16');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '20', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '17', '-5');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '5', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '5', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2S'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '10', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '12', '-14');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2D'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '10', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Punch'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '5', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Kick'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '6', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '9', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Heavy Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '9', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Dust'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '8', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'j.2K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '16', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Ground Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Ground Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Air Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Air Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Alpha Blade Horizontal'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '29', '-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Alpha Blade Diagonal'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '24', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Aerial Alpha Blade Diagonal'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '37', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Beta Blade'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '7', '-27');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Gamma Blade'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '25', '+6');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Resshou'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '13', '-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Rokusai'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '8', '-6');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Senshuu' AND move_input = '236S, 236K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '25', '-16');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Senshuu' AND move_input = '236S, 236S, 236K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '25', '-16');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Genrou Zan'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '27', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Shuriken'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '22', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Zansei Rouga'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '20+1', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Banki Messai'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '6+1', '-20');  
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Aerial Zansei Rouga'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Chipp%'), '13+1', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5P'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '6', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5K'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '7', '-2');                                                                                                                                       
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Close Slash'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '8', '-4');           
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Far Slash'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '12', '-13');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '13', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Dust'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '20[28]', '-15[-10]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6P'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '9', '-21');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '25', '-34');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2P'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '7', '-3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2K'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '7', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2S'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '11', '-19');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '14', '-12');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2D'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '12', '-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Punch'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Kick'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Slash'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '14', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Heavy Slash'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '9', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Dust'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '13', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'j.2K'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '14', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Ground Throw'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Ground Throw'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Air Throw'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Air Throw'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Thrust'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '26', '-12');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'What Could This Be?'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '26', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Mix Mix Mix'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '21', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Snip Snip Snip'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '6', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Love'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '27', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Behind Scarecrow'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '63[97]', '-8[+7]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Front Scarecrow'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '63[97]', '-8[+7]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Up Scarecrow'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '56[74]', '-32[-27]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Bone-crushing Excitement'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '16+5', '-32');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'W-W-What Could This Be?'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '1+7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name LIKE 'W-W-W-W-W%'),
           (SELECT character_id FROM character WHERE character_name = 'Faust'), '1+7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5P'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '7', '-11');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5K'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '6', '-2');                                                                                                                                                                                                                                                                                                                                                     
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Close Slash'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '8', '-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Far Slash'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '10', '-14');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '16', '-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Dust'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '20[28]', '-15[-10]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6P'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '12', '-13');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6K'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '11', '-13');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '27', '-3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2P'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '10', '-13');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2K'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '7', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2S'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '9', '-16');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '11', '-18');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2D'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '10', '-9');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Punch'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '9', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Kick'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '8', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Slash'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '11', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Heavy Slash'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '12', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Dust'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '10', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Ground Throw'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Ground Throw'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Air Throw'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Air Throw'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Sickle Flash'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '24', '-19~-9');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Soaring Chain Strike'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '8', '-11');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Spinning Chain Strike'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '7', '-6');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Winter Cherry'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '18[22]', '-3[+10]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Winter Mantis'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '28', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Rainwater'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '24', '+3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Snail'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '17', '-24');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Air Snail'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '16', '-25');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Axl Bomber'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '9', '-22');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Sickle Storm'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '11+1', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'One Vision'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Axl%'), '5+22', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5P'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '5', '-1');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5K'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '9', '-5');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Close Slash'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '7', '+3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Far Slash'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '12', '-8');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '13', '-15');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Dust'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '20[28]', '-15[-10]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6P'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '12', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6K'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '20', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '16[40]', '-8[+8]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2P'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '5', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2K'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '6', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2S'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '10', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '11', '-20');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2D'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '10', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '3K'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '11', '-13');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Punch'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '5', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Kick'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Slash'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '12', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Heavy Slash'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '12', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Dust'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '10', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'j.2H'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '13', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Ground Throw'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Ground Throw'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Air Throw'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Air Throw'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Slash Mr.Dolphin Horizontal'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '7', '-5');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Heavy Mr.Dolphin Horizontal'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '25', '+5');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Slash Mr.Dolphin Vertical'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '6', '-3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Heavy Mr.Dolphin Vertical'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '11', '+1');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Overhead Kiss'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '6', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Arisugawa Sparkle' AND move_input = '214P'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '48', '+29');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Arisugawa Sparkle' AND move_input = '214K'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '48', '+29');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Great Yamada Attack'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '10+', '-54');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'The Wonderful and Dynamic Goshogawara'),
           (SELECT character_id FROM character WHERE character_name = 'May'), '6+4', '-21'); 
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5P'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '7', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5K'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '7', '-3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Close Slash'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '7', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Far Slash'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '10', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '12', '-12');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Dust'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '20[28]', '-15[-10]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6P'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '9', '-11');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6K'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '28', '+1');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '17', '-8');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2P'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '6', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2K'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '6', '-3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2S'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '11', '-6');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '14', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2D'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '12', '-11');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Punch'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '5', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Kick'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '6', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Slash'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Heavy Slash'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '8', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Dust'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '9', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Ground Throw'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Ground Throw'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Air Throw'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Air Throw'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Slash Tandem Top'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '15', '-14');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Heavy Tandem Top'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '73', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Bad Moon'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '11', '-21');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Turbo Fall'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '14', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Iron Savior'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '20', '-12');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Lust Shaker'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '1[(3)1]*2~8', '-5[-9]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Mirazh'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), null, null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Kapel'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '13', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Winger'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '6+1', '-22');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Septem Voices'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Millia%'), '4+5', '+8');        
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5P'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '5', '+1');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5K'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '10', '-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Close Slash'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '8', '+4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Far Slash'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '12', '-8');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '16', '-11');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Dust'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '20~27[28]', '-15[-10]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6P'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '11', '-15');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6K'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '22', '-12');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '23', '-15');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2P'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '8', '-1');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2K'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '10', '-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2S'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '14', '-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '13', '-21');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2D'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '13', '-11');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Punch'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Kick'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '10', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Slash'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '13', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Heavy Slash'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '12', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Dust'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '13', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Ground Throw'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Ground Throw'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Air Throw'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Air Throw'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Potemkin Buster'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '5', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Heat Knuckle'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '12', '+10~+1');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Mega Fist'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '25', '-6');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Mega Fist'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '25', '+4(-2)');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Slide Head'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '29', '0');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Hammer Fall'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '18~47', '-9');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'F.D.B'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '21~28[28~38]', '-6');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Garuda Impact'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '28', '+19');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Heavenly Potemkin Buster'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '12+0', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Giganter Kai'),
           (SELECT character_id FROM character WHERE character_name = 'Potemkin'), '10+9', '+1');       
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5P'),
           (SELECT character_id FROM character WHERE character_name LIKE 'Zato%'), '6', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5K'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '8', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Close Slash'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '9', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Far Slash'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '10', '-12');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '13', '-9');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Dust'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '20[28]', '-15[-10]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6P'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '13', '-6');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6K'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '23', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '30', '-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2P'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '6', '-3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2K'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '7', '-3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2S'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '11', '-10');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '13', '-13');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2D'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '10', '-9');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Punch'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '8', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Kick'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Slash'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '9', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Heavy Slash'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '12', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Dust'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '11', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Ground Throw'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Ground Throw'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Air Throw'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Air Throw'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Summon Eddie'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '36', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Unsummon Eddie'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '32', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '\"Pierce\"' AND move_input = '236P'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '21', '+30');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '\"Pierce\"' AND move_input = ']P['),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '13', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = ']K['),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '19', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_id = 792),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '27', '+55');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = ']S['),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '13', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_id = 794),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '21', '+46');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_input = ']H['),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '66', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_id = 796),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '74', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Invite Hell'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '18', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Break The Law'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '28[95]', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Damned Fang'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '6', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Drunkard Shade'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '9', '-8');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Amorphous'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '11+8', '+12');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Sun Void'),
           (SELECT character_id FROM character WHERE character_name = 'Zato-1'), '11+14', null);   
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '6', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '8', '-2');     
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Close Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '7', '-2');  
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Far Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '12', '-15');   
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '15', '-8');      
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Dust'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '20[28]', '-15[-10]');   
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '10', '-17');  
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '16', '-8');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '6', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '7', '-2');     
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2S'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '12', '-6');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '22', '-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2D'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '10', '-11');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Punch'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '9', null); 
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Kick'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '6', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '7', null);    
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Heavy Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '13', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Dust'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '8', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Ground Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Ground Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Air Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Air Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Shitsu'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '38', '-5');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Suigetsu No Hakobi'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '10', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Fuujin'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '17[33]', '-16');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Shin: Ichishiki'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '30', '+4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Issokutobi'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), null, null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Nagiha'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '13', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Rin'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '25', '-15');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Kou'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '12[28]', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Issei Ougi: Sai'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), '11+6', '-30');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Kachoufuugetsu Kai'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Anji%'), null, '-1');     
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5P'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '5', '-3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5K'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '7', '-2');  
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Close Slash'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '7', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Far Slash'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '13', '-13');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '16', '-8');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Dust'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '20[28]', '-15[-11]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6P'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '9', '-9');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '7', '-8');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2P'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '6', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2K'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '6', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2S'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '11', '-11');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '11', '-5');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2D'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '12', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Punch'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '5', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Kick'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Slash'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '8', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Heavy Slash'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '12', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Dust'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '16', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Ground Throw'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Ground Throw'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Air Throw'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Air Throw'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Antidepressant Scale'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '24', '-16');    
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Aerial Antidepressant Scale'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '21', '-16');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Slash Stroke the Big Tree'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '16', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Heavy Stroke the Big Tree'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '28', '+2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'K Sultry Performance'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '10', '-7~(-2)[-1]');   
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'S Sultry Performance'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '10', '-7~(-4)[-2]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'H Sultry Performance'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '9', '?(-7)');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Chemical Love'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '11', '-2');  
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Megalomania'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '11+0(41)', '(-18)');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Ultimate Fortissimo'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '6+2', '+26');        
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Aerial Ultimate Fortissimo'), 
           (SELECT character_id FROM character WHERE character_name = 'I-No'), '5+3', '+37');     
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5P'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '5', '-1');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5K'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '9', '-1');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Close Slash'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '7', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Far Slash'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '12', '-13');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '15', '-10');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Dust'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '20[28]', '-15[-10]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6P'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '10', '-5');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6K'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '14', '-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '27', '-15');   
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Guard Stance' AND move_input = '[H]S'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '10', '-6'); 
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Guard Stance' AND move_input = '[S]H'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '10', '-6');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2P'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '6', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2K'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '7', '-5');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2S'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '10', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '12', '-20');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2D'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '12', '-5');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Punch'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '5', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Kick'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '10', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Slash'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Heavy Slash'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '11', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Dust'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '22', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Ground Throw'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Ground Throw'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Air Throw'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Air Throw'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Slash Gravierte Wurde'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '10', '-16');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Heavy Gravierte Wurde'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '35', '+11');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Slash Eisensturm'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '7', '-28');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Heavy Eisensturm'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '8', '-52');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Erstes Kaltes Gestober'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '12', '-6');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Zweites Kaltes Gestober'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '16~23', '-6[+2]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Turbulenz'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '21', '-8');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Brynhildr Stance --> P'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '7', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Brynhildr Stance --> K'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '5', '+3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Brynhildr Stance --> S'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '6', '-3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Brynhildr Stance --> H'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '18', '-6');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Kahn Schild'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '1', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Glanzendes Dunkel'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '30', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Blitzschlag'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '29', '+21');  
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Cancel'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), null, null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Stahlwirbel'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '4+1', '+14');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Leidenschaft des Dirigenten'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Leo%'), '10+1', '-33');    
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)   
    VALUES ((SELECT move_id FROM moves WHERE move_name = '5P'),
            (SELECT character_id FROM  character WHERE character_name ILIKE 'Ram%'), '5', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '7', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Close Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '7', '-2'); 
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Far Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '11', '-10[-13]');      
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '12', '-12[-13]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Dust'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '20[28]', '-15[-10]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '9', '-9');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '18[18]', '-16[-18]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '6', '-3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '6', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2S'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '12[12]', '-7[-10]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '14', '-15[-17]');   
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2D'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '10', '-8');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Punch'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '5', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Kick'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '12', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Heavy Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '16', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Dust'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '10', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Ground Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Ground Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Air Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Air Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Dauro'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '11', '-10');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Erarlumo'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '20', '-9');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Erarlumo (2nd Hit)'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '12', '-13[-2]');  
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Erarlumo (3rd Hit)'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '22', '-19');     
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Sildo Detruo'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '30', '-3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Aerial Sildo Detruo'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '30', '-7~-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Slash Bajoneto'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '20', '+9');   
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Heavy Bajoneto'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '20', '+3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Agresa Ordono'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '12', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Sabrobato'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '19', '-12[-12]{-32}');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Calvados'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '11+13', '-70');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Mortobato'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Ram%'), '7+3', '-30[-30]{-35}');       
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5P'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '4', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5K'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '6', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Close Slash'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '7', '+3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Far Slash'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '9', '-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '10', '-5');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Dust'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '20[28]', '-15[-10]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6P'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '13', '-9');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '17', '-10');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6HH'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '11', '-11');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6HHH'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '13', '-16');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2P'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '5', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2K'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '6', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2S'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '9', '-6');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '11', '-8');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2D'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '17', '-3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Punch'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '6', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Kick'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '6', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Slash'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Heavy Slash'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '8', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Dust'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Ground Throw'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Ground Throw'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Air Throw'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Air Throw'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Sepultura'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '13', '-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Trovao'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '7', '-15');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Sol Poente'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '4[30]', '+4');      
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Aerial Sol Poente'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '4[30]', '+4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Ventania'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '4+3', '-37');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Tempestade'), 
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gio%'), '3+1', '+6');      
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '7', '+3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '10', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Close Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '7', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Far Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '10', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '19', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Dust'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '20[28]', '-15[-10]');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '13', '-19');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '25', '-14');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '6', '+3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '8', '-5');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2S'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '13', '-9');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '20', '-15');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2D'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '14', '-10'); 
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Punch'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '6', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Kick'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '9', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '11', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Heavy Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '15', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Dust'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '15', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Ground Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Ground Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Air Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Air Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Behemoth Typhoon (426)'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '12', '+12');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Behemoth Typhoon (624)'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '12', '-5');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Behemoth Typhoon (268)'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '12', '+3~12');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Behemoth Typhoon (248)'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '12', '+3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Behemoth Typhoon (684)'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '12', '-5');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Behemoth Typhoon (486)'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '12', '+14~15');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Behemoth Typhoon (842)'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '12', '+16');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Behemoth Typhoon (862)'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '12', '+12');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Thunderbird'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '57', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Skyfish'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '34', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Down With The System' AND move_input = '632146P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '6+135+4', '-33');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Down With The System' AND move_input = '720P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '11+191+4', '-33');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Down With The System' AND move_input = '1080P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '16+230+4', '-33');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Burn It Down'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Gold%'), '13+79', null);      
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '5', '0');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '7', '0');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Close Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '7', '+3');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Far Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '16', '-17');  
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'f.SS'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '13', '-8');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'f.SSS'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '14', '-25');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '20', '-14');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H Level 2'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '18', '-14');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H Level 3'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '16', '-14');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '5H Blood Rage'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '16', '-14');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Dust'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '20[28]', '-15[-10]');  
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '13', '-6');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '15', '-4');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '17', '-17');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H Level 2'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '16', '-17');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H Level 3'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '15', '-17');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '6H Blood Rage'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '15', '-17');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2P'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '6', '-2');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '7', '-1');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2S'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '12', '-5');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '19', '-17'); 
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H Level 2'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '17', '-17');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H Level 3'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '15', '-17');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2H Blood Rage'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '15', '-17');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = '2D'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '12', '-7');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Punch'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Kick'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '13', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Heavy Slash'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '16', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'j.H Level 2'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '15', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'j.H Level 3'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '14', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'j.H Blood Rage'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '14', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Jumping Dust'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '15', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Ground Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Ground Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Forward Air Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Back Air Throw'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '2', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Zarameyuki'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '23', '+5');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Fukyo' AND move_input = '236K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), null, null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Fukyo' AND move_input = '214K'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), null, null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Kamuriyuki'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '14', '0');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Shizuriyuki'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '13', '-16');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Bloodsucking Universe'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '7', null);
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Wasureyuki'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '7+173+2', '-30');
INSERT INTO character_move (move_id, character_id, startup_frames, block_frames)
   VALUES ((SELECT move_id FROM moves WHERE move_name = 'Zansetsu'),
           (SELECT character_id FROM character WHERE character_name ILIKE 'Nago%'), '11+58+10', '-66');                                                                                                        