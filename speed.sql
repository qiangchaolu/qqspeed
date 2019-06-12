SET NAMES UTF8;
DROP DATABASE IF EXISTS speed;
CREATE DATABASE speed CHARSET=UTF8;
USE speed;

/*创建飞车脚部表*/
CREATE TABLE speed_footer_title(
	fid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255)
);
INSERT INTO speed_footer_title VALUES(NULL,'腾讯互动娱乐');
INSERT INTO speed_footer_title VALUES(NULL,'服务条款');
INSERT INTO speed_footer_title VALUES(NULL,'腾讯游戏隐私保护指引');
INSERT INTO speed_footer_title VALUES(NULL,'腾讯游戏招聘');
INSERT INTO speed_footer_title VALUES(NULL,'腾讯游戏客服');
INSERT INTO speed_footer_title VALUES(NULL,'游戏地图');
INSERT INTO speed_footer_title VALUES(NULL,'成长守护平台');
INSERT INTO speed_footer_title VALUES(NULL,'商务合作');
INSERT INTO speed_footer_title VALUES(NULL,'网站导航');
INSERT INTO speed_footer_title VALUES(NULL,'COPYRIGHT &copy; 1998 – 2019 TENCENT. ALL RIGHTS RESERVED.');
INSERT INTO speed_footer_title VALUES(NULL,'腾讯公司 版权所有');

/*创建飞车用户表*/
CREATE TABLE speed_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32),
	upwd VARCHAR(32),
	phone VARCHAR(16)
);
INSERT INTO speed_user VALUES(NULL,'dingding','123456','13501234567');
INSERT INTO speed_user VALUES(NULL,'dangdang','123456','13501234567');
INSERT INTO speed_user VALUES(NULL,'doudou','123456','13501234567');

/*创建赛道表*/
CREATE TABLE speed_sd(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	img_url VARCHAR(255),
	tit VARCHAR(255),
	sub VARCHAR(255),
	level VARCHAR(255),
	level_3 INT,
	link VARCHAR(255)
);
INSERT INTO speed_sd VALUES(NULL,'img/guanwang/sd1.jpg','咕噜星','星雾的缭绕，交织着银河星系的神秘莫测；繁星的闪烁，照耀着咕噜星的蜿蜒曲折；流星的飞逝，涌现出咕噜星的无穷能量。整装待发，穿梭在陨石坠落的边缘，探索冒险，疾驰在咕噜星最奇幻的表面！', '赛道难度',3,'查看详情+');
INSERT INTO speed_sd VALUES(NULL,'img/guanwang/sd2.jpg','桃园剑阁','轻舞翠竹林，剑起叶落，泣一段仙侠情缘；月洒仙鹤桥，音回走廊，歌一曲仙侠离殇；云浮绕半崖，龙戏夕阳，醉一夜仙侠无悔；珠落铸剑窟，焚燃剑冢，闯一次仙侠冒险。', '赛道难度',3,'查看详情+');
INSERT INTO speed_sd VALUES(NULL,'img/guanwang/sd3.jpg','玄门幽谷','流瀑潺潺，仙鹤绕云，剑仙巨像静静地守护着灵山一方；断壁残垣，剑指天地，仙魔大战激扬地讲述着恩怨情长；幽魅妖塔，仙境瑶池，蜀山神树牢固地连接着仙侠过往。', '赛道难度',3,'查看详情+');
INSERT INTO speed_sd VALUES(NULL,'img/guanwang/sd4.jpg','英伦古堡','华灯闪耀着的是古堡沉淀的岁月悠久，琉璃窗花的斑驳折射着教堂的神圣与梦幻，从流淌的护城河与严肃的禁卫军面前疾驰而过，与蓝天白云、彩虹信鸽一起自由飞翔，一起在古堡里探险，一起到田野间感受轻风与花香。', '赛道难度',3,'查看详情+');
INSERT INTO speed_sd VALUES(NULL,'img/guanwang/sd5.jpg','繁华巴比伦','繁花似锦的春天、曲折蜿蜒的栈桥、憨态可掬的雕像、流淌不息的河流、四季不败的繁花，将巴比伦打扮的生机盎然。彼岸花在这里孤独等候，三生石上铭刻着前世的爱情故事。这里是多肉植物的天堂，山崖峭壁间、水域湖泊上、起伏赛道旁，都有它们的身影。收拾好行囊，从起点一路奔驰，赏花赏景的同时收获一份美好的心情吧！', '赛道难度',3,'查看详情+');
INSERT INTO speed_sd VALUES(NULL,'img/guanwang/sd6.jpg','沁园春','岭北飘雪，岭南落花。山峦被厚厚的冰雪覆盖，洞窟被蓝色的冰锥铺满，这里好似依旧是冰冷的冬天。但，峰回路转之间，冰雪初融，嫩绿刚发，楼台矗立，樱花飞舞。一路穿越过四季的景色，才发现，最浪漫的事情或许就是与你一起奔跑在这样的世外桃源。', '赛道难度',5,'查看详情+');
INSERT INTO speed_sd VALUES(NULL,'img/guanwang/sd7.jpg','故园归醉','雪山巍峨，朵朵雪花从空中飘落，静听雪落下的声音；霓虹闪烁，湖面结了厚厚的冰，踱步于冰湖上的木桥。小猪雪人挑着灯笼指引方向，酿酒坊里灯火通明，酒香四溢，张灯结彩庆祝着新年的到来。赛道边，积雪已除，彩灯已亮；故园里，梅花已开，美酒已酿，静等各位赛车手的到来！', '赛道难度',3,'查看详情+');
INSERT INTO speed_sd VALUES(NULL,'img/guanwang/sd8.jpg','极速空港','疾驰在流星飞逝的瞬间，太空城市中用全息投影记录永恒，穿梭在群星璀璨的浩瀚，在极速空港感受全新科技的魅力；漂移在探索宇宙的哨站，在太空基地里感受无重力带来的极限体验。在这里发现属于外太空的壮观，挑战属于你的极速梦想！', '赛道难度',7,'查看详情+');

/*创建赛道缩略表*/
CREATE TABLE speed_sd_sl(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	img_url VARCHAR(255),
	tit VARCHAR(255)
);
INSERT INTO speed_sd_sl VALUES(NULL,'img/guanwang/sd01.jpg','咕噜星');
INSERT INTO speed_sd_sl VALUES(NULL,'img/guanwang/sd02.jpg','桃园剑阁');
INSERT INTO speed_sd_sl VALUES(NULL,'img/guanwang/sd03.jpg','玄门幽谷');
INSERT INTO speed_sd_sl VALUES(NULL,'img/guanwang/sd04.jpg','英伦古堡');
INSERT INTO speed_sd_sl VALUES(NULL,'img/guanwang/sd05.jpg','繁华巴比伦');
INSERT INTO speed_sd_sl VALUES(NULL,'img/guanwang/sd06.jpg','沁园春');
INSERT INTO speed_sd_sl VALUES(NULL,'img/guanwang/sd07.jpg','故园归醉');
INSERT INTO speed_sd_sl VALUES(NULL,'img/guanwang/sd08.jpg','极速空港');

/*创建载具表*/
CREATE TABLE speed_zj(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	img_url VARCHAR(255),
	tit VARCHAR(255),
	sub VARCHAR(255),
	level VARCHAR(255),
	level_3 VARCHAR(255),
	link VARCHAR(255)
);
INSERT INTO speed_zj VALUES(NULL,'img/guanwang/zj1.jpg','蓝影裁决','M2摩托。深蓝色的车身，搭载最新的骇浪发动机，能瞬间爆发极限速度，一跃千里', '载具级别:','M2','查看详情+');
INSERT INTO speed_zj VALUES(NULL,'img/guanwang/zj2.jpg','极炫冰封','B级赛车。冷色系的漆身给人冷酷的感觉，完美的流线型车身将风的阻力减到最小，使赛车呈现最完美的状态', '载具级别:','B','查看详情+');
INSERT INTO speed_zj VALUES(NULL,'img/guanwang/zj3.jpg','樱之翼','M1摩托。超强机车动力搭配白与粉的可爱配色，时尚气息扑面而来，正是驰骋于赛场的一条靓丽风景线', '载具级别:','M1','查看详情+');
INSERT INTO speed_zj VALUES(NULL,'img/guanwang/zj4.jpg','天蓬','A级赛车。车体由特洛伊车神以狱炼之石淬炼而成，结合独特的九齿钉耙般的车头和尾翼设计，威慑全场', '载具级别:','A','查看详情+');
INSERT INTO speed_zj VALUES(NULL,'img/guanwang/zj5.jpg','极音战歌','A级赛车。淡蓝色车身采用稀有金属打造，锐角式车型搭配极速引擎，能完美适应任何路况带来的不良影响', '载具级别:','A','查看详情+');
INSERT INTO speed_zj VALUES(NULL,'img/guanwang/zj6.jpg','魅影王爵','A级赛车。自外星系的材料打造而成的黑紫车身，充满神秘色彩，超低底盘配载高轮毂设计，领跑赛场', '载具级别:','A','查看详情+');
INSERT INTO speed_zj VALUES(NULL,'img/guanwang/zj7.jpg','幻影战神','A级赛车。炫酷的黑色机甲外观，搭载V6双涡轮增压引擎作为动力来源，将赛车性能提升至最大', '载具级别:','A','查看详情+');
INSERT INTO speed_zj VALUES(NULL,'img/guanwang/zj8.jpg','甜蜜旋风','B级赛车。奶油烧制而成的车身搭配糖果制成轮毂，一款童心十足的概念车，助你在飞车世界体验梦幻和甜蜜', '载具级别:','B','查看详情+');

/*创建载具缩略表*/
CREATE TABLE speed_zj_sl(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	img_url VARCHAR(255),
	tit VARCHAR(255)
);
INSERT INTO speed_zj_sl VALUES(NULL,'img/guanwang/zj01.jpg','蓝影裁决');
INSERT INTO speed_zj_sl VALUES(NULL,'img/guanwang/zj02.jpg','极炫冰封');
INSERT INTO speed_zj_sl VALUES(NULL,'img/guanwang/zj03.png','樱之翼');
INSERT INTO speed_zj_sl VALUES(NULL,'img/guanwang/zj04.jpg','天蓬');
INSERT INTO speed_zj_sl VALUES(NULL,'img/guanwang/zj05.jpg','极音战歌');
INSERT INTO speed_zj_sl VALUES(NULL,'img/guanwang/zj06.jpg','魅影王爵');
INSERT INTO speed_zj_sl VALUES(NULL,'img/guanwang/zj07.jpg','幻影战神');
INSERT INTO speed_zj_sl VALUES(NULL,'img/guanwang/zj08.jpg','甜蜜旋风');


/*创建宠物表*/
CREATE TABLE speed_cw(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	img_url VARCHAR(255),
	tit VARCHAR(255),
	sub VARCHAR(255),
	link VARCHAR(255)
);
INSERT INTO speed_cw VALUES(NULL,'img/guanwang/cw1.jpg','羊驼绵绵','蓝蓝的眼睛无辜可爱，洁白柔软的毛让人心生向往，蝴蝶结铃铛系在颈间，心形的印记展现梦幻心迹','查看详情+');
INSERT INTO speed_cw VALUES(NULL,'img/guanwang/cw2.jpg','雷震子','雷震子的战吼总会带给对手巨大的压力，它代表着胜利，代表着风驰电掣，代表着飞车王国之极速','查看详情+');
INSERT INTO speed_cw VALUES(NULL,'img/guanwang/cw3.jpg','未来机器人','来自未来的机器人，雪白的外壳所组成外形加上一对碧绿的眼睛，仿佛在其中蕴含着无穷的秘密','查看详情+');
INSERT INTO speed_cw VALUES(NULL,'img/guanwang/cw4.jpg','幻影战龙','暗影组织对经过远古龙基因进行提取改造后，以全新形态觉醒世间，有着强大的破坏力', '查看详情+');
INSERT INTO speed_cw VALUES(NULL,'img/guanwang/cw5.jpg','火麒麟','红红火火，金光灿灿，不怒自威，金鬓随风飘扬，尾巴火苗热烈，犄角中封印着神秘力量。','查看详情+');
INSERT INTO speed_cw VALUES(NULL,'img/guanwang/cw6.jpg','福猪嘟嘟','憨厚可爱的小猪顶着舞狮的头饰，龙马精神，小小的眼睛闪烁着对未来的期冀。','查看详情+');
INSERT INTO speed_cw VALUES(NULL,'img/guanwang/cw7.jpg','天蓬元帅','天蓬大元帅为嗣教外台卿，别有神局，是阴治之有司，号北极驱邪院，如世之殿师，兵府是也。', '查看详情+');
INSERT INTO speed_cw VALUES(NULL,'img/guanwang/cw8.jpg','鹿力大仙','坚定的绿色瞳孔，头上长长的犄角充满了神力，不知是哪位神仙的神宠下凡，与赛车手共同战胜对手', '查看详情+');

/*创建宠物缩略表*/
CREATE TABLE speed_cw_sl(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	img_url VARCHAR(255),
	tit VARCHAR(255)
);
INSERT INTO speed_cw_sl VALUES(NULL,'img/guanwang/cw01.png','羊驼绵绵');
INSERT INTO speed_cw_sl VALUES(NULL,'img/guanwang/cw02.jpg','雷震子');
INSERT INTO speed_cw_sl VALUES(NULL,'img/guanwang/cw03.jpg','未来机器人');
INSERT INTO speed_cw_sl VALUES(NULL,'img/guanwang/cw04.jpg','幻影战龙');
INSERT INTO speed_cw_sl VALUES(NULL,'img/guanwang/cw05.jpg','火麒麟');
INSERT INTO speed_cw_sl VALUES(NULL,'img/guanwang/cw06.jpg','福猪嘟嘟');
INSERT INTO speed_cw_sl VALUES(NULL,'img/guanwang/cw07.jpg','天蓬元帅');
INSERT INTO speed_cw_sl VALUES(NULL,'img/guanwang/cw08.jpg','鹿力大仙');