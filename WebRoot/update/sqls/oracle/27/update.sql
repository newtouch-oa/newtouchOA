CREATE TABLE DOC_SEND (
      SEQ_ID NUMBER  primary key,
      RUN_ID NUMBER,
      DEPT_ID  VARCHAR2(200),
      TO_DEPT VARCHAR2(200),
      STATUS NUMBER,
      IS_OUT NUMBER,
      SEND_TIME DATE,
      SIGN_TIME DATE,
      IS_CANCEL NUMBER,
      TITLE  VARCHAR2(200),
      SEND_DOC_NO VARCHAR2(200),
      DOC_NAME CLOB,
      DOC_ID CLOB
    );
   
CREATE TABLE doc_rec_register (
   SEQ_ID NUMBER  primary key,
  REC_ID NUMBER,
  FROM_DEPT_ID VARCHAR2(100),
  FROM_DEPT_NAME VARCHAR2(200),
  REC_DOC_NAME CLOB,
  REC_DOC_ID CLOB,
  REC_TYPE VARCHAR2(100),
  REC_NO VARCHAR2(500),
  TITLE CLOB,
  REGISTER_USER NUMBER,
  ATTACHMENT_ID CLOB,
  ATTACHMENT_NAME CLOB,
  RUN_ID NUMBER,
  COPIES NUMBER,
  SEND_DOC_NO VARCHAR2(100),
  SECRETS_LEVEL VARCHAR2(100),
  REGISTER_TIME DATE
);

INSERT INTO sys_function (menu_id, func_name, func_code, icon, open_flag) VALUES
 ('221601','收文签收','/core/funcs/doc/receive/sign/index.jsp','sys.gif','0');
INSERT INTO sys_function (menu_id, func_name, func_code, icon, open_flag) VALUES
 ('221602','收文登记','/core/funcs/doc/receive/register/index.jsp','sys.gif','0');
  INSERT INTO sys_function (menu_id, func_name, func_code, icon, open_flag) VALUES
 ('221621','收文查询','/core/funcs/doc/flowrunRec/query/index.jsp','sys.gif','0');
 INSERT INTO sys_function (menu_id, func_name, func_code, icon, open_flag) VALUES
 ('221513','发文查询','/core/funcs/doc/flowrun/query/index.jsp','sys.gif','0');
  INSERT INTO sys_function (MENU_ID,FUNC_NAME,FUNC_CODE,ICON,OPEN_FLAG) VALUES 
 ('9015','内容管理','/cms/content/index.jsp','edit.gif','0');
  INSERT INTO sys_function (MENU_ID,FUNC_NAME,FUNC_CODE,ICON,OPEN_FLAG) VALUES
 ('9006','模板管理','/cms/template/index.jsp','edit.gif','0');
  INSERT INTO sys_function (MENU_ID,FUNC_NAME,FUNC_CODE,ICON,OPEN_FLAG) VALUES
 ('9005','站点管理','/cms/station/index.jsp','edit.gif','0');
  INSERT INTO sys_function (MENU_ID,FUNC_NAME,FUNC_CODE,ICON,OPEN_FLAG) VALUES
 ('9010','栏目管理','/cms/column/index.jsp','edit.gif','0'); 
  INSERT INTO sys_function (MENU_ID,FUNC_NAME,FUNC_CODE,ICON,OPEN_FLAG) VALUES
 ('9020','权限管理','/cms/permissions/index.jsp','edit.gif','0');
INSERT INTO sys_menu (MENU_ID,MENU_NAME,IMAGE) VALUES 
 ('90','CMS系统','sys.gif');
 
 

 CREATE TABLE cms_content (
  SEQ_ID NUMBER  primary key,
  CONTENT_NAME varchar2(200),
  CONTENT_TITLE varchar2(200),
  CONTENT_ABSTRACT CLOB,
  KEYWORD varchar2(100),
  CONTENT_SOURCE varchar2(100),
  CONTENT_FILE_NAME varchar2(100),
  CONTENT_AUTHOR varchar2(100),
  CONTENT_DATE DATE,
  STATION_ID NUMBER,
  COLUMN_ID NUMBER,
  CONTENT CLOB,
  CREATE_ID NUMBER,
  CREATE_TIME DATE,
  CONTENT_TYPE NUMBER,
  CONTENT_STATUS NUMBER,
  CONTENT_TOP NUMBER,
  CONTENT_INDEX NUMBER,
  URL varchar2(200),
  ATTACHMENT_ID CLOB,
  ATTACHMENT_NAME CLOB
);

CREATE TABLE cms_column (
  SEQ_ID NUMBER  primary key,
  COLUMN_NAME varchar2(100),
  COLUMN_TITLE varchar2(100),
  STATION_ID NUMBER,
  PARENT_ID NUMBER,
  COLUMN_PATH varchar2(100),
  ARCHIVE NUMBER,
  TEMPLATE_INDEX_ID NUMBER,
  TEMPLATE_ARTICLE_ID NUMBER,
  CREATE_ID NUMBER,
  CREATE_TIME DATE,
  COLUMN_INDEX NUMBER,
  PAGING NUMBER,
  MAX_INDEX_PAGE NUMBER,
  PAGING_NUMBER NUMBER,
  URL varchar2(200),
  SHOW_MAIN NUMBER,
  VISIT_USER CLOB,
  EDIT_USER CLOB,
  NEW_USER CLOB,
  DEL_USER CLOB,
  REL_USER CLOB,
  EDIT_USER_CONTENT CLOB,
  APPROVAL_USER_CONTENT CLOB,
  RELEASE_USER_CONTENT CLOB,
  RECEVIE_USER_CONTENT CLOB,
  ORDER_CONTENT CLOB
);
CREATE TABLE cms_station (
  SEQ_ID NUMBER  primary key,
  STATION_NAME varchar2(100),
  STATION_DOMAIN_NAME varchar2(100),
  TEMPLATE_ID NUMBER,
  STATION_FILE_NAME varchar2(100),
  EXTEND_NAME varchar2(100),
  ARTICLE_EXTEND_NAME varchar2(100),
  CREATE_ID NUMBER,
  CREATE_TIME DATE,
  STATION_PATH varchar2(100),
  URL varchar2(200),
  VISIT_USER CLOB,
  EDIT_USER CLOB,
  NEW_USER CLOB,
  DEL_USER CLOB,
  REL_USER CLOB
);

CREATE TABLE cms_template (
  SEQ_ID NUMBER  primary key,
  TEMPLATE_NAME varchar2(100),
  TEMPLATE_FILE_NAME varchar2(100),
  TEMPLATE_TYPE NUMBER,
  CREATE_ID NUMBER,
  CREATE_TIME DATE,
  attachment_Id CLOB,
  attachment_Name CLOB,
  station_id NUMBER
);


 INSERT INTO cms_column (SEQ_ID,COLUMN_NAME,COLUMN_TITLE,STATION_ID,PARENT_ID,COLUMN_PATH,ARCHIVE,TEMPLATE_INDEX_ID,TEMPLATE_ARTICLE_ID,CREATE_ID,CREATE_TIME,COLUMN_INDEX,PAGING,MAX_INDEX_PAGE,PAGING_NUMBER,URL,SHOW_MAIN,VISIT_USER,EDIT_USER,NEW_USER,DEL_USER,REL_USER,EDIT_USER_CONTENT,APPROVAL_USER_CONTENT,RELEASE_USER_CONTENT,RECEVIE_USER_CONTENT,ORDER_CONTENT) VALUES 
 (44,'教育','',11,0,'jy',0,21,20,1,to_date('2012-02-15 11:16:22','yyyy-mm-dd hh24:mi:ss'),13,0,0,0,NULL,0,'0||','0||',NULL,'|1|','||1',NULL,NULL,NULL,NULL,NULL);
 INSERT INTO cms_column (SEQ_ID,COLUMN_NAME,COLUMN_TITLE,STATION_ID,PARENT_ID,COLUMN_PATH,ARCHIVE,TEMPLATE_INDEX_ID,TEMPLATE_ARTICLE_ID,CREATE_ID,CREATE_TIME,COLUMN_INDEX,PAGING,MAX_INDEX_PAGE,PAGING_NUMBER,URL,SHOW_MAIN,VISIT_USER,EDIT_USER,NEW_USER,DEL_USER,REL_USER,EDIT_USER_CONTENT,APPROVAL_USER_CONTENT,RELEASE_USER_CONTENT,RECEVIE_USER_CONTENT,ORDER_CONTENT) VALUES 
 (13,'体育','',11,0,'ty',0,21,20,0,to_date('2012-02-15 11:16:22','yyyy-mm-dd hh24:mi:ss'),9,0,0,0,NULL,0,'0||','0||',NULL,'|1|','||1',NULL,NULL,NULL,NULL,NULL);
 INSERT INTO cms_column (SEQ_ID,COLUMN_NAME,COLUMN_TITLE,STATION_ID,PARENT_ID,COLUMN_PATH,ARCHIVE,TEMPLATE_INDEX_ID,TEMPLATE_ARTICLE_ID,CREATE_ID,CREATE_TIME,COLUMN_INDEX,PAGING,MAX_INDEX_PAGE,PAGING_NUMBER,URL,SHOW_MAIN,VISIT_USER,EDIT_USER,NEW_USER,DEL_USER,REL_USER,EDIT_USER_CONTENT,APPROVAL_USER_CONTENT,RELEASE_USER_CONTENT,RECEVIE_USER_CONTENT,ORDER_CONTENT) VALUES 
 (12,'新闻','',11,0,'xw',0,21,20,0,to_date('2012-02-15 11:16:22','yyyy-mm-dd hh24:mi:ss'),10,0,0,0,NULL,0,'0||','0||',NULL,'|1|','||1','0||','||1','|1|','1||','0||');
 INSERT INTO cms_column (SEQ_ID,COLUMN_NAME,COLUMN_TITLE,STATION_ID,PARENT_ID,COLUMN_PATH,ARCHIVE,TEMPLATE_INDEX_ID,TEMPLATE_ARTICLE_ID,CREATE_ID,CREATE_TIME,COLUMN_INDEX,PAGING,MAX_INDEX_PAGE,PAGING_NUMBER,URL,SHOW_MAIN,VISIT_USER,EDIT_USER,NEW_USER,DEL_USER,REL_USER,EDIT_USER_CONTENT,APPROVAL_USER_CONTENT,RELEASE_USER_CONTENT,RECEVIE_USER_CONTENT,ORDER_CONTENT) VALUES 
 (16,'NBA','',11,13,'nba',0,21,20,0,to_date('2012-02-15 11:16:22','yyyy-mm-dd hh24:mi:ss'),1,1,5,3,NULL,0,'0||','0||',NULL,'|1|','||',NULL,NULL,NULL,NULL,NULL);
 INSERT INTO cms_column (SEQ_ID,COLUMN_NAME,COLUMN_TITLE,STATION_ID,PARENT_ID,COLUMN_PATH,ARCHIVE,TEMPLATE_INDEX_ID,TEMPLATE_ARTICLE_ID,CREATE_ID,CREATE_TIME,COLUMN_INDEX,PAGING,MAX_INDEX_PAGE,PAGING_NUMBER,URL,SHOW_MAIN,VISIT_USER,EDIT_USER,NEW_USER,DEL_USER,REL_USER,EDIT_USER_CONTENT,APPROVAL_USER_CONTENT,RELEASE_USER_CONTENT,RECEVIE_USER_CONTENT,ORDER_CONTENT) VALUES 
 (33,'财经','',11,0,'cj',0,21,20,0,to_date('2012-02-15 11:16:22','yyyy-mm-dd hh24:mi:ss'),4,0,0,0,NULL,0,'0||','0||',NULL,'|1|','||1',NULL,NULL,NULL,NULL,NULL);
 INSERT INTO cms_column (SEQ_ID,COLUMN_NAME,COLUMN_TITLE,STATION_ID,PARENT_ID,COLUMN_PATH,ARCHIVE,TEMPLATE_INDEX_ID,TEMPLATE_ARTICLE_ID,CREATE_ID,CREATE_TIME,COLUMN_INDEX,PAGING,MAX_INDEX_PAGE,PAGING_NUMBER,URL,SHOW_MAIN,VISIT_USER,EDIT_USER,NEW_USER,DEL_USER,REL_USER,EDIT_USER_CONTENT,APPROVAL_USER_CONTENT,RELEASE_USER_CONTENT,RECEVIE_USER_CONTENT,ORDER_CONTENT) VALUES 
 (36,'软件','',11,0,'rj',0,21,20,0,to_date('2012-02-15 11:16:22','yyyy-mm-dd hh24:mi:ss'),11,0,0,0,NULL,0,'0||','0||',NULL,'|1|','||1',NULL,NULL,NULL,NULL,NULL);
 INSERT INTO cms_column (SEQ_ID,COLUMN_NAME,COLUMN_TITLE,STATION_ID,PARENT_ID,COLUMN_PATH,ARCHIVE,TEMPLATE_INDEX_ID,TEMPLATE_ARTICLE_ID,CREATE_ID,CREATE_TIME,COLUMN_INDEX,PAGING,MAX_INDEX_PAGE,PAGING_NUMBER,URL,SHOW_MAIN,VISIT_USER,EDIT_USER,NEW_USER,DEL_USER,REL_USER,EDIT_USER_CONTENT,APPROVAL_USER_CONTENT,RELEASE_USER_CONTENT,RECEVIE_USER_CONTENT,ORDER_CONTENT) VALUES 
 (41,'英超','',11,13,'yc',0,21,20,0,to_date('2012-02-15 11:16:22','yyyy-mm-dd hh24:mi:ss'),2,0,0,0,NULL,0,'0||','0||',NULL,'||','||1',NULL,NULL,NULL,NULL,NULL);
 INSERT INTO cms_column (SEQ_ID,COLUMN_NAME,COLUMN_TITLE,STATION_ID,PARENT_ID,COLUMN_PATH,ARCHIVE,TEMPLATE_INDEX_ID,TEMPLATE_ARTICLE_ID,CREATE_ID,CREATE_TIME,COLUMN_INDEX,PAGING,MAX_INDEX_PAGE,PAGING_NUMBER,URL,SHOW_MAIN,VISIT_USER,EDIT_USER,NEW_USER,DEL_USER,REL_USER,EDIT_USER_CONTENT,APPROVAL_USER_CONTENT,RELEASE_USER_CONTENT,RECEVIE_USER_CONTENT,ORDER_CONTENT) VALUES 
 (43,'音乐','',11,0,'yy',0,21,20,1,to_date('2012-02-15 11:16:22','yyyy-mm-dd hh24:mi:ss'),12,0,0,0,NULL,0,'0||','||','||1','||','||',NULL,NULL,NULL,NULL,NULL);
INSERT INTO cms_template (SEQ_ID , TEMPLATE_NAME,TEMPLATE_FILE_NAME,TEMPLATE_TYPE,CREATE_ID,CREATE_TIME,attachment_Id,attachment_Name,station_id) VALUES 
 (20,'文章模板','content',2,0,to_date('2012-02-14 14:56:23','863abb5e8d26c3b28a251f144693cc0f','文章模板.html',11);
INSERT INTO cms_template (SEQ_ID , TEMPLATE_NAME,TEMPLATE_FILE_NAME,TEMPLATE_TYPE,CREATE_ID,CREATE_TIME,attachment_Id,attachment_Name,station_id) VALUES 
 (21,'栏目模板','index',1,0,to_date('2012-02-14 14:56:23','6906f5961f4d7d67dea209d5149cbc80','栏目模板.html',11);
INSERT INTO cms_template (SEQ_ID , TEMPLATE_NAME,TEMPLATE_FILE_NAME,TEMPLATE_TYPE,CREATE_ID,CREATE_TIME,attachment_Id,attachment_Name,station_id) VALUES 
 (24,'首页模板','index',1,1,to_date('2012-02-14 14:56:23','8d1ac7115f8f413d2ae9ddb06369e258','首页模板.html',11);
INSERT INTO cms_template (SEQ_ID , TEMPLATE_NAME,TEMPLATE_FILE_NAME,TEMPLATE_TYPE,CREATE_ID,CREATE_TIME,attachment_Id,attachment_Name,station_id) VALUES 
 (25,'head','head.html',3,1,to_date('2012-02-14 14:56:23','fc9203cd769398df1995f0abe4c23e88','head.html',11);
INSERT INTO cms_template (SEQ_ID , TEMPLATE_NAME,TEMPLATE_FILE_NAME,TEMPLATE_TYPE,CREATE_ID,CREATE_TIME,attachment_Id,attachment_Name,station_id) VALUES 
 (26,'left','left.html',3,1,to_date('2012-02-14 14:56:23','9a3fb0aa559edda8f2e4cb36ed589d20','left.html',11);
INSERT INTO cms_template (SEQ_ID , TEMPLATE_NAME,TEMPLATE_FILE_NAME,TEMPLATE_TYPE,CREATE_ID,CREATE_TIME,attachment_Id,attachment_Name,station_id) VALUES 
 (27,'foot','foot.html',3,1,to_date('2012-02-14 14:56:23','5291664b9db1851ab77d9280516e9cb3','foot.html',11);
INSERT INTO cms_station (SEQ_ID , STATION_NAME,STATION_DOMAIN_NAME,TEMPLATE_ID,STATION_FILE_NAME,EXTEND_NAME,ARTICLE_EXTEND_NAME,CREATE_ID,CREATE_TIME,STATION_PATH,URL,VISIT_USER,EDIT_USER,NEW_USER,DEL_USER,REL_USER) VALUES 
 (11,'站点八','zd8',24,NULL,'html','html',0,to_date('2012-02-14 11:35:05','yyyy-mm-dd hh24:mi:ss'),'zd8',NULL,'0||','0||',NULL,'|1|','||1');

exec pr_CreateIdentityColumn('cms_content','SEQ_ID');
exec pr_CreateIdentityColumn('cms_column','SEQ_ID');
exec pr_CreateIdentityColumn('cms_station','SEQ_ID');
exec pr_CreateIdentityColumn('cms_template','SEQ_ID');
exec pr_CreateIdentityColumn('DOC_SEND','SEQ_ID');
exec pr_CreateIdentityColumn('doc_rec_register','SEQ_ID');