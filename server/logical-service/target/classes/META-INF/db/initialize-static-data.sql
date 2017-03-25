------ Insert basic card information
INSERT IGNORE INTO `card` (`id`,`addition`,`attack`,`camp`,`defence`,`delete_status`,`level_max`,`name`,`price`,`scarcity`,`special_skill`,`star`,`step`,`strength_require`,`title`,`type`) VALUES ('sample-card','1',150,'HUMAN',100,'VALID',20,'Card HUMAN',20,2,'HUMAN is special skill description',3,1,50,'Title','type1');
INSERT IGNORE INTO `card` (`id`,`addition`,`attack`,`camp`,`defence`,`delete_status`,`level_max`,`name`,`price`,`scarcity`,`special_skill`,`star`,`step`,`strength_require`,`title`,`type`) VALUES ('sample-card1','1',150,'TAITAN',100,'VALID',20,'Card HUMAN',20,2,'HUMAN is special skill description',3,1,50,'Title','type1');
INSERT IGNORE INTO `card` (`id`,`addition`,`attack`,`camp`,`defence`,`delete_status`,`level_max`,`name`,`price`,`scarcity`,`special_skill`,`star`,`step`,`strength_require`,`title`,`type`) VALUES ('sample-card2','1',150,'LINGYI',100,'VALID',20,'Card HUMAN',20,2,'HUMAN is special skill description',3,1,50,'Title','type1');

------- Insert default player data
INSERT INTO `player` (`id`,`action_power`,`action_power_last_used`,`action_power_max`,`attack_lose_times`,`attack_power`,`attack_power_last_used`,`attack_power_max`,`attack_win_times`,`camp`,`cards_max`,`defence_lose_times`,`defence_power`,`defence_power_last_used`,`defence_power_max`,`defence_win_times`,`delete_status`,`exp`,`fight_credits`,`friend_points`,`friends_max`,`friends_num`,`gold_coin`,`guild_id`,`guild_title`,`imei`,`last_login`,`last_remove_friend`,`level`,`name`,`register_time`,`rest_attr_points`,`silver_coin`,`title`,`total_login_time`,`total_login_times`) VALUES('DS0-a5c5cb6a-2297-3bf1-ab2b-526a679effd6',0,'2013-03-12 11:15:35',0,0,0,'2013-03-12 11:15:35',0,NULL,'HUMAN',0,0,0,'2013-03-12 11:15:35',0,0,'VALID',0,0,0,0,0,0,NULL,NULL,'abc','2013-03-12 11:15:35','2013-03-12 11:15:35',5,'Default','2013-03-12 11:15:35',0,0,NULL,0,0);
INSERT INTO `player_card` (`id`, `addition`, `attack`, `attack_added`, `attack_init`, `can_auction`, `can_sale`, `card_camp`, `card_id`, `card_level`, `defence`, `defence_added`, `defence_init`, `delete_status`, `growing_percent`, `is_main`, `level_max`, `name`, `player_equipment_id1`, `player_equipment_id2`, `player_equipment_id3`, `price`, `price_init`, `scarcity`, `skill_description`, `skill_id`, `skill_name`, `star`, `status`, `step`, `strength_require`, `strength_require_added`, `strength_require_init`, `title`, `type`, `player_id`) VALUES ('258face3-7fdd-4687-ba58-1f78e872a95a',1,150,150,150,NULL,NULL,'HUMAN','sample-card',0,100,100,NULL,'VALID',NULL,0,20,'Card HUMAN',NULL,NULL,NULL,20,NULL,2,NULL,NULL,NULL,3,NULL,1,50,50,NULL,'Title','type1','DS0-a5c5cb6a-2297-3bf1-ab2b-526a679effd6'),('46b861e9-37fb-4142-9764-5973595fd2f1',1,150,150,150,NULL,NULL,'TAITAN','sample-card',0,100,100,NULL,'VALID',NULL,0,20,'Card HUMAN',NULL,NULL,NULL,20,NULL,2,NULL,NULL,NULL,3,NULL,1,50,50,NULL,'Title','type1','DS0-a5c5cb6a-2297-3bf1-ab2b-526a679effd6'),('61a571ae-33df-4442-a7bf-edbeb3267aeb',1,150,150,150,NULL,NULL,'LINGYI','sample-card',0,100,100,NULL,'VALID',NULL,0,20,'Card HUMAN',NULL,NULL,NULL,20,NULL,2,NULL,NULL,NULL,3,NULL,1,50,50,NULL,'Title','type1','DS0-a5c5cb6a-2297-3bf1-ab2b-526a679effd6'),('6a258960-6026-45b6-98e6-e59fe7f82b9a',1,150,150,150,NULL,NULL,'LINGYI','sample-card',0,100,100,NULL,'VALID',0,1,20,'Card HUMAN',NULL,NULL,NULL,20,NULL,2,NULL,NULL,NULL,3,NULL,1,50,50,NULL,'Title','type1','DS0-a5c5cb6a-2297-3bf1-ab2b-526a679effd6'),('6f724051-f004-452a-a587-f164d3b2d3eb',1,150,150,150,NULL,NULL,'TAITAN','sample-card',0,100,100,NULL,'VALID',NULL,0,20,'Card HUMAN',NULL,NULL,NULL,20,NULL,2,NULL,NULL,NULL,3,NULL,1,50,50,NULL,'Title','type1','DS0-a5c5cb6a-2297-3bf1-ab2b-526a679effd6'),('e47bb181-6242-4ba1-9e58-54b97b7beee3',1,150,150,150,NULL,NULL,'HUMAN','sample-card',0,100,100,NULL,'VALID',NULL,0,20,'Card HUMAN',NULL,NULL,NULL,20,NULL,2,NULL,NULL,NULL,3,NULL,1,50,50,NULL,'Title','type1','DS0-a5c5cb6a-2297-3bf1-ab2b-526a679effd6');

-- nikm 2013-03-14
-- INSERT INTO `player` (`id`, `action_power`, `action_power_last_used`, `action_power_max`, `attack_lose_times`, `attack_power`, `attack_power_last_used`, `attack_power_max`, `attack_win_times`, `camp`, `cards_max`, `defence_lose_times`, `defence_power`, `defence_power_last_used`, `defence_power_max`, `defence_win_times`, `delete_status`, `exp`, `fight_credits`, `friend_points`, `friends_max`, `friends_num`, `gold_coin`, `guild_id`, `imei`, `last_login`, `last_remove_friend`, `level`, `name`, `register_time`, `rest_attr_points`, `silver_coin`, `title`, `total_login_time`, `total_login_times`) 
-- VALUES ('nikm1', '9999', '2013-03-12 10:38:46', '9999', '2013-03-12 10:38:46', '9999', '2013-03-12 10:38:46', '9999', '0', 'HUMAN', '9999', '0', '9999', '2013-03-12 10:38:46', '9999', '0', '0', '0', '99', '9999', '99', '0', '9999', '0', 'nikm-123456', '2013-03-12 10:38:46', '2013-03-12 10:38:46', '99', 'nikm-test player1', '2013-03-12 10:38:46', '99', '9999', 'nikm title1', '0', '0');
-- INSERT INTO `card` (`id`, `addition`, `attack`, `camp`, `defence`, `delete_status`, `level_max`, `name`, `price`, `scarcity`, `star`, `step`, `strength_require`, `title`, `type`) 
-- VALUES ('1', '1', '9999', 'HUMAN', '9999', '0', '9', 'nikm-test1', '1', '9999', '7', '5', '1', 'nikm', 'type1');
-- INSERT INTO `player_card` (`id`, `addition`, `attack`, `attack_added`, `attack_init`, `can_auction`, `can_sale`, `card_id`, `card_level`, `card_camp`, `defence`, `defence_added`, `defence_init`, `delete_status`, `growing_percent`, `is_main`, `level_max`, `name`, `price`, `price_init`, `scarcity`, `skill_description`, `skill_id`, `skill_name`, `star`, `status`, `step`, `strength_require`, `strength_require_added`, `strength_require_init`, `title`, `type`, `player_id`) 
-- VALUES ('1', '1', '9999', '9999', '9999', '0', '0', '1', '20', 'HUMAN', '9999', '9999', '9999', '0', '100', '1', '20', 'nikm-test1', '1', '1', '9999', '...', '1', 'nikm-test skill1', '7', 'VALID', '9', '1', '1', '1', 'nikm-test1', 'type1', 'nikm1');