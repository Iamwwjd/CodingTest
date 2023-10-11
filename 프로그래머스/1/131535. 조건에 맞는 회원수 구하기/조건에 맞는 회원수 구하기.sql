-- 코드를 입력하세요
SELECT count(USER_ID) as USERS
from USER_INFO
where JOINED between '2021-01-01' and '2021-12-31' 
and AGE is not null and AGE >= 20 and AGE <= 29;

