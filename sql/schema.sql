BEGIN TRANSACTION;

	-- exchanges
	CREATE TABLE exchanges(
		id integer primary key,
		name text NOT NULL,
		url text NOT NULL);

	-- prefill exchanges
	INSERT INTO "exchanges" VALUES(1, "Poloniex", "https://poloniex.com");
	INSERT INTO "exchanges" VALUES(2, "Bittrex", "https://bittrex.com");
	INSERT INTO "exchanges" VALUES(3, "Kraken", "https://kraken.com");

	
	-- transactions
	CREATE TABLE transactions(
		id integer primary key, 
		action text NOT NULL,
		pair text NOT NULL,
		amount number NOT NULL,
		price number NOT NULL,
		timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
		exchange_id integer references exchanges(id) NOT NULL
	);


COMMIT;
