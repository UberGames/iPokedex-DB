CREATE TABLE "evolution_trigger_names" (evolution_trigger_id integer,language_id integer,name varchar(16));
CREATE TABLE move_target_names (move_target_id TEXT,local_language_id TEXT,name TEXT,description TEXT);
CREATE TABLE move_flags (move_id integer,makes_contact integer,protect_affected integer,magic_coat_affected integer,snatch_affected integer,brightpowder_affected integer,kings_rock_affected integer);
CREATE TABLE pokemon_version_flavor_text (ndex integer,version_id integer,flavor_text_id integer);
CREATE TABLE ability_generation_flavor_text (ability_id integer,generation_id integer,flavor_text_id integer);
CREATE TABLE machines (id integer PRIMARY KEY AUTOINCREMENT,number integer,generation_id integer,exclusive_version_group_id integer,type varchar(3),item_id integer,move_id integer);
CREATE TABLE pokemon_learn_categories (pokemon_id integer,generation_id integer,level integer,machines integer,breed integer,tutor integer);
CREATE TABLE stats (id integer,damage_class_id integer,identifier varchar(32));
CREATE TABLE regions (id integer,identifier varchar(32), name varchar(24), name_jp varchar(24));
CREATE TABLE pokemon_formes (pokemon_id integer,short_name varchar(12),name varchar(32),name_jp varchar(32));
CREATE TABLE elemental_types_dmg (attack_type_id integer,defense_type_id integer,damage_multiplier integer);
CREATE TABLE move_learn_categories (move_id integer,generation_id integer,level integer,machines integer,breed integer,tutor integer);
CREATE TABLE pokemon_stats (pokemon_id integer,stat_id integer,base_stat integer,ev integer);
CREATE TABLE pokemon_flavor_text (id integer PRIMARY KEY AUTOINCREMENT,flavor_text text, flavor_text_jp text);
CREATE TABLE ability_colors (id integer PRIMARY KEY,name varchar(32),color varchar(8));
CREATE TABLE ability_effects (ability_id integer,battle_status varchar(4),effect text, effect_jp text);
CREATE TABLE elemental_types (id integer PRIMARY KEY,name varchar(32),name_jp varchar(32),short_name varchar(32),color varchar(8),category_id integer);
CREATE TABLE generations (id integer PRIMARY KEY,main_region_id integer,canonical_pokedex_id integer,identifier varchar(32),name varchar(6),name_jp varchar(12));
CREATE TABLE move_targets (id integer PRIMARY KEY,identifier varchar(32));
CREATE TABLE moves (id integer PRIMARY KEY,identifier varchar(32),name varchar(32),name_jp varchar(32),name_jp_tm varchar(32),generation_id integer,type_id integer,power integer,pp integer,accuracy integer,priority integer,target_id integer,category_id integer,effect_id integer,effect_chance integer,contest_type_id integer,contest_effect_id integer,super_contest_effect_id integer);
CREATE TABLE versions (id integer PRIMARY KEY,identifier varchar(32),generation_id integer,version_group_id integer,color varchar(8), name varchar(16), acronym varchar(5), name_jp varchar(16), acronym_jp varchar(5));
CREATE TABLE move_categories (id integer PRIMARY KEY,name varchar(24),name_jp varchar(24),short_name varchar(24));
CREATE TABLE items (id integer PRIMARY KEY,name varchar(32),name_jp varchar(32),name_jp_meaning varchar(32),short_name varchar(32),item_type_id integer,generation_id integer,buyable integer,sell_price integer);
CREATE TABLE evolution_parameters (id integer PRIMARY KEY,identifier varchar(32));
CREATE TABLE abilities (id integer PRIMARY KEY,identifier varchar(32),name varchar(32),name_jp varchar(32),name_jp_tm varchar(32),generation_id integer,color_id integer);
CREATE TABLE evolution_locations (id integer PRIMARY KEY AUTOINCREMENT,name varchar(64),name_jp varchar(64));
CREATE TABLE move_changelog (move_id integer,changed_in_generation_id integer,type_id integer,power integer,pp integer,accuracy integer,effect_id integer,effect_chance integer);
CREATE TABLE pokemon_real_names (pokemon_id integer,real_name varchar(32));
CREATE TABLE [egg_groups] (id integer PRIMARY KEY,identifier varchar(24),name varchar(24),name_jp varchar(24),list_order integer,legacy_id integer);
CREATE TABLE stat_names (stat_id integer,name varchar(16));
CREATE TABLE evolution_methods (id integer PRIMARY KEY,parameter_id integer,name varchar(32),name_jp varchar(32),description text);
CREATE TABLE move_flavor_text (move_id integer,generation_id integer,flavor_text text, flavor_text_jp text);
CREATE TABLE ability_flavor_text (id integer PRIMARY KEY AUTOINCREMENT,flavor_text text,flavor_text_jp text);
CREATE TABLE move_effects (id integer PRIMARY KEY,effect text,effect_jp text);
CREATE TABLE pokemon (id integer PRIMARY KEY,identifier varchar(32),name varchar(32),name_phonetic varchar(32),species varchar(32),name_jp varchar(32),name_jp_romaji varchar(32),species_jp varchar(32),generation_id integer,ndex integer,kdex integer,jdex integer,jdex_old integer,hdex integer,sdex integer,udex integer,type1_id integer,type2_id integer,ability1_id integer,ability2_id integer,abilitydream_id integer,evolution_parent_pokemon_id integer,evolution_method_id integer,evolution_parameter integer,height integer,weight integer,gender_rate integer,catch_rate integer,exp_yield integer,base_happiness integer,egg_group1_id integer,egg_group2_id integer,is_baby integer,baby_breed_item_id integer,hatch_counter integer,lvl_100_exp integer,pokemon_order integer,legacy_id integer);
CREATE TABLE pokemon_moves (id integer PRIMARY KEY,pokemon_id integer,generation_id integer,exclusive_version_group_id integer,move_id integer,move_method_id integer,level integer,move_order integer);
