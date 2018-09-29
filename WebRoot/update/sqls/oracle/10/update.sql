ALTER TABLE flow_process ADD (EXTEND1 VARCHAR2(45));
ALTER TABLE flow_type ADD (IS_SYSTEM NUMBER);
alter table PORT ADD ( MODULE_NO NUMBER);
alter table PORT ADD (MODULE_POS VARCHAR2(1));
alter table PORT ADD (VIEW_TYPE VARCHAR2(1) default '1');
alter table PORT ADD (MODULE_LINES NUMBER default '5') ;
alter table PORT ADD (MODULE_SCROLL VARCHAR2(1) default '0') ;
alter table hr_staff_info ADD ( INSURE_NUM VARCHAR2(100));
INSERT INTO code_class (CLASS_NO,CLASS_DESC,SORT_NO,CLASS_LEVEL) VALUES ('VEHICLE_REPAIR_TYPE','车辆维修类型','3','0');
INSERT INTO code_item (CLASS_NO,CLASS_CODE,CLASS_DESC,SORT_NO,CODE) VALUES ('VEHICLE_REPAIR_TYPE','1','维修','1',NULL);
INSERT INTO code_item (CLASS_NO,CLASS_CODE,CLASS_DESC,SORT_NO,CODE) VALUES ('VEHICLE_REPAIR_TYPE','2','加油','2',NULL);
INSERT INTO code_item (CLASS_NO,CLASS_CODE,CLASS_DESC,SORT_NO,CODE) VALUES ('VEHICLE_REPAIR_TYPE','3','洗车','3',NULL);
INSERT INTO code_item (CLASS_NO,CLASS_CODE,CLASS_DESC,SORT_NO,CODE) VALUES ('VEHICLE_REPAIR_TYPE','4','年检','4',NULL);
INSERT INTO code_item (CLASS_NO,CLASS_CODE,CLASS_DESC,SORT_NO,CODE) VALUES ('VEHICLE_REPAIR_TYPE','5','其它','5',NULL);
alter table flow_run_feedback ADD ( FLOW_PRCS NUMBER);

update SYS_FUNCTION set ICON = 'right.png' where MENU_ID = '100113';
update SYS_FUNCTION set ICON = 'skill.png' where MENU_ID = '100197';
update SYS_FUNCTION set ICON = 'meeting.png' where MENU_ID = '2003';
update SYS_FUNCTION set ICON = 'meeting.png' where MENU_ID = '2007';
update SYS_FUNCTION set ICON = 'wf_destroy.png' where MENU_ID = '221718';
update SYS_FUNCTION set ICON = 'query.png' where MENU_ID = '221719';
update SYS_FUNCTION set ICON = 'overtime.png' where MENU_ID = '221716';
update SYS_FUNCTION set ICON = 'book.png' where MENU_ID = '058199';
update SYS_FUNCTION set ICON = 'vote.png' where MENU_ID = '0218';
update SYS_FUNCTION set ICON = 'rol.png' where MENU_ID = '2270';
update SYS_FUNCTION set ICON = 'book.png' where MENU_ID = '0581';
update SYS_FUNCTION set ICON = 'sys.png' where MENU_ID = '058182';
update SYS_FUNCTION set ICON = 'hr.png' where MENU_ID = '100125';
update SYS_FUNCTION set ICON = 'exam.png' where MENU_ID = '1009';
update SYS_FUNCTION set ICON = 'issued.png' where MENU_ID = '1003';
update SYS_FUNCTION set ICON = 'issued.png' where MENU_ID = '100305';
update SYS_FUNCTION set ICON = 'cars_manage.png' where MENU_ID = '059638';
update SYS_FUNCTION set ICON = 'cars_manage.png' where MENU_ID = '0596';
update SYS_FUNCTION set ICON = 'sms.png' where MENU_ID = '059640';
update SYS_FUNCTION set ICON = 'cars.png' where MENU_ID = '059601';
update SYS_FUNCTION set ICON = 'issued.png' where MENU_ID = '221512';
update SYS_FUNCTION set ICON = 'stat.png' where MENU_ID = '221513';
update SYS_FUNCTION set ICON = 'received.png' where MENU_ID = '2216';
update SYS_FUNCTION set ICON = 'book.png' where MENU_ID = '058198';
update SYS_FUNCTION set ICON = 'confidential.png' where MENU_ID = '052506';
update SYS_FUNCTION set ICON = 'sys.png' where MENU_ID = '101505';
update SYS_FUNCTION set ICON = 'confidential.png' where MENU_ID = '052522';
update SYS_FUNCTION set ICON = 'meeting.png' where MENU_ID = '059301';
update SYS_FUNCTION set ICON = 'office_supplies.png' where MENU_ID = '0582';
update SYS_FUNCTION set ICON = 'office_supplies.png' where MENU_ID = '058201';
update SYS_FUNCTION set ICON = 'address.png' where MENU_ID = '0509';
update SYS_FUNCTION set ICON = 'wf_mine.png' where MENU_ID = '0420';
update SYS_FUNCTION set ICON = 'file_folder.png' where MENU_ID = '0916';
update SYS_FUNCTION set ICON = 'file_folder.png' where MENU_ID = '601250';
update SYS_FUNCTION set ICON = 'sms.png' where MENU_ID = '601210';
update SYS_FUNCTION set ICON = 'email.png' where MENU_ID = '0204';
update SYS_FUNCTION set ICON = 'netdisk.png' where MENU_ID = '0920';
update SYS_FUNCTION set ICON = 'sms.png' where MENU_ID = '020802';
update SYS_FUNCTION set ICON = 'address.png' where MENU_ID = '600815';
update SYS_FUNCTION set ICON = 'exchange.png' where MENU_ID = '6050';
update SYS_FUNCTION set ICON = 'diary.png' where MENU_ID = '0518';
update SYS_FUNCTION set ICON = 'diary.png' where MENU_ID = '0228';
update SYS_FUNCTION set ICON = 'work_plan.png' where MENU_ID = '052006';
update SYS_FUNCTION set ICON = 'address.png' where MENU_ID = '0557';
update SYS_FUNCTION set ICON = 'wf_query.png' where MENU_ID = '0430';
update SYS_FUNCTION set ICON = 'sys.png' where MENU_ID = '6028';
update SYS_FUNCTION set ICON = 'picture.png' where MENU_ID = '0925';
update SYS_FUNCTION set ICON = 'mobilesms.png' where MENU_ID = '601220';
update SYS_FUNCTION set ICON = 'query.png' where MENU_ID = '100102';
update SYS_FUNCTION set ICON = 'hr.png' where MENU_ID = '600408';
update SYS_FUNCTION set ICON = 'sys.png' where MENU_ID = '6023';
update SYS_FUNCTION set ICON = 'wf_query.png' where MENU_ID = '600630';
update SYS_FUNCTION set ICON = 'sho.png' where MENU_ID = '1919';
update SYS_FUNCTION set ICON = 'new.png' where MENU_ID = '1925';
update SYS_FUNCTION set ICON = 'video_meeting.png' where MENU_ID = '2010';
update SYS_FUNCTION set ICON = 'video_meeting.png' where MENU_ID = '2011';
update SYS_FUNCTION set ICON = 'wf_query.png' where MENU_ID = '600620';
update SYS_FUNCTION set ICON = 'sys.png' where MENU_ID = '6036';
update SYS_FUNCTION set ICON = 'sys.png' where MENU_ID = '6038';
update SYS_FUNCTION set ICON = 'calendar.png' where MENU_ID = '0224';
update SYS_FUNCTION set ICON = 'exchange.png' where MENU_ID = '601282';
update SYS_FUNCTION set ICON = 'netdisk.png' where MENU_ID = '601260';
update SYS_FUNCTION set ICON = 'search.png' where MENU_ID = '0930';
update SYS_FUNCTION set ICON = 'exchange.png' where MENU_ID = '6017';
update SYS_FUNCTION set ICON = 'mobilesms.png' where MENU_ID = '020804';
update SYS_FUNCTION set ICON = 'sys.png' where MENU_ID = '600640';
update SYS_FUNCTION set ICON = 'diary.png' where MENU_ID = '600813';
update SYS_FUNCTION set ICON = 'notice.png' where MENU_ID = '600830';
update SYS_FUNCTION set ICON = 'attendance.png' where MENU_ID = '101501';
update SYS_FUNCTION set ICON = 'attendance.png' where MENU_ID = '0220';
update SYS_FUNCTION set ICON = 'address.png' where MENU_ID = '0232';
update SYS_FUNCTION set ICON = 'wf_destroy.png' where MENU_ID = '0460';
update SYS_FUNCTION set ICON = 'notice.png' where MENU_ID = '0216';
update SYS_FUNCTION set ICON = 'person_info.png' where MENU_ID = '0240';
update SYS_FUNCTION set ICON = 'work_plan.png' where MENU_ID = '052003';
update SYS_FUNCTION set ICON = 'wf_stat.png' where MENU_ID = '0445';
update SYS_FUNCTION set ICON = 'picture.png' where MENU_ID = '601270';
update SYS_FUNCTION set ICON = 'calendar.png' where MENU_ID = '0516';
update SYS_FUNCTION set ICON = 'work_plan.png' where MENU_ID = '052009';
update SYS_FUNCTION set ICON = 'department.png' where MENU_ID = '600406';
update SYS_FUNCTION set ICON = 'hr.png' where MENU_ID = '600410';
update SYS_FUNCTION set ICON = 'department.png' where MENU_ID = '600402';
update SYS_FUNCTION set ICON = 'default.png' where MENU_ID = '600651';
update SYS_FUNCTION set ICON = 'wf_query.png' where MENU_ID = '0470';
update SYS_FUNCTION set ICON = 'sys.png' where MENU_ID = '6039';
update SYS_FUNCTION set ICON = 'menu.png' where MENU_ID = '6022';
update SYS_FUNCTION set ICON = 'form.png' where MENU_ID = '600610';
update SYS_FUNCTION set ICON = 'wf_new.png' where MENU_ID = '0410';
update SYS_FUNCTION set ICON = 'exchange.png' where MENU_ID = '601280';
update SYS_FUNCTION set ICON = 'attendance.png' where MENU_ID = '1007';
update SYS_FUNCTION set ICON = 'notice.png' where MENU_ID = '0506';
update SYS_FUNCTION set ICON = 'news.png' where MENU_ID = '0513';
update SYS_FUNCTION set ICON = 'exchange.png' where MENU_ID = '6012';
update SYS_FUNCTION set ICON = 'news.png' where MENU_ID = '0217';
update SYS_FUNCTION set ICON = 'interface.png' where MENU_ID = '6020';
update SYS_FUNCTION set ICON = 'general.png' where MENU_ID = '2217';
update SYS_FUNCTION set ICON = 'wf_monitor.png' where MENU_ID = '0440';
update SYS_FUNCTION set ICON = 'file.png' where MENU_ID = '600840';
update SYS_FUNCTION set ICON = 'file_folder.png' where MENU_ID = '0250';
update SYS_FUNCTION set ICON = 'wf_entrust.png' where MENU_ID = '0450';
update SYS_FUNCTION set ICON = 'sms.png' where MENU_ID = '0208';
update SYS_FUNCTION set ICON = 'work_plan.png' where MENU_ID = '0520';
update SYS_FUNCTION set ICON = 'department.png' where MENU_ID = '6004';
update SYS_FUNCTION set ICON = 'sys.png' where MENU_ID = '6006';
update SYS_FUNCTION set ICON = 'hr.png' where MENU_ID = '6008';
update SYS_FUNCTION set ICON = 'vch.png' where MENU_ID = '1015';
update SYS_FUNCTION set ICON = 'assets.png' where MENU_ID = '052302';
update SYS_FUNCTION set ICON = 'assets.png' where MENU_ID = '052305';
update SYS_FUNCTION set ICON = 'assets.png' where MENU_ID = '052307';
update SYS_FUNCTION set ICON = 'assets.png' where MENU_ID = '052308';
update SYS_FUNCTION set ICON = 'issued.png' where MENU_ID = '2215';
update SYS_FUNCTION set ICON = 'assets.png' where MENU_ID = '0523';
update SYS_FUNCTION set ICON = 'issued.png' where MENU_ID = '221510';
update SYS_FUNCTION set ICON = 'wf_entrust.png' where MENU_ID = '221715';
update SYS_FUNCTION set ICON = 'sys.png' where MENU_ID = '6060';
update SYS_FUNCTION set ICON = 'assets.png' where MENU_ID = '052312';
update SYS_FUNCTION set ICON = 'cars_manage.png' where MENU_ID = '059636';
update SYS_FUNCTION set ICON = 'cars.png' where MENU_ID = '059603';
update SYS_FUNCTION set ICON = 'sms.png' where MENU_ID = '059605';
update SYS_FUNCTION set ICON = 'cars_manage.png' where MENU_ID = '059607';
update SYS_FUNCTION set ICON = 'wf_log.png' where MENU_ID = '2260';
update SYS_FUNCTION set ICON = 'book.png' where MENU_ID = '226010';
update SYS_FUNCTION set ICON = 'wf_log.png' where MENU_ID = '226020';
update SYS_FUNCTION set ICON = 'rol.png' where MENU_ID = '2250';
update SYS_FUNCTION set ICON = 'approval.png' where MENU_ID = '2230';
update SYS_FUNCTION set ICON = 'approval.png' where MENU_ID = '225010';
update SYS_FUNCTION set ICON = 'approval.png' where MENU_ID = '225020';
update SYS_FUNCTION set ICON = 'meeting.png' where MENU_ID = '0593';
update SYS_FUNCTION set ICON = 'book.png' where MENU_ID = '058185';
update SYS_FUNCTION set ICON = 'sys.png' where MENU_ID = '059310';
update SYS_FUNCTION set ICON = 'book.png' where MENU_ID = '058190';
update SYS_FUNCTION set ICON = 'meeting.png' where MENU_ID = '059325';
update SYS_FUNCTION set ICON = 'meeting.png' where MENU_ID = '059302';
update SYS_FUNCTION set ICON = 'meeting.png' where MENU_ID = '059320';
update SYS_FUNCTION set ICON = 'hr.png' where MENU_ID = '100114';
update SYS_FUNCTION set ICON = 'received.png' where MENU_ID = '221618';
update SYS_FUNCTION set ICON = 'received.png' where MENU_ID = '221619';
update SYS_FUNCTION set ICON = 'video_meeting.png' where MENU_ID = '2009';
update SYS_FUNCTION set ICON = 'exam.png' where MENU_ID = '1005';
update SYS_FUNCTION set ICON = 'vote.png' where MENU_ID = '0514';
update SYS_FUNCTION set ICON = 'exam.png' where MENU_ID = '1016';
update SYS_FUNCTION set ICON = 'exam.png' where MENU_ID = '101601';
update SYS_FUNCTION set ICON = 'overtime.png' where MENU_ID = '1012';
update SYS_FUNCTION set ICON = 'exam.png' where MENU_ID = '101602';
update SYS_FUNCTION set ICON = 'exam.png' where MENU_ID = '101603';
update SYS_FUNCTION set ICON = 'exam.png' where MENU_ID = '101604';
update SYS_FUNCTION set ICON = 'exam.png' where MENU_ID = '101605';
update SYS_FUNCTION set ICON = 'confidential.png' where MENU_ID = '0525';
update SYS_FUNCTION set ICON = 'confidential.png' where MENU_ID = '052502';
update SYS_FUNCTION set ICON = 'overtime.png' where MENU_ID = '101212';
update SYS_FUNCTION set ICON = 'confidential.png' where MENU_ID = '052504';
update SYS_FUNCTION set ICON = 'stat.png' where MENU_ID = '100612';
update SYS_FUNCTION set ICON = 'exam.png' where MENU_ID = '100901';
update SYS_FUNCTION set ICON = 'exam.png' where MENU_ID = '100903';
update SYS_FUNCTION set ICON = 'exam.png' where MENU_ID = '100905';
update SYS_FUNCTION set ICON = 'right.png' where MENU_ID = '100108';
update SYS_FUNCTION set ICON = 'wf_log.png' where MENU_ID = '0471';
update SYS_FUNCTION set ICON = 'wf_monitor.png' where MENU_ID = '221714';
update SYS_FUNCTION set ICON = 'approval.png' where MENU_ID = '2220';
update SYS_FUNCTION set ICON = 'file.png' where MENU_ID = '2240';
update SYS_FUNCTION set ICON = 'meeting.png' where MENU_ID = '059304';
update SYS_FUNCTION set ICON = 'meeting.png' where MENU_ID = '059303';
update SYS_FUNCTION set ICON = 'exam.png' where MENU_ID = '100501';
update SYS_FUNCTION set ICON = 'office_supplies.png' where MENU_ID = '058202';
update SYS_FUNCTION set ICON = 'hr.png' where MENU_ID = '101503';
update SYS_FUNCTION set ICON = 'file.png' where MENU_ID = '2301';
update SYS_FUNCTION set ICON = 'game.png' where MENU_ID = '2302';
update SYS_FUNCTION set ICON = 'calendar.png' where MENU_ID = '2303';
update SYS_FUNCTION set ICON = 'attendance.png' where MENU_ID = '2304';
update SYS_FUNCTION set ICON = 'query.png' where MENU_ID = '230101';
update SYS_FUNCTION set ICON = 'query.png' where MENU_ID = '230102';
update SYS_FUNCTION set ICON = 'query.png' where MENU_ID = '230103';
update SYS_FUNCTION set ICON = 'hr.png' where MENU_ID = '1001';
update SYS_FUNCTION set ICON = 'query.png' where MENU_ID = '230104';
update SYS_FUNCTION set ICON = 'file.png' where MENU_ID = '230105';
update SYS_FUNCTION set ICON = 'file.png' where MENU_ID = '100101';
update SYS_FUNCTION set ICON = 'wf_log.png' where MENU_ID = '600650';
update SYS_FUNCTION set ICON = 'hr.png' where MENU_ID = '100109';
update SYS_FUNCTION set ICON = 'hr.png' where MENU_ID = '100110';
update SYS_FUNCTION set ICON = 'issued.png' where MENU_ID = '100111';
update SYS_FUNCTION set ICON = 'wf_log.png' where MENU_ID = '100199';
update SYS_FUNCTION set ICON = 'wf_log.png' where MENU_ID = '100198';
update SYS_FUNCTION set ICON = 'received.png' where MENU_ID = '100112';
update SYS_FUNCTION set ICON = 'work.png' where MENU_ID = '100196';
update SYS_FUNCTION set ICON = 'work.png' where MENU_ID = '100195';
update SYS_FUNCTION set ICON = 'portal.png' where MENU_ID = '6033';
update SYS_FUNCTION set ICON = 'portal.png' where MENU_ID = '6032';
update SYS_FUNCTION set ICON = 'file.png' where MENU_ID = '0519';
update SYS_FUNCTION set ICON = 'attendance.png' where MENU_ID = '101528';
update SYS_FUNCTION set ICON = 'office_supplies.png' where MENU_ID = '058203';
update SYS_FUNCTION set ICON = 'office_supplies.png' where MENU_ID = '058205';
update SYS_FUNCTION set ICON = 'office_supplies.png' where MENU_ID = '058207';
update SYS_FUNCTION set ICON = 'office_supplies.png' where MENU_ID = '058210';
update SYS_FUNCTION set ICON = 'general.png' where MENU_ID = '6031';
update SYS_FUNCTION set ICON = 'hr.png' where MENU_ID = '1002';
update SYS_FUNCTION set ICON = 'demand.png' where MENU_ID = '100201';
update SYS_FUNCTION set ICON = 'demand.png' where MENU_ID = '100202';
update SYS_FUNCTION set ICON = 'demand.png' where MENU_ID = '100203';
update SYS_FUNCTION set ICON = 'hr.png' where MENU_ID = '100204';
update SYS_FUNCTION set ICON = 'approval.png' where MENU_ID = '100205';
update SYS_FUNCTION set ICON = 'approval.png' where MENU_ID = '100209';
update SYS_FUNCTION set ICON = 'hr.png' where MENU_ID = '100210';
update SYS_FUNCTION set ICON = 'salary.png' where MENU_ID = '1006';
update SYS_FUNCTION set ICON = 'salary.png' where MENU_ID = '100601';
update SYS_FUNCTION set ICON = 'salary.png' where MENU_ID = '100602';
update SYS_FUNCTION set ICON = 'salary.png' where MENU_ID = '100603';
update SYS_FUNCTION set ICON = 'salary.png' where MENU_ID = '100604';
update SYS_FUNCTION set ICON = 'salary.png' where MENU_ID = '100605';
update SYS_FUNCTION set ICON = 'default.png' where MENU_ID = '100607';
update SYS_FUNCTION set ICON = 'sys.png' where MENU_ID = '6037';
update SYS_FUNCTION set ICON = 'default.png' where MENU_ID = '6041';
update SYS_FUNCTION set ICON = 'attendance.png' where MENU_ID = '100701';
update SYS_FUNCTION set ICON = 'attendance.png' where MENU_ID = '100702';
update SYS_FUNCTION set ICON = 'video_meeting.png' where MENU_ID = '0230';

update SYS_FUNCTION set FUNC_CODE = '/core/funcs/portal/portlet/' where FUNC_NAME = '桌面模块管理';
update PORT set VIEW_TYPE = '3' where FILE_NAME in ('天气.js', '时钟.js', '搜索.js');
delete from PORT where FILE_NAME = '图片新闻.js';
delete from PORTAL_PORT where PORTAL_ID = '1';
INSERT INTO portal_port ( CONTAINER, PART, PORT_ID, PORTAL_ID, STYLE_ID, SORT_NO) VALUES ('portal17',0,13,1,'29411F22-ED3B-2AEF-E60A-A89212999647',1);
INSERT INTO portal_port ( CONTAINER, PART, PORT_ID, PORTAL_ID, STYLE_ID, SORT_NO) VALUES ('portal18',0,3,1,'EFBCB1F5-60F5-C828-2E7B-F1F62814B1A1',1);
INSERT INTO portal_port ( CONTAINER, PART, PORT_ID, PORTAL_ID, STYLE_ID, SORT_NO) VALUES ('portal17',0,10,1,'37BE7CEB-23C2-D87E-8F9D-D16B01FB4B7B',0);
INSERT INTO portal_port ( CONTAINER, PART, PORT_ID, PORTAL_ID, STYLE_ID, SORT_NO) VALUES ('portal18',0,4,1,'4E6B3D70-53EB-5A02-7962-5B031672C3F2',0);
update interface set theme = '1';
update person set theme = '1';
insert into port (FILE_NAME, DEPT_ID, STATUS, VIEW_TYPE, MODULE_LINES, MODULE_SCROLL)
values ('天气.js', 0, 0, 3, 5, 0);
delete from port where file_name = '即时翻译.js';
