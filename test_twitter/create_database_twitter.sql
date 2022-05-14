drop database if exists twitter;
create database twitter;
use twitter;

create table srh(
	id int,
	modularity decimal(3, 1),
	eigenvector decimal(20, 15),
	num_comments int,
	num_likes int,
	num_shares int,
	num_retweets int,
	content varchar(500),
	bio varchar(300),
	search int,
	source varchar(100),
	application varchar(100),
	date_t bigint,
	parent varchar(100),
	lang varchar(20),
	par_id_source varchar(70),
	domain_t varchar(70),
	topics varchar(250),
	sentiment decimal(10, 8),
	sent_class varchar(15),
	sentiment_by int,
	visibility decimal(12, 8),
	pot_impressions int,
	act_impressions int,
	city varchar(100),
	country varchar(100),
	latitude decimal(15, 10),
	longitude decimal(15, 10),
	user_city varchar(100),
	user_country varchar(100),
	user_lat decimal(15, 10),
	user_long decimal(15, 10),
	num_fol int,
	num_friends int,
	gender varchar(20),
	links_url varchar(200),
	post_subtype varchar(100)
) engine=innoDB default charset=utf8;

load data local infile 'data1.csv' into table srh character set latin1 fields terminated by ',' enclosed by '"' ignore 1 lines;