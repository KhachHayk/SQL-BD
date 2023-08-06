CREATE TABLE IF NOT EXISTS Department (
	id SERIAL PRIMARY KEY,
	name VARCHAR(128) NOT NULL
);

CREATE TABLE IF NOT EXISTS Employees (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	boss_name_id INTEGER REFERENCES Employees(id)
);

CREATE TABLE IF NOT EXISTS Еmployee (
	employees_id INTEGER NOT NULL REFERENCES Employees(id),
	department_id INTEGER NOT NULL REFERENCES Department(id),
	CONSTRAINT pk PRIMARY KEY (employees_id, department_id)
);