/*产品id序列*/
create sequence product_seq;
/*产品表*/
drop table dangproduct;


select * from dangproduct;
create table dangproduct(
       id varchar2(9) primary key,
       name varchar2(50 char) not null unique,
       detials varchar2(500 char),
       sales number(10),
       price number(12,2)
)
insert into dangproduct values(product_seq.nextval,'我喜欢生命本来的样子','在茫茫宇宙间，每个人都只有一次生存的机会，都是一个独一无二、不可重复的存在。名声、财产、知识等等是身外之物，人人都可求而得之，但没有人能够代替你感受人生。你死之后，没有人能够代替你再活一次。那么仅有一次的人生到底应该怎么度过？周国平说，每个个体要尊重生命本来的样子，当好自然之子。

  当面对爱、逆境、孤独、死亡、变故等人生大命题的时候，人应当保持在什么心理状态，是本书*的意义所在。希望本书能为在繁杂的世界里找不到头绪的你，建立强大的灵魂世界。

  本书为哲学家周国平先生毕生散文精华，全书采用四色印刷，配以大量精美的图片，在完美的视觉体验中感悟生命的智慧。',0,41.4 );
insert into dangproduct values(product_seq.nextval,' 浮生六记','《浮生六记》是清代文人沈复写作的自传散文。因其以真言述真情，
从不刻意造作，得以浑然天成，独树一帜，达“乐而不淫，哀而不伤”之境界，深为后世文人所推崇，流传至今，已成经典。
本次出版选开明书店民国本为底本，考以《雁来红丛报》本、霜枫社民国本、林语堂英译本重新点校；并请张佳玮精心译述，
作长文译记为读者导读；独家收录“沈复的一生”（年表）“沈复三十年游历图”，附“光绪三年初版序”“潘麐生题记”
“光绪三年初版跋”，便于读者朋友更好读懂中国挚美经典，从中获益。',2,32 );
insert into dangproduct values(product_seq.nextval,'《人间词话》','是王国维的代表作，是中国近代*负盛名的一部词话著作。他用传统的词话形式及传统的概念、术语和思维逻辑，较为自然地融进了一些新的观念和方法，其总结的理论问题又具有相当普遍的意义，这就使它在当时新旧两代的读者中产生了重大反响，在中国近代文学批评史上具有崇高的地位。本书的理论核心是“境界”说，该书观点新颖，立论精辟，自成体系，特别是书中提出的三重境界说一直受到国内外学者的重视。',
1,8.6);

insert into dangproduct values(product_seq.nextval,'丰子恺万般滋味，都是生活','愿你永葆童真，并乐此不疲，去生活一个人，在面对变化莫测的世界时，怀揣的不是无处可逃的感慨，而是“不如喜悦、不如清心、不如释然”的心态，以一颗童心过生活，这样的人，必定是懂得生活真正滋味的人，也是内心极其强大的人。
全面收录《渐》《大账簿》《梦痕》《给孩子们》等40篇丰子恺经典散文作品，精选40余幅全彩漫画，完美还原丰子恺漫画清新、自然的本色。在纷繁复杂的世界里，让浮躁的心静下来，用心感受日常的一箪食、一瓢饮、一豆羹，安享生活的万般滋味……',
5,21.0);

insert into dangproduct values(product_seq.nextval,'自在独行 贾平凹的独行世界','平凹先生素来喜静，很怕有人来敲他的房门。让他觉得自在的，要么就是行走于西北的大地，要么就是隐居在自己的书房。

先生其实也喜欢热闹，只是先生的热闹并不是灯火灿烂，而是内心的安宁与独行的自在。

这本书写情感、聊爱好、谈社会、说人生。有俗世的智慧，也有生活的趣味。

对于匆匆的路人，平凹先生这部文集只是用来附庸风雅的玩物。但这本书却要写给生命的行者。愿他们能懂得孤独的真义，在生活里多一些从容潇洒。',
23,19.5);
insert into dangproduct values(product_seq.nextval,'目送：龙应台“人生三书”之三','21世纪的《背影》 感人至深的“生死笔记” 龙应台亲手摄影 跨三代共读的人生之书……
“有些路啊，只能一个人走……”。',
3,25);
insert into dangproduct values(product_seq.nextval,'瓦尔登湖',' 梭罗远离尘嚣，他想在自然的安谧中寻找一种本真的生存状态，寻求一种更诗意的生活。《瓦尔登湖》一书，详细地记录了作家在长达两年的时间里的日常生活状态以及所思所想，他在小木屋旁开荒种地，春种秋收，自给自足。他是一个自然之子，他崇尚自然，与自然交朋友，与湖水、森林和飞鸟对话，在林中观察动物和植物，在船上吹笛，在湖边钓鱼，晚上，在小木屋中记下自己的观察和思考。他追求精神生活，关注灵魂的成长，他骄傲地宣称：“每个人都是自己王国的国王，与这个王国相比，沙皇帝国也不过是一个卑微小国，犹如冰天雪地中的小雪团。”梭罗以他的实际行动告诉我们：人们所追求的大部分奢侈品，大部分的所谓生活的舒适，非但没有必要，而且对人类进步大有妨碍。

《瓦尔登湖》记述了作者在简单生活中深入思考与重塑自我的心路历程，文笔宁静恬淡，引人深思，具有一种使人沉静的力量。 ',
56,8.1);

insert into dangproduct values(product_seq.nextval,'你是人间四月天',' 《你是人间四月天》收录了林徽因几乎所有的诗歌、散文、小说。包括诗歌《谁爱这不息的变幻》《你是人间的四月天》《激昂》，散文《悼志摩》《一片阳光》，小说《九十九度中》《模影零篇》等脍炙人口的名篇，内容含量大且丰富，一本书即可了解全部的林徽因。 ',
1,7.5);

insert into dangproduct values(product_seq.nextval,'拉普拉斯的魔女',' 《拉普拉斯的魔女》东野圭吾的人性实验室，《恶意》之后，再次跌入极恶的深渊。《解忧杂货店》之后，回归推理之作。在日本上市旋即再版，上市5天，销量突破26万册！ ',
4,6.9);

insert into dangproduct values(product_seq.nextval,'无人生还',' 十个相互陌生、身份各异的人受邀前往德文郡海岸边一座孤岛上的豪宅。客人到齐后，主人却没有出现。当晚，一个神秘的声音发出指控，分别说出每个人心中罪恶的秘密。接着，一位客人离奇死亡。暴风雨让小岛与世隔绝，《十个小士兵》——这首古老的童谣成了死亡咒语。如同歌谣中所预言的，客人一个接一个死去……杀人游戏结束后，竟无一人生还！  ',
12,6.9);
insert into dangproduct values(product_seq.nextval,'白夜行','公园出现在右边，大小足以容纳两场三垒棒球开打，丛林越野游戏、秋千、滑梯等公园常见的游乐设施一应俱全。这座公园是附近*的一座，正式名称叫真澄公园 ',
0,19.9);
insert into dangproduct values(product_seq.nextval,'江户川乱步严选作品集','提及日本推理，有一个名字永远无法回避，那便是江户川乱步。他是先行者，是奠基人，是日本推理文学的精神和中流砥柱。没有江户川乱步，日本推理难成文学，更不可能有“百花争艳”的局面。乱步先生远行已近半个世纪，却依旧被所有日本推理小说作家尊为“鼻祖”；以他的名字命名的“江户川乱步奖”，依旧是日本乃至全世界*影响力的推理文学奖项之一。无论横沟正史还是松本清张，无论岛田庄司还是东野圭吾，无不受到江户川乱步的影响。本套装精选江户川乱步*代表性的杰作13部。收录《D坂杀人事件》《人间椅子》《孤岛之鬼》等不朽经典。  ',
23,39.9);

insert into dangproduct values(product_seq.nextval,'一个刑警的日子','斗过狠、玩过命、
失过手、流过血、后院起过火、叹过不公平…… 刘子承当了一辈子刑警。他赤手空拳抓过毒枭，
也遇见过没破了的案子，眼看着被绑架的孩子惨死井中；他为破案出入过各类地下场所，甚至和罪犯建立信任，*后却与枕边人分道扬镳；他还抓过许多杀人犯，可他救不活那些死者，更安慰不了他们的家人。 他与黑暗为敌，还要时刻抵挡黑暗的诱惑。他既要面对穷凶极恶的犯罪分子，
又要面对乱成一团的家庭生活。在日复一日的斗争中，
他也曾失控、失落、失败，但日子总要继续，他将以执法者的身份一直游走于这个社会的灰色边缘。 ',
4,8.9);
insert into dangproduct values(product_seq.nextval,'梦幻花','《梦幻花》
突破了东野圭吾之前的写作手法，是作者费思量的迷人之作。正如东野圭吾所说：从来没有像这次这样在一部作品中花这么多的时间去思考。
东野圭吾以简单质朴的语言诉说人性贪婪的执念，与亲情、爱情、恩情等等人类美好的情感杂糅在一起，用严谨的逻辑推理使之融为一炉。  ',
4,28.3);
insert into dangproduct values(product_seq.nextval,'虚无的十字架','《虚无的十字架》直面挑战社会道德议题，
长踞亚马逊小说畅销榜榜首！荣登纪伊国屋、诚品、博客来、金石堂各大排行榜第1名！、 
　　★《虚无的十字架》以爱与痛之笔，将人生的无奈、温情、绝望等情绪做到淋漓尽致的展现。
东野圭吾不动声色的搅动人内心*深处的情绪，让人思考并回味无穷。  ',
0,25.8);

insert into dangproduct values(product_seq.nextval,'特案科刑警手记全2册','他们用生命捍卫的不只是法律，
还有人性的底线 比《CSI》更凶迹难寻的罪案现场，比《犯罪心理》更精准深的犯罪还原 犯罪心理模拟、
咬痕与血型分析、DNA鉴定、人体组织显像增强技术…… 六个极度烧脑的诡异重案，
六段振聋发聩的人性救赎 公安厅特案小组探案全记录  ',
23,41.3);

insert into dangproduct values(product_seq.nextval,'湖畔','为了孩子的入学考试，四个家庭来到湖边别墅进行考前集训。丈夫的情人尾随而至，却在深夜遇害。妻子坦白：“是我杀的。”丈夫打算报警处理，但邻居们竭力帮助妻子隐瞒罪行，在众人的劝说下丈夫终于加入了毁尸灭迹的行列，然而冷静下来他才意识到这一切非常不合情理。当真相被揭开之时，他却已无法挣脱…… 为了孩子的学考试， 四个家庭来到湖边别墅行考前集训。 丈夫的情人尾随而至，却在深夜遇害。 妻子坦白：“是我杀的。” 丈夫算报警处理， 但邻居们竭力帮助妻子隐瞒罪行， 在众人的劝说下丈夫终于加了毁尸灭迹的行列， 然而冷静下来他才意识到这一切非常不合情理。 当真相被揭之时，他却已无法挣脱…… ',
2,22.3);

insert into dangproduct values(product_seq.nextval,'白金数据','《嫌疑人X的献身》之后，推理天王东野圭吾的烧脑巨献。拥有值得反复思考的深度，远远超越“推理小说”范畴。从一个灵魂到另一个灵魂，是自我救赎，也是对人性的深层读写。  ',
3,21);

insert into dangproduct values(product_seq.nextval,'福尔摩斯探案全集','100多年前诞生于柯南道尔笔下的福尔摩斯，是*有魅力的侦探。人们不仅喜欢看他的探案故事，更热爱着这个人物本身。2002年10月16日，英国皇家化学学会授予福尔摩斯荣誉研究员称号；英国皇室更授予他爵士封号。一位虚构人物得此殊荣，是史上*的事，更不用说他在全世界范围内还有亿万粉丝了。为何穿越100多年光阴，他仍魅力不减？  ',
11,82.8);

insert into dangproduct values(product_seq.nextval,'守夜者：罪案终结者的觉醒','法医秦明全新系列“守夜者”，高能对决黑暗中的22个逃犯！ 一桩离奇越狱案，22个逃犯流入街头。这些穷凶极恶的逃犯之中，有人杀过人，有人饮过血，还有人放火专烧新娘……他们随时都可能再度作案，成为南安市居民难以入眠的噩梦。 重重压力之下，一个尘封已久的神秘组织“守夜者”获得重启。机敏顽劣的萧朗，冷峻寡言的凌漠，天才少女唐铛铛阴差阳错成为首批见习学员。守夜者淘汰机制残酷，每周都有新人出局。然而更残酷的是，冥冥中似乎有人在与他们赛跑，每当他们接近逃犯时，他们*终追捕到的，都只是一具尸体…… 3个月，22个逃犯，1个神秘杀手，在这场倒计时的追捕游戏中，谁才会笑到*后？ 书中藏有重磅彩蛋，找到游戏规则，你也可以成为守夜者的外援！ ',
1,19.9);

insert into dangproduct values(product_seq.nextval,'虚无的十字架','《虚无的十字架》直面挑战社会道德议题，
长踞亚马逊小说畅销榜榜首！荣登纪伊国屋、诚品、博客来、金石堂各大排行榜第1名！、 
　　★《虚无的十字架》以爱与痛之笔，将人生的无奈、温情、绝望等情绪做到淋漓尽致的展现。
东野圭吾不动声色的搅动人内心*深处的情绪，让人思考并回味无穷。  ',
1,19.9);
insert into dangproduct values(product_seq.nextval
,'追风筝的人'
,'我成为今天的我，是在1975年某个阴云密布的寒冷冬日，那年我十二岁。我清楚地记得当时自己趴在一堵坍塌的泥墙后面，窥视着那条小巷，旁边是结冰的小溪。许多年过去了，人们说陈年旧事可以被埋葬，然而我终于明白这是错的，因为往事会自行爬上来。  '
,3
,22.9);
insert into dangproduct values(product_seq.nextval
,'因为痛，所以叫婚姻'
,'国内首部婚姻疗愈系经典作品，最温暖感人的情感小说，传递婚姻正能量！ '
,3
,19);
insert into dangproduct values(product_seq.nextval
,'清单人生'
,'布里特-玛丽是那种你能想象到的zui无趣的63岁女人，因为她不允许生活里有任何波澜。每天6点准时起床，12点必须用餐，从不在天黑后出门，床单整理得一尘不染，否则就不是"文明人的做法"。她有许多许多清单，甚至有一张记录所有清单的清单，以保证她和丈夫的太平日子万无一失。  '
,6
,24.4);
insert into dangproduct values(product_seq.nextval
,'听说爱情在隔壁'
,'错嫁良缘》作者浅绿首部都市甜宠文
　　全新修订+独家番外
　　一部清新御姐与温雅男教授的爱情邻里剧
　　她随性张扬，敢爱敢恨，心中却潜藏着多年情伤
　　他温文尔雅，深沉专情，愿为她修复受伤的爱情 '
,2
,32);
insert into dangproduct values(product_seq.nextval
,'暮光之城(套装共4册)'
,' 充满着爱恨情仇的张力，但又优雅精致如简·奥斯丁，达到了浪漫小说的一种极致。
　　　　　　　　　　　　　——《时代》周刊 '
,440
,22.3);
insert into dangproduct values(product_seq.nextval
,'情人'
,'片桐修子是美丽能干的都市白领，却与事业有成的已婚中年男子远野始终保持着“情人”关系。独立聪慧而又善解人意，如此纯粹爱着自己的修子令远野越来越着迷，终于决定抛弃家庭，与修子结婚。然而，修子却在此时提出了分手……  '
,32
,28);
insert into dangproduct values(product_seq.nextval
,''
,' '
,
,);
insert into dangproduct values(product_seq.nextval
,''
,' '
,
,);
insert into dangproduct values(product_seq.nextval
,''
,' '
,
,);
insert into dangproduct values(product_seq.nextval
,''
,' '
,
,);
insert into dangproduct values(product_seq.nextval
,''
,' '
,
,);
insert into dangproduct values(product_seq.nextval
,''
,' '
,
,);
select * from dangproduct;

/*评论表*/
drop table dangComment;
select * from dangComment;
create table dangComment(
       Comment_Uid varchar2(9) references dangUser(id),
       dcomment varchar2(200 char),
       dcomment_Time date,
       comment_pid varchar2(9) references dangproduct(id)
)
insert into dangComment values('100000001','相当的好看了',sysdate,'22');
insert into dangComment values('100000001','相当的好看了2',sysdate,'22');
commit;
/*产品图片表*/
drop table product_imgPath;
select * from product_imgPath; 
create table product_imgPath(
       img_id varchar2(9) references dangproduct(id),
       img_path varchar2(100)
)

insert into product_imgPath values('22','/images/bookSellWell/24198400-1_l_4.jpg');
insert into product_imgPath values('22','/images/bookSellWell/bigImage/24198400-1_w_4.jpg');

insert into product_imgPath values('41','/images/bookSellWell/23751637-1_l_20.jpg');
insert into product_imgPath values('42','/images/bookSellWell/23715237-1_l_2.jpg');
insert into product_imgPath values('61','/images/bookSellWell/25308985-1_l_8.jpg');

insert into product_imgPath values('63','/images/bookSellWell/23964981-1_l_5.jpg');
insert into product_imgPath values('64','/images/bookSellWell/23407125-1_l_1.jpg');
insert into product_imgPath values('65','/images/bookSellWell/20971873-1_l_11.jpg');
insert into product_imgPath values('66','/images/bookSellWell/23608680-1_l_12.jpg');
insert into product_imgPath values('67','/images/bookSellWell/1900668261_ii_cover-1.jpg');

insert into product_imgPath values('68','/images/bookSellWell/1900652564_ii_cover.jpg');
insert into product_imgPath values('69','/images/bookSellWell/1900471202_ii_cover.jpg');
insert into product_imgPath values('70','/images/bookSellWell/1901081406_ii_cover.jpg');
insert into product_imgPath values('71','/images/bookSellWell/1901076882_ii_cover.jpg');

insert into product_imgPath values('81','/images/bookSellWell/XuanyiTuili/1900564496_ii_cover.jpg');
insert into product_imgPath values('82','/images/bookSellWell/XuanyiTuili/1900505577_ii_cover.jpg');
insert into product_imgPath values('83','/images/bookSellWell/XuanyiTuili/1900770263_ii_cover.jpg');
insert into product_imgPath values('84','/images/bookSellWell/XuanyiTuili/1900542869_ii_cover.jpg');
insert into product_imgPath values('85','/images/bookSellWell/XuanyiTuili/1900777156_ii_cover.jpg');
insert into product_imgPath values('86','/images/bookSellWell/XuanyiTuili/1900301848_ii_cover.jpg');
insert into product_imgPath values('88','/images/bookSellWell/XuanyiTuili/1900683216_ii_cover.jpg');

insert into product_imgPath values('89','/images/bookSellWell/Qinggan/1900471452_ii_cover.jpg');
insert into product_imgPath values('90','/images/bookSellWell/Qinggan/1900384815_ii_cover.jpg');
insert into product_imgPath values('91','/images/bookSellWell/Qinggan/1900977817_ii_cover-1.jpg');
insert into product_imgPath values('92','/images/bookSellWell/Qinggan/1900492421_ii_cover.jpg');
insert into product_imgPath values('93','/images/bookSellWell/Qinggan/1900598961_ii_cover.jpg');
insert into product_imgPath values('94','/images/bookSellWell/Qinggan/1900564890_ii_cover.jpg');



/*用户表*/
create sequence dangUser_seq start with 100000001;
drop sequence dangUser_seq;
select * from dangUser;
drop table Danguser;
create table dangUser(
       id varchar2(9) primary key,
       name varchar2(12 char),
       nickname varchar2(32 char) unique,
       password char(32),
       tel varchar2(11 char),
       email varchar2(64 char) unique
)
alter table dangUser add email varchar2(64 char) unique;
alter table dangUser modify nickname varchar2(32 char) unique;
select * from dangUser where nickname ='gakki';
insert into dangUser values(dangUser_seq.Nextval,'小沛','gakki','670b14728ad9902aecba32e22fa4f6bd','15639919415','ayp199645aabb@qq.com');
SELECT 
			id,
			name AS uName,
			nickname AS uNickname,
			password AS uPassword,
			tel AS uTel,
			email AS uEmail	from dangUser where id=100000023;
      		SELECT 
			id,
			name AS uName,
			nickname AS uNickname,
			password AS uPassword,
			tel AS uTel,
			email AS uEmail		
		 FROM dangUser WHERE nickname='gakki';
delete from danguser where id=100000026;
commit;
/*地址表*/
drop table danguser_address;
create table danguser_address(
    address_id varchar2(9) references dangUser(id),
    address varchar2(200 char)  
)
/*评论表*/
select * from YG_user;
select * from Yg_Product;
/*产品表查询测试*/
		select 
		id as pId,name as pName,detials as pDetials,sales,price,
		img_id,img_path as path,
		comment_pid as cpId,Comment_Uid as cuid,dcomment as dcomment,dcomment_Time as commentTime
		from dangproduct dp 
		left join 
		dangComment dc on dp.id=dc.comment_pid
		left join
		product_imgPath pip on dp.id=pip.img_id
		where dp.id=22;

		select 
		id as pId,name as pName,detials as pDetials,sales,price,
		img_id,img_path as path
		from dangproduct dp 
		left join
		product_imgPath pip on dp.id=pip.img_id
		where dp.id=22;
    
    select id as pId,name as pName,detials as pDetials,sales,price
    from (
    select oBySalesP.*,rownum rn
    from (select dp.* from dangproduct dp
    where name like '%%' order by sales desc)oBySalesP)
   where rn>=6 and rn<=10;
    
/*查询所有并且分页*/
select id as pId,name as pName,detials as pDetials,sales,price,img_id,img_path as path from (select sp.*,rownum rn from 
			(select * from dangproduct left join
			product_imgPath pip on dangproduct.id=pip.img_id where name like '%%')sp)
      
			where rn>=1 and rn<=5;
commit;
/*订单表*/
drop table d_order;
create table d_order(
       order_id varchar2(20) primary key,/*订单编号*/
       order_uid varchar2(9) references danguser(id),/*从属于用户id*/
)
/*订单商品表*/
create table o_pDetail(
       o_pDetail_id varchar2(20) primary key,/*购买详情编号*/
       o_pDetail_pid varchar2(9) references dangproduct(id)
)
select max(rownum) from YG_product where productName like '%J%';
/*种类表*/
create table category(
       category_id varchar2(4) primary key,
       category_father varchar2(4),
       category_name varchar2(9 char)
)
drop table category;
select * from category;
insert into category values(010,000,'小说');
insert into category values(020,000,'文艺');
insert into category values(030,000,'历史文化');
insert into category values(040,000,'经济/管理');

insert into category values(011,010,'侦探/悬疑/推理');
insert into category values(012,010,'情感/都市');
insert into category values(013,010,'科幻/魔幻');
update category set category_name='作品集'where category_id=014;
insert into category values(014,010,'作品集');
insert into category values(015,010,'外国小说');

insert into category values(021,020,'文学');
insert into category values(022,020,'青春文学');
insert into category values(023,020,'传记');
insert into category values(024,020,'艺术');
insert into category values(025,020,'动漫/幽默');

insert into category values(031,030,'哲学/宗教');
insert into category values(032,030,'历史');
insert into category values(033,030,'政治/军事');
insert into category values(034,030,'文化');
insert into category values(035,030,'社会科学');
insert into category values(036,030,'古籍');
insert into category values(037,030,'法律');
insert into category values(041,040,'管理');
insert into category values(042,040,'经济');
insert into category values(043,040,'投资理财');
insert into category values(044,040,'市场营销');
insert into category values(045,040,'商务沟通');
insert into category values(046,040,'中国经济');
insert into category values(047,040,'国际经济');

select c1.category_id,c1.category_father,c1.category_name,c2.category_id,c2.category_father,c2.category_name 
from category c1 left join category c2 on c1.category_id=c2.category_father where c1.category_id=10;

select 
c2.category_id,c2.category_father,c2.category_name,
c1.category_id,c1.category_father,c1.category_name 
from category c1 join 
category c2 on c2.category_id=c1.category_father ;

select 
c1.category_id,c1.category_father,c1.category_name,
c2.category_id,c2.category_father,c2.category_name 
from category c1 
join category c2 on c1.category_id=c2.category_father ;

select * from category c1 left join category c2 on c1.category_id=c2.category_father;

/*商品种类映射表*/
create table pd_category(
       pid varchar2(9) references Dangproduct(id),
       category_id references category(category_id)
)
select * from pd_category;
insert into pd_category values('67','11');
insert into pd_category values('68','11');
insert into pd_category values('69','11');
insert into pd_category values('70','11');
insert into pd_category values('71','11');
insert into pd_category values('81','11');
insert into pd_category values('82','11');
insert into pd_category values('83','11');
insert into pd_category values('84','11');
insert into pd_category values('85','11');
insert into pd_category values('86','11');
insert into pd_category values('88','11');

insert into pd_category values('89','12');
insert into pd_category values('90','12');
insert into pd_category values('91','12');
insert into pd_category values('92','12');
insert into pd_category values('93','12');
insert into pd_category values('94','12');

insert into pd_category values('95','13');
insert into pd_category values('96','13');
insert into pd_category values('97','13');
insert into pd_category values('98','13');
insert into pd_category values('98','14');
insert into pd_category values('100','14');
select c.category_name,pid,pi.img_path from pd_category pc 
join category c on pc.category_id=c.category_id 
join product_imgPath pi on pid=pi.img_id join dangproduct dp on dp.id=pid where c.category_name='侦探/悬疑/推理';
select 
id as pId,name as pName,detials as pDetials,sales,price from pd_category pc 
join category c on pc.category_id=c.category_id 
join product_imgPath pi on pid=pi.img_id join dangproduct dp on dp.id=pid where c.category_name='侦探/悬疑/推理';
	  select 	id as pId,name as pName,detials as pDetials,sales,price 
    from(
    select 
		 p.*,rownum rn
		from(
		select 
		*
		from pd_category pc
		join category c on pc.category_id=c.category_id 
		join product_imgPath pi on pid=pi.img_id join dangproduct dp on dp.id=pid where c.category_name like '%情感%')p)
		WHERE rn>=1 and rn<=12;

commit;
