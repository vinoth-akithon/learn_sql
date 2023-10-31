SELECT * FROM sql_invoicing.payments;


-- update payments
-- set properties = '
-- {
-- 	"name": "vinoth", 
-- 	"age": 23, 
-- 	"array": [1, 2, 3],
--     "object": {
-- 		"name": "aki"
--     }
-- }'
-- where payment_id = 1;


-- update payments
-- set properties = null
-- where payment_id = 1;


-- update payments
-- set properties = JSON_OBJECT(
-- 	"name", "vinoth",
--     "age", 23,
--     "array", JSON_array(1, 2,3),
--     "object", json_object(
-- 		"name", "aki"))
-- where payment_id = 1


-- select payment_id, json_extract(properties, "$.name") as name
-- from payments
-- where payment_id = 1;


-- select payment_id, properties -> "$.name" as name
-- from payments
-- where payment_id = 1;

-- select payment_id, properties ->> "$.name" as name
-- from payments
-- where payment_id = 1;

-- select payment_id, properties ->> "$.object.name" as name
-- from payments
-- where payment_id = 1;

-- select payment_id, properties ->> "$.array[0]" as name
-- from payments
-- where payment_id = 1;


-- update payments
-- set properties = json_set(
-- 	properties,
--     "$.name", "vinoth kumar",
--     "$.dept", "EEE")
-- where payment_id = 2

-- update payments
-- set properties = json_remove(
-- 	properties,
--     "$.age")
-- where payment_id = 1;

