

DO $$
BEGIN
	IF NOT EXISTS (SELECT * FROM pg_roles WHERE rolname = 'appservice') THEN
			CREATE ROLE appservice WITH
				  NOLOGIN
				  NOSUPERUSER
				  INHERIT
				  NOCREATEDB
				  NOCREATEROLE
				  NOREPLICATION;
	END IF;
END
$$;



DO $$
BEGIN
	IF NOT EXISTS (SELECT * FROM pg_user WHERE usename = 'application') THEN
        CREATE ROLE "application" WITH
          LOGIN
          PASSWORD 'Welcome#123'
          NOSUPERUSER
          INHERIT
          NOCREATEDB
          NOCREATEROLE
          NOREPLICATION;
        GRANT appservice TO "application";
	END IF;
END
$$;



COMMENT ON ROLE "application" IS 'App account for application';

