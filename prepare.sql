PREPARE my_query (int, text) AS
SELECT * FROM users WHERE id = $1 AND name = $2;
EXECUTE my_query(1, 'Alice');


-- Step 1: Prepare a statement
PREPARE get_user_by_email (text) AS
SELECT id, name FROM users WHERE email = $1;

-- Step 2: Execute with different bindings
EXECUTE get_user_by_email('alice@example.com');
EXECUTE get_user_by_email('bob@example.com');
