BEGIN TRANSACTION;

	CREATE TABLE exchanges(
		id integer primary key,
		name text NOT NULL,
		url text NOT NULL);

	CREATE TABLE transactions(
		id integer primary key, 
		action text NOT NULL,
		pair text NOT NULL,
		amount number NOT NULL,
		price number NOT NULL,
		timestamp integer NOT NULL,
		exchange_id integer references exchanges(id) NOT NULL
	);


	INSERT INTO "exchanges" VALUES(1, "Poloniex", "https://poloniex.com");
	INSERT INTO "exchanges" VALUES(2, "Bittrex", "https://bittrex.com");

COMMIT;
