-- -- ============================
-- -- PostgreSQL User Management
-- -- ============================

-- -- 1. Create a New User
-- CREATE USER your_username WITH PASSWORD 'your_secure_password';

-- -- 2. Alter User Password
-- ALTER USER your_username WITH PASSWORD 'new_secure_password';

-- -- 3. Rename User
-- ALTER USER your_username RENAME TO new_username;

-- -- 4. Grant Superuser Privileges
-- ALTER USER your_username WITH SUPERUSER;

-- -- 5. Revoke Superuser Privileges
-- ALTER USER your_username WITH NOSUPERUSER;

-- -- 6. Drop User
-- -- DROP USER your_username;

-- -- 7. Create a New Database and Assign Owner
-- CREATE DATABASE your_database OWNER your_username;

-- -- 8. Change Database Owner
-- ALTER DATABASE your_database OWNER TO new_owner;

-- -- 9. Grant Privileges on Database
-- GRANT CONNECT ON DATABASE your_database TO your_username;
-- GRANT CREATE ON DATABASE your_database TO your_username;

-- -- 10. Grant Privileges on All Tables in Schema (inside the database)
-- -- (Make sure to \c your_database before running this)
-- GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO your_username;

-- -- 11. Grant Usage on All Sequences
-- GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO your_username;

-- -- 12. Set Default Privileges for Future Tables
-- ALTER DEFAULT PRIVILEGES IN SCHEMA public
-- GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO your_username;

-- -- 13. Revoke All Permissions
-- REVOKE ALL ON DATABASE your_database FROM your_username;
-- REVOKE ALL ON ALL TABLES IN SCHEMA public FROM your_username;

-- -- 14. (Reference Only) List All Users (run inside psql CLI)
-- -- \du

-- -- ============================
-- -- Example: Full Flow
-- -- ============================
-- -- CREATE USER app_user WITH PASSWORD 'StrongPassword123';
-- -- CREATE DATABASE app_db OWNER app_user;
-- -- GRANT ALL PRIVILEGES ON DATABASE app_db TO app_user;
