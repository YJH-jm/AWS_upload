show databases;

-- oracle db의 SCOTT 같이... 
CREATE DATABASE chart; 

USE chart;


drop table IF EXISTs music_chart;

CREATE TABLE music_chart (
    today                  varchar(50), -- 자꾸 error 발생해서 date 형식에서 string 으로 변환
    songrank               int NOT NULL, 
    artist                 varchar(300),
    title                  varchar(50),
    comment                int,
    songlike               int,
    CONSTRAINT pk_mc PRIMARY KEY (songrank)
 );


-- insert into music_chart values( STR_TO_DATE('2021-07-21-16','%Y-%m-%d-%H-&'), 1, 'MSG워너비(M.O.M)', '바라만 본다', 1725, 117383);
-- insert into music_chart values( STR_TO_DATE('2021-07-21-16','%Y-%m-%d-%H'), 2, 'aespa', 'Next Level', 5867, 170070);
-- insert into music_chart values( STR_TO_DATE('2021-07-21-16','%Y-%m-%d-%H'), 3, '이무진', '신호등', 903, 124119);
-- insert into music_chart values( STR_TO_DATE('2021-07-21-16','%Y-%m-%d-%H'), 4, '방탄소년단', 'Permission to Dance', 3912, 129038);
-- insert into music_chart values( STR_TO_DATE('2021-07-21-16','%Y-%m-%d-%H'), 5, '방탄소년단', 'Butter', 8236, 226703);
-- insert into music_chart values( STR_TO_DATE('2021-07-21-16','%Y-%m-%d-%H'), 6, '태연', 'Weekend', 1266, 78451);
-- insert into music_chart values( STR_TO_DATE('2021-07-21-16','%Y-%m-%d-%H'), 7, '헤이즈', '헤픈 우연', 762, 129741);
-- insert into music_chart values( STR_TO_DATE('2021-07-21-16','%Y-%m-%d-%H'), 8, '브레이브걸스', '치맛바람 (Chi Mat Ba Ram)', 2174, 83679);
-- insert into music_chart values( STR_TO_DATE('2021-07-21-16','%Y-%m-%d-%H'), 9, '오마이걸', 'Dun Dun Dance', 2915, 129921);
-- insert into music_chart values( STR_TO_DATE('2021-07-21-16','%Y-%m-%d-%H'), 10, 'Justin Bieber', 'Peaches (Feat. Daniel Caesar & Giveon)', 946, 180850);   
-- Incorrect date value: '2021-07-21 16:00:00' for column 'today' at row 1 

insert into music_chart values( '2021-07-21-16', 1, 'MSG워너비(M.O.M)', '바라만 본다', 1725, 117383);
insert into music_chart values( '2021-07-21-16', 2, 'aespa', 'Next Level', 5867, 170070);
insert into music_chart values( '2021-07-21-16', 3, '이무진', '신호등', 903, 124119);
insert into music_chart values( '2021-07-21-16', 4, '방탄소년단', 'Permission to Dance', 3912, 129038);
insert into music_chart values( '2021-07-21-16', 5, '방탄소년단', 'Butter', 8236, 226703);
insert into music_chart values( '2021-07-21-16', 6, '태연', 'Weekend', 1266, 78451);
insert into music_chart values( '2021-07-21-16', 7, '헤이즈', '헤픈 우연', 762, 129741);
insert into music_chart values( '2021-07-21-16', 8, '브레이브걸스', '치맛바람 (Chi Mat Ba Ram)', 2174, 83679);
insert into music_chart values( '2021-07-21-16', 9, '오마이걸', 'Dun Dun Dance', 2915, 129921);
insert into music_chart values( '2021-07-21-16', 10, 'Justin Bieber', 'Peaches (Feat. Daniel Caesar & Giveon)', 946, 180850);   



commit;

-- 값이 들어가는 것을 확인! 
SELECT * from music_chart 