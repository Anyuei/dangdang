/*��Ʒid����*/
create sequence product_seq;
/*��Ʒ��*/
drop table dangproduct;


select * from dangproduct;
create table dangproduct(
       id varchar2(9) primary key,
       name varchar2(50 char) not null unique,
       detials varchar2(500 char),
       sales number(10),
       price number(12,2)
)
insert into dangproduct values(product_seq.nextval,'��ϲ����������������','��ãã����䣬ÿ���˶�ֻ��һ������Ļ��ᣬ����һ����һ�޶��������ظ��Ĵ��ڡ��������Ʋ���֪ʶ�ȵ�������֮����˶��������֮����û�����ܹ��������������������֮��û�����ܹ��������ٻ�һ�Ρ���ô����һ�ε���������Ӧ����ô�ȹ����ܹ�ƽ˵��ÿ������Ҫ�����������������ӣ�������Ȼ֮�ӡ�

  ����԰����澳���¶�����������ʵ������������ʱ����Ӧ��������ʲô����״̬���Ǳ���*���������ڡ�ϣ��������Ϊ�ڷ��ӵ��������Ҳ���ͷ�����㣬����ǿ���������硣

  ����Ϊ��ѧ���ܹ�ƽ��������ɢ�ľ�����ȫ�������ɫӡˢ�����Դ���������ͼƬ�����������Ӿ������и����������ǻۡ�',0,41.4 );
insert into dangproduct values(product_seq.nextval,' ��������','���������ǡ������������д�����Դ�ɢ�ġ����������������飬
�Ӳ��������������Ի�Ȼ��ɣ�����һ�ģ���ֶ��������������ˡ�֮���磬��Ϊ�����������Ƴ磬���������ѳɾ��䡣
���γ���ѡ������������Ϊ�ױ������ԡ�������Ա�������˪�����������������Ӣ�뱾���µ�У�������ż��⾫��������
���������Ϊ���ߵ�����������¼���򸴵�һ���������������ʮ������ͼ��������������������򡱡���������ǡ�
�������������ϡ������ڶ������Ѹ��ö����й�ֿ�����䣬���л��档',2,32 );
insert into dangproduct values(product_seq.nextval,'���˼�ʻ���','������ά�Ĵ����������й�����*��ʢ����һ���ʻ����������ô�ͳ�Ĵʻ���ʽ����ͳ�ĸ�������˼ά�߼�����Ϊ��Ȼ���ڽ���һЩ�µĹ���ͷ��������ܽ�����������־����൱�ձ�����壬���ʹ���ڵ�ʱ�¾������Ķ����в������ش��죬���й�������ѧ����ʷ�Ͼ��г�ߵĵ�λ����������ۺ����ǡ����硱˵������۵���ӱ�����۾��٣��Գ���ϵ���ر���������������ؾ���˵һֱ�ܵ�������ѧ�ߵ����ӡ�',
1,8.6);

insert into dangproduct values(product_seq.nextval,'�����������ζ����������','Ը������ͯ�棬���ִ˲�ƣ��ȥ����һ���ˣ�����Ա仯Ī�������ʱ�������Ĳ����޴����ӵĸп������ǡ�����ϲ�á��������ġ�������Ȼ������̬����һ��ͯ�Ĺ�����������ˣ��ض��Ƕ�������������ζ���ˣ�Ҳ�����ļ���ǿ����ˡ�
ȫ����¼�����������˲������κۡ����������ǡ���40ƪ����������ɢ����Ʒ����ѡ40���ȫ��������������ԭ�������������¡���Ȼ�ı�ɫ���ڷ׷����ӵ�������ø�����ľ����������ĸ����ճ���һ��ʳ��һư����һ��������������������ζ����',
5,21.0);

insert into dangproduct values(product_seq.nextval,'���ڶ��� ��ƽ���Ķ�������','ƽ����������ϲ�������������������ķ��š������������ڵģ�Ҫô���������������Ĵ�أ�Ҫô�����������Լ����鷿��

������ʵҲϲ�����֣�ֻ�����������ֲ����ǵƻ���ã��������ĵİ�������е����ڡ�

�Ȿ��д��С��İ��á�̸��ᡢ˵���������������ǻۣ�Ҳ�������Ȥζ��

���ڴҴҵ�·�ˣ�ƽ�������ⲿ�ļ�ֻ��������ӹ���ŵ�������Ȿ��ȴҪд�����������ߡ�Ը�����ܶ��ù¶������壬���������һЩ����������',
23,19.5);
insert into dangproduct values(product_seq.nextval,'Ŀ�ͣ���Ӧ̨���������顱֮��','21���͵ġ���Ӱ�� ��������ġ������ʼǡ� ��Ӧ̨������Ӱ ����������������֮�顭��
����Щ·����ֻ��һ�����ߡ�������',
3,25);
insert into dangproduct values(product_seq.nextval,'�߶��Ǻ�',' ����Զ�볾������������Ȼ�İ�����Ѱ��һ�ֱ��������״̬��Ѱ��һ�ָ�ʫ���������߶��Ǻ���һ�飬��ϸ�ؼ�¼�������ڳ��������ʱ������ճ�����״̬�Լ���˼���룬����Сľ���Կ����ֵأ��������գ��Ը����㡣����һ����Ȼ֮�ӣ���������Ȼ������Ȼ�����ѣ����ˮ��ɭ�ֺͷ���Ի��������й۲춯���ֲ��ڴ��ϴ��ѣ��ں��ߵ��㣬���ϣ���Сľ���м����Լ��Ĺ۲��˼������׷���������ע���ĳɳ��������������ƣ���ÿ���˶����Լ������Ĺ����������������ȣ�ɳ�ʵ۹�Ҳ������һ����΢С�����������ѩ���е�Сѩ�š�������������ʵ���ж��������ǣ�������׷��Ĵ󲿷��ݳ�Ʒ���󲿷ֵ���ν��������ʣ��ǵ�û�б�Ҫ�����Ҷ�����������з�����

���߶��Ǻ��������������ڼ�����������˼�����������ҵ���·���̣��ı������񵭣�������˼������һ��ʹ�˳����������� ',
56,8.1);

insert into dangproduct values(product_seq.nextval,'�����˼�������',' �������˼������졷��¼���ֻ��򼸺����е�ʫ�衢ɢ�ġ�С˵������ʫ�衶˭���ⲻϢ�ı�á��������˼�������졷����������ɢ�ġ���־Ħ����һƬ���⡷��С˵����ʮ�Ŷ��С���ģӰ��ƪ���������˿ڵ���ƪ�����ݺ������ҷḻ��һ���鼴���˽�ȫ�����ֻ��� ',
1,7.5);

insert into dangproduct values(product_seq.nextval,'������˹��ħŮ',' ��������˹��ħŮ����Ұ���������ʵ���ң������⡷֮���ٴε��뼫�����Ԩ���������ӻ��꡷֮�󣬻ع�����֮�������ձ����������ٰ棬����5�죬����ͻ��26��ᣡ ',
4,6.9);

insert into dangproduct values(product_seq.nextval,'��������',' ʮ���໥İ������ݸ����������ǰ�����Ŀ�������һ���µ��ϵĺ�լ�����˵��������ȴû�г��֡�����һ�����ص���������ָ�أ��ֱ�˵��ÿ���������������ܡ����ţ�һλ����������������������С��������������ʮ��Сʿ�����������׹��ϵ�ͯҥ�������������ͬ��ҥ����Ԥ�Եģ�����һ����һ����ȥ����ɱ����Ϸ�����󣬾���һ��������  ',
12,6.9);
insert into dangproduct values(product_seq.nextval,'��ҹ��','��԰�������ұߣ���С���������������ݰ��򿪴򣬴���ԽҰ��Ϸ����ǧ�����ݵȹ�԰������������ʩһӦ��ȫ��������԰�Ǹ���*��һ������ʽ���ƽ���ι�԰ ',
0,19.9);
insert into dangproduct values(product_seq.nextval,'�������Ҳ���ѡ��Ʒ��','�ἰ�ձ�������һ��������Զ�޷��رܣ��Ǳ��ǽ������Ҳ������������ߣ��ǵ���ˣ����ձ�������ѧ�ľ��������������û�н������Ҳ����ձ������ѳ���ѧ�����������С��ٻ����ޡ��ľ��档�Ҳ�����Զ���ѽ�������ͣ�ȴ���ɱ������ձ�����С˵������Ϊ�����桱�����������������ġ��������Ҳ��������������ձ�����ȫ����*Ӱ������������ѧ����֮һ�����ۺṵ��ʷ�����ɱ����ţ����۵���ׯ˾���Ƕ�Ұ���ᣬ�޲��ܵ��������Ҳ���Ӱ�졣����װ��ѡ�������Ҳ�*�����ԵĽ���13������¼��D��ɱ���¼������˼����ӡ����µ�֮���Ȳ��ྭ�䡣  ',
23,39.9);

insert into dangproduct values(product_seq.nextval,'һ���̾�������','�����ݡ��������
ʧ���֡�����Ѫ����Ժ�����̾������ƽ���� ���ӳе���һ�����̾��������ֿ�ȭץ�����ɣ�
Ҳ������û���˵İ��ӣ��ۿ��ű���ܵĺ��Ӳ������У���Ϊ�ư������������³������������ﷸ�������Σ�*��ȴ������˷ֵ���������ץ�����ɱ�˷��������Ȳ�����Щ���ߣ�����ο�������ǵļ��ˡ� ����ڰ�Ϊ�У���Ҫʱ�̵ֵ��ڰ����ջ�����Ҫ������׼���ķ�����ӣ�
��Ҫ����ҳ�һ�ŵļ�ͥ������ո�һ�յĶ����У�
��Ҳ��ʧ�ء�ʧ�䡢ʧ�ܣ���������Ҫ������������ִ���ߵ����һֱ������������Ļ�ɫ��Ե�� ',
4,8.9);
insert into dangproduct values(product_seq.nextval,'�λû�','���λû���
ͻ���˶�Ұ����֮ǰ��д���ַ��������߷�˼��������֮�������綫Ұ������˵������û�������������һ����Ʒ�л���ô���ʱ��ȥ˼����
��Ұ�����Լ����ӵ�������˵����̰����ִ������顢���顢����ȵ��������õ����������һ�����Ͻ����߼�����ʹ֮��Ϊһ¯��  ',
4,28.3);
insert into dangproduct values(product_seq.nextval,'���޵�ʮ�ּ�','�����޵�ʮ�ּܡ�ֱ����ս���������⣬
��������ѷС˵��������ף��ٵǼ������ݡ���Ʒ������������ʯ�ø������а��1������ 
��������޵�ʮ�ּܡ��԰���ʹ֮�ʣ������������Ρ����顢�����������������쾡�µ�չ�֡�
��Ұ���᲻����ɫ�Ľ���������*�������������˼������ζ���  ',
0,25.8);

insert into dangproduct values(product_seq.nextval,'�ذ����̾��ּ�ȫ2��','���������������Ĳ�ֻ�Ƿ��ɣ�
�������Եĵ��� �ȡ�CSI�����׼���Ѱ���ﰸ�ֳ����ȡ�������������׼��ķ��ﻹԭ ��������ģ�⡢
ҧ����Ѫ�ͷ�����DNA������������֯������ǿ�������� �����������ԵĹ����ذ���
�����������������Ծ��� �������ذ�С��̽��ȫ��¼  ',
23,41.3);

insert into dangproduct values(product_seq.nextval,'����','Ϊ�˺��ӵ���ѧ���ԣ��ĸ���ͥ�������߱������п�ǰ��ѵ���ɷ������β�������ȴ����ҹ����������̹�ף�������ɱ�ġ����ɷ���㱨���������ھ��ǽ������������������У������˵�Ȱ˵���ɷ����ڼ����˻�ʬ�𼣵����У�Ȼ���侲����������ʶ����һ�зǳ��������������౻�ҿ�֮ʱ����ȴ���޷����ѡ��� Ϊ�˺��ӵ�ѧ���ԣ� �ĸ���ͥ�������߱����п�ǰ��ѵ�� �ɷ������β�������ȴ����ҹ������ ����̹�ף�������ɱ�ġ��� �ɷ��㱨������ ���ھ��ǽ������������������У� �����˵�Ȱ˵���ɷ����ڼ��˻�ʬ�𼣵����У� Ȼ���侲����������ʶ����һ�зǳ��������� �����౻��֮ʱ����ȴ���޷����ѡ��� ',
2,22.3);

insert into dangproduct values(product_seq.nextval,'�׽�����','��������X������֮������������Ұ��������Ծ��ס�ӵ��ֵ�÷���˼������ȣ�ԶԶ��Խ������С˵�����롣��һ����굽��һ����꣬�����Ҿ��꣬Ҳ�Ƕ����Ե�����д��  ',
3,21);

insert into dangproduct values(product_seq.nextval,'����Ħ˹̽��ȫ��','100����ǰ�����ڿ��ϵ������µĸ���Ħ˹����*����������̽�����ǲ���ϲ��������̽�����£����Ȱ���������ﱾ��2002��10��16�գ�Ӣ���ʼһ�ѧѧ�����踣��Ħ˹�����о�Ա�ƺţ�Ӣ�����Ҹ���������ʿ��š�һλ�鹹����ô����٣���ʷ��*���£�������˵����ȫ���緶Χ�ڻ��������˿�ˡ�Ϊ�δ�Խ100�����������������������  ',
11,82.8);

insert into dangproduct values(product_seq.nextval,'��ҹ�ߣ��ﰸ�ս��ߵľ���','��ҽ����ȫ��ϵ�С���ҹ�ߡ������ܶԾ��ڰ��е�22���ӷ��� һ׮����Խ������22���ӷ������ͷ����Щ���׼�����ӷ�֮�У�����ɱ���ˣ���������Ѫ�������˷Ż�ר�������������ʱ�������ٶ���������Ϊ�ϰ��о����������ߵ�ج�Ρ� ����ѹ��֮�£�һ�������Ѿõ�������֯����ҹ�ߡ�����������������ӵ����ʣ�������Ե���Į�������Ů���������������Ϊ������ϰѧԱ����ҹ����̭���Ʋпᣬÿ�ܶ������˳��֡�Ȼ�����п���ǣ�ڤڤ���ƺ����������������ܣ�ÿ�����ǽӽ��ӷ�ʱ������*��׷�����ģ���ֻ��һ��ʬ�塭�� 3���£�22���ӷ���1������ɱ�֣����ⳡ����ʱ��׷����Ϸ�У�˭�Ż�Ц��*�� ���в����ذ��ʵ����ҵ���Ϸ������Ҳ���Գ�Ϊ��ҹ�ߵ���Ԯ�� ',
1,19.9);

insert into dangproduct values(product_seq.nextval,'���޵�ʮ�ּ�','�����޵�ʮ�ּܡ�ֱ����ս���������⣬
��������ѷС˵��������ף��ٵǼ������ݡ���Ʒ������������ʯ�ø������а��1������ 
��������޵�ʮ�ּܡ��԰���ʹ֮�ʣ������������Ρ����顢�����������������쾡�µ�չ�֡�
��Ұ���᲻����ɫ�Ľ���������*�������������˼������ζ���  ',
1,19.9);
insert into dangproduct values(product_seq.nextval
,'׷���ݵ���'
,'�ҳ�Ϊ������ң�����1975��ĳ�������ܲ��ĺ��䶬�գ�������ʮ���ꡣ������ؼǵõ�ʱ�Լ�ſ��һ��̮������ǽ���棬����������С��Ա��ǽ����СϪ��������ȥ�ˣ�����˵������¿��Ա����ᣬȻ���������������Ǵ�ģ���Ϊ���»�������������  '
,3
,22.9);
insert into dangproduct values(product_seq.nextval
,'��Ϊʹ�����Խл���'
,'�����ײ���������ϵ������Ʒ������ů���˵����С˵�����ݻ����������� '
,3
,19);
insert into dangproduct values(product_seq.nextval
,'�嵥����'
,'������-�����������������󵽵�zui��Ȥ��63��Ů�ˣ���Ϊ�����������������κβ�����ÿ��6��׼ʱ�𴲣�12������òͣ��Ӳ�����ں���ţ����������һ����Ⱦ������Ͳ���"�����˵�����"�������������嵥��������һ�ż�¼�����嵥���嵥���Ա�֤�����ɷ��̫ƽ��������һʧ��  '
,6
,24.4);
insert into dangproduct values(product_seq.nextval
,'��˵�����ڸ���'
,'�����Ե������ǳ���ײ����������
����ȫ���޶�+���ҷ���
����һ�����������������н��ڵİ��������
��������������Ұ��Һޣ�����ȴǱ���Ŷ�������
���������Ķ��ţ����ר�飬ԸΪ���޸����˵İ��� '
,2
,32);
insert into dangproduct values(product_seq.nextval
,'ĺ��֮��(��װ��4��)'
,' �����Ű��������������������ž�����򡤰�˹�����ﵽ������С˵��һ�ּ��¡�
��������������������������������ʱ�����ܿ� '
,440
,22.3);
insert into dangproduct values(product_seq.nextval
,'����'
,'Ƭͩ�����������ܸɵĶ��а��죬ȴ����ҵ�гɵ��ѻ���������ԶҰʼ�ձ����š����ˡ���ϵ�������ϻ۶����ƽ����⣬��˴��Ⱞ���Լ���������ԶҰԽ��Խ���ԣ����ھ���������ͥ�������ӽ�顣Ȼ��������ȴ�ڴ�ʱ����˷��֡���  '
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

/*���۱�*/
drop table dangComment;
select * from dangComment;
create table dangComment(
       Comment_Uid varchar2(9) references dangUser(id),
       dcomment varchar2(200 char),
       dcomment_Time date,
       comment_pid varchar2(9) references dangproduct(id)
)
insert into dangComment values('100000001','�൱�ĺÿ���',sysdate,'22');
insert into dangComment values('100000001','�൱�ĺÿ���2',sysdate,'22');
commit;
/*��ƷͼƬ��*/
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



/*�û���*/
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
insert into dangUser values(dangUser_seq.Nextval,'С��','gakki','670b14728ad9902aecba32e22fa4f6bd','15639919415','ayp199645aabb@qq.com');
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
/*��ַ��*/
drop table danguser_address;
create table danguser_address(
    address_id varchar2(9) references dangUser(id),
    address varchar2(200 char)  
)
/*���۱�*/
select * from YG_user;
select * from Yg_Product;
/*��Ʒ���ѯ����*/
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
    
/*��ѯ���в��ҷ�ҳ*/
select id as pId,name as pName,detials as pDetials,sales,price,img_id,img_path as path from (select sp.*,rownum rn from 
			(select * from dangproduct left join
			product_imgPath pip on dangproduct.id=pip.img_id where name like '%%')sp)
      
			where rn>=1 and rn<=5;
commit;
/*������*/
drop table d_order;
create table d_order(
       order_id varchar2(20) primary key,/*�������*/
       order_uid varchar2(9) references danguser(id),/*�������û�id*/
)
/*������Ʒ��*/
create table o_pDetail(
       o_pDetail_id varchar2(20) primary key,/*����������*/
       o_pDetail_pid varchar2(9) references dangproduct(id)
)
select max(rownum) from YG_product where productName like '%J%';
/*�����*/
create table category(
       category_id varchar2(4) primary key,
       category_father varchar2(4),
       category_name varchar2(9 char)
)
drop table category;
select * from category;
insert into category values(010,000,'С˵');
insert into category values(020,000,'����');
insert into category values(030,000,'��ʷ�Ļ�');
insert into category values(040,000,'����/����');

insert into category values(011,010,'��̽/����/����');
insert into category values(012,010,'���/����');
insert into category values(013,010,'�ƻ�/ħ��');
update category set category_name='��Ʒ��'where category_id=014;
insert into category values(014,010,'��Ʒ��');
insert into category values(015,010,'���С˵');

insert into category values(021,020,'��ѧ');
insert into category values(022,020,'�ഺ��ѧ');
insert into category values(023,020,'����');
insert into category values(024,020,'����');
insert into category values(025,020,'����/��Ĭ');

insert into category values(031,030,'��ѧ/�ڽ�');
insert into category values(032,030,'��ʷ');
insert into category values(033,030,'����/����');
insert into category values(034,030,'�Ļ�');
insert into category values(035,030,'����ѧ');
insert into category values(036,030,'�ż�');
insert into category values(037,030,'����');
insert into category values(041,040,'����');
insert into category values(042,040,'����');
insert into category values(043,040,'Ͷ�����');
insert into category values(044,040,'�г�Ӫ��');
insert into category values(045,040,'����ͨ');
insert into category values(046,040,'�й�����');
insert into category values(047,040,'���ʾ���');

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

/*��Ʒ����ӳ���*/
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
join product_imgPath pi on pid=pi.img_id join dangproduct dp on dp.id=pid where c.category_name='��̽/����/����';
select 
id as pId,name as pName,detials as pDetials,sales,price from pd_category pc 
join category c on pc.category_id=c.category_id 
join product_imgPath pi on pid=pi.img_id join dangproduct dp on dp.id=pid where c.category_name='��̽/����/����';
	  select 	id as pId,name as pName,detials as pDetials,sales,price 
    from(
    select 
		 p.*,rownum rn
		from(
		select 
		*
		from pd_category pc
		join category c on pc.category_id=c.category_id 
		join product_imgPath pi on pid=pi.img_id join dangproduct dp on dp.id=pid where c.category_name like '%���%')p)
		WHERE rn>=1 and rn<=12;

commit;
