CREATE TABLE USERDB( --���� ���� ���̺�


U_NAME   NVARCHAR2(10), --�̸�

U_ID     NVARCHAR2(10) PRIMARY KEY, --���̵�

U_PW     NVARCHAR2(20), --��й�ȣ

U_ADDR   NVARCHAR2(50), --�ּ�

U_BIRTH  DATE,          --�������

U_PNUM   NVARCHAR2(13) --����ó

);

 

SELECT TO_CHAR(UBIRTH, 'YYYY-MM-DD') FROM USER;


 

CREATE TABLE ACCOUNT( --���� / �ܾ� ���̺�

A_BAL   NUMBER,         --�ܾ�

A_U_ID  NVARCHAR2(10),  --�������̵� �ܷ�Ű
CONSTRAINT AU_ID FOREIGN KEY (A_U_ID)REFERENCES USERDB(U_ID)

);


CREATE TABLE GOODS( --��ǰ ���� ���̺�

G_NO    NUMBER,         --����Ȯ���ڵ�

G_NAME  NVARCHAR2(20),  --��ǰ��

G_PRICE NUMBER,         --��ǰ����

G_U_ID  NVARCHAR2(10) ,  --�������̵� �ܷ�Ű

G_INFO NVARCHAR2(255),  --��ǰ����
CONSTRAINT GU_ID FOREIGN KEY (G_U_ID) REFERENCES USERDB(U_ID)
);

COMMIT;



 
 