use LMSDataBase
--========================================
--1.inner join
--========================================
select *
from fellowship_candidates inner join candidate_bank_det 
on fellowship_candidates.id=candidate_bank_det.candidate_id;
--========================================
--2.left join
--========================================
select *
from fellowship_candidates left join candidate_bank_det
on fellowship_candidates.id=candidate_bank_det.candidate_id
order by fellowship_candidates.parent_annual_sal;
--========================================
--3.right join
--========================================
select *
from fellowship_candidates right join candidate_bank_det
on fellowship_candidates.id=candidate_bank_det.candidate_id
order by fellowship_candidates.parent_annual_sal;
--========================================
--4.full outer join 
--========================================
select *
from fellowship_candidates full outer join candidate_bank_det
on fellowship_candidates.id=candidate_bank_det.candidate_id
order by fellowship_candidates.parent_annual_sal;
--========================================
--5.Self Join
--========================================
SELECT *
FROM user_details A,user_details B
WHERE A.id <> B.id
AND A.contact_number = B.contact_number
ORDER BY A.id;
--Little complex query
SELECT A.id AS ID, A.first_name
FROM user_details A,user_details B
WHERE A.id <> B.id
AND A.contact_number = B.contact_number OR A.last_name = B.last_name
ORDER BY A.id;