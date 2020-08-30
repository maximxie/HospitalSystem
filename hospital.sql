CREATE TABLE personnel(
emp_id int(11) PRIMARY KEY AUTO_INCREMENT comment 'ID号',
emp_no VARCHAR(15) comment '员工号',
emp_name VARCHAR(15) comment '员工姓名',
emp_deptId VARCHAR(15) comment '所在部门号',
emp_duty VARCHAR(15) comment '职务',
emp_xl VARCHAR(15) comment '学历',
emp_gender VARCHAR(15) comment '性别',
emp_birthday DATE comment '生日',
emp_hometown VARCHAR(15) comment '籍贯',
emp_country VARCHAR(15) comment '国籍',
emp_nation VARCHAR(15) comment '民族',
emp_idCard VARCHAR(20) comment '身份证号',
emp_marriage VARCHAR(20) comment '婚姻状况',
emp_health VARCHAR(20) comment '健康状况',
emp_startWork DATE comment '参加工作时间',
emp_state VARCHAR(20) comment '员工状态',
emp_homeAddress VARCHAR(20) comment '家庭住址',
emp_teleNo VARCHAR(20) comment '联系电话',
emp_email VARCHAR(20) comment '联系email地址',
emp_jobId VARCHAR(20) comment '工作岗位代号'
);
insert into personnel values('1','yg001','小华','bm001','主任','本科','男','1998-05-05','衡阳市','中国','汉族','123456','已婚','健康','2020-02-15','在职','衡阳市','16670802495','1244843022@qq.com','gw004'),
('2','yg002','小唐','bm001','副主任','研究生','男','1997-05-05','衡阳市','中国','汉族','123456','已婚','健康','2019-04-15','在职','衡阳市','16670802495','1244843022@qq.com','gw003'),


('3','yg003','小谢','bm002','主任','本科','男','1998-05-05','衡阳市','中国','汉族','123456','已婚','健康','2020-02-15','在职','衡阳市','16670802495','1244843022@qq.com','gw004'),
('4','yg004','小李','bm002','副主任','本科','男','1995-09-15','长沙市','中国','苗族','123456','已婚','健康','2018-10-25','在职','株洲市','16670802495','1244843022@qq.com','gw003'),

('5','yg010','小邓','bm003','主任','本科','男','1998-05-05','郴州市','中国','汉族','123456','已婚','健康','2020-02-15','在职','浏阳市','16670802495','1244843022@qq.com','gw004'),
('6','yg011','小资','bm003','副主任','本科','女','1998-05-05','衡阳市','中国','汉族','123456','已婚','健康','2020-02-15','在职','衡阳市','16670802495','1244843022@qq.com','gw003'),


('7','yg012','小吴','bm004','主任','本科','男','1998-05-05','邵阳市','中国','汉族','123456','已婚','健康','2020-02-15','在职','武汉市','16670802495','1244843022@qq.com','gw004'),
('8','yg013','小欧','bm004','副主任','本科','女','1998-05-05','衡阳市','中国','汉族','123456','已婚','健康','2020-02-15','在职','耒阳市','16670802495','1244843022@qq.com','gw003'),


('9','yg005','小刘','bm001','护士','本科','男','1998-05-05','衡阳市','中国','汉族','123456','已婚','健康','2020-02-15','在职','衡阳市','16670802495','1244843022@qq.com','gw001'),
('10','yg006','小曹','bm002','医师','本科','女','1998-05-05','衡阳市','中国','汉族','123456','已婚','健康','2020-02-15','在职','衡阳市','16670802495','1244843022@qq.com','gw002'),
('11','yg007','小张','bm003','医师','本科','女','1998-05-05','衡阳市','中国','汉族','123456','已婚','健康','2020-02-15','在职','衡阳市','16670802495','1244843022@qq.com','gw002'),
('12','yg008','小王','bm004','护士','本科','女','1998-05-05','衡阳市','中国','汉族','123456','已婚','健康','2020-02-15','在职','衡阳市','16670802495','1244843022@qq.com','gw001'),
('13','yg009','小蒋','bm002','院长','本科','男','1998-05-05','衡阳市','中国','汉族','123456','已婚','健康','2020-02-15','在职','衡阳市','16670802495','1244843022@qq.com','gw005');


CREATE TABLE job(
job_id int(11) PRIMARY KEY AUTO_INCREMENT comment 'ID号',
job_no VARCHAR(15) comment '工作岗位代号',
job_name VARCHAR(15) comment '工作岗位名称'
);
insert into job values('1','gw001','护士'),
('2','gw002','医师'),
('3','gw003','副主任'),
('4','gw004','主任'),
('5','gw005','院长');

CREATE TABLE dept(
dept_id int(11) PRIMARY KEY AUTO_INCREMENT comment 'ID号',
dept_no VARCHAR(15) comment '部门代号',
dept_name VARCHAR(15) comment '部门名称',
dept_manager VARCHAR(15) comment '部门主任代号',
dept_viceManager VARCHAR(15) comment '部门副主任代号'
);
insert into dept values('1','bm001','门诊部','yg001','yg002'),
('2','bm002','住院部','yg003','yg004'),
('3','bm003','药剂科部','yg010','yg011'),
('4','bm004','医技科部','yg012','yg013');


CREATE TABLE paitient(
paitient_id int(11) PRIMARY KEY AUTO_INCREMENT comment 'ID号',
paitient_name VARCHAR(15) comment '病人姓名',
paitient_gender VARCHAR(15) comment '病人性别',
paitient_dateStart DATE comment '入院时间',
paitient_dept VARCHAR(15) comment '病人所属科室',
paitient_state VARCHAR(15) comment '病人状况',
paitient_doc VARCHAR(15) comment '病人主治医生',
paitient_room VARCHAR(15) comment '病人房间号',
paitient_bed VARCHAR(15) comment '病人病床号'
);
insert into paitient values
('1','张三','男','2019-05-03','住院部','胃炎','yg006','fj001','bc001'),
('2','李四','男','2019-05-03','住院部','肺炎','yg004','fj001','bc002'),
('3','王五','男','2019-05-03','住院部','胃炎','yg006','fj001','bc003'),
('4','黑猫警长','男','2019-05-03','住院部','肺炎','yg004','fj001','bc004'),
('5','喜羊羊','男','2019-05-03','住院部','胃炎','yg006','fj002','bc005'),
('6','海绵宝宝','男','2019-05-03','住院部','胃炎','yg006','fj002','bc006');

CREATE TABLE potion(
potion_id int(11) PRIMARY KEY AUTO_INCREMENT comment 'ID号',
potion_no VARCHAR(15) comment '药物代号',
potion_name VARCHAR(15) comment '药剂名称',
potion_price VARCHAR(15) comment '药剂价格',
potion_quantity VARCHAR(15) comment '药剂库存数量',
potion_ren VARCHAR(15) comment '备注'
);
insert into potion values('1','yw001','头孢','20','540','抗生素'),
('2','yw002','青霉素','15','500','抗生素'),
('3','yw003','氨苄西林','16','500','抗生素'),
('4','yw004','胰岛素','300','30','糖尿病'),
('5','yw005','维生素','14','500','营养药');

CREATE TABLE appartus(
appartus_id int(11) PRIMARY KEY AUTO_INCREMENT comment 'ID号',
appartus_no VARCHAR(15) comment '仪器代号',
appartus_name VARCHAR(15) comment '仪器名称',
appartus_price VARCHAR(15) comment '仪器价格',
appartus_quantity VARCHAR(15) comment '仪器库存数量',
appartus_ren VARCHAR(15) comment '备注'
);
insert into appartus values('1','yq001','氧气瓶','20','540','病房护理设备'),
('2','yq002','洗胃机','15','500','病房护理设备'),
('3','yq003','注射器','16','500','病房护理设备'),
('4','yq004','体温计','300','30','物理诊断器具'),
('5','yq005','血压表','14','500','物理诊断器具'),
('6','yq006','显微镜','14','500','物理诊断器具'),
('7','yq007','心电图机','14','500','电生理类');


CREATE TABLE tms(
tms_id int(11) PRIMARY KEY AUTO_INCREMENT comment 'ID号',
tms_user VARCHAR(15) comment '用户名即员工号',
tms_pswd VARCHAR(50) comment '密码',
tms_name VARCHAR(15) comment '姓名',
tms_power VARCHAR(15) comment '权限级别',
tms_describe VARCHAR(15) comment '权限级别描述'
);
insert into tms values
('1','yg001','81DC9BDB52D04DC20036DBD8313ED055','小华','0','低'),
('2','yg002','81DC9BDB52D04DC20036DBD8313ED055','小唐','0','低'),
('3','yg003','81DC9BDB52D04DC20036DBD8313ED055','小谢','0','低'),
('4','yg004','81DC9BDB52D04DC20036DBD8313ED055','小李','0','低'),
('5','yg005','81DC9BDB52D04DC20036DBD8313ED055','小邓','0','低'),
('6','yg006','81DC9BDB52D04DC20036DBD8313ED055','小资','0','低'),
('7','yg007','81DC9BDB52D04DC20036DBD8313ED055','小吴','0','低'),
('8','yg008','81DC9BDB52D04DC20036DBD8313ED055','小欧','0','低'),
('9','yg009','81DC9BDB52D04DC20036DBD8313ED055','小刘','1','高'),
('10','yg010','81DC9BDB52D04DC20036DBD8313ED055','小曹','1','高'),
('11','yg011','81DC9BDB52D04DC20036DBD8313ED055','小张','0','低'),
('12','yg012','81DC9BDB52D04DC20036DBD8313ED055','小王','1','高'),
('13','yg013','81DC9BDB52D04DC20036DBD8313ED055','小蒋','0','低');


CREATE TABLE salary(
salary_id int(11) PRIMARY KEY AUTO_INCREMENT comment 'ID号',
salary_no VARCHAR(15) comment '员工号',
salary_name VARCHAR(15) comment '员工姓名',
salary_money VARCHAR(15) comment '工资'
);
insert into salary values
('1','yg001','小华','7000'),
('2','yg002','小唐','7000'),
('3','yg003','小谢','7000'),
('4','yg004','小李','7000'),
('5','yg005','小邓','7000'),
('6','yg006','小资','7000'),
('7','yg007','小吴','7000'),
('8','yg008','小欧','7000'),
('9','yg009','小刘','7000'),
('10','yg010','小曹','7000'),
('11','yg011','小张','7000'),
('12','yg012','小王','7000'),
('13','yg013','小蒋','7000');



CREATE TABLE bed(
bed_id int(11) PRIMARY KEY AUTO_INCREMENT comment 'ID号',
bed_no VARCHAR(15) comment '病床号',
bed_roomId VARCHAR(15) comment '所在房间号',
bed_judge VARCHAR(15) comment '病床状态'
);
insert into bed values
('1','bc001','fj001','占用'),
('2','bc002','fj001','占用'),
('3','bc003','fj001','占用'),
('4','bc004','fj001','占用'),
('5','bc005','fj002','占用'),
('6','bc006','fj002','占用'),
('7','bc007','fj002','未占用'),
('8','bc008','fj002','未占用'),
('9','bc009','fj003','未占用'),
('10','bc010','fj003','未占用'),
('11','bc011','fj003','未占用'),
('12','bc012','fj003','未占用');


CREATE TABLE room(
room_id int(11) PRIMARY KEY AUTO_INCREMENT comment 'ID号',
room_no VARCHAR(15) comment '房间号',
room_judge VARCHAR(15) comment '房间状态'
);
insert into room values
('1','fj001','已满'),
('2','fj002','未满'),
('3','fj003','未满');


--
-- select
-- r.room_no,r.room_judge,b.bed_no,b.bed_judge,ifnull(p.paitient_name,'空')
-- from bed b join room r on b.bed_roomId=r.room_no left join paitient p on
-- b.bed_no=p.paitient_bed where r.room_no='fj002';
--
--
