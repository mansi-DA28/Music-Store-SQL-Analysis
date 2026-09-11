CREATE TABLE artist (
    artist_id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE album (
    album_id INT PRIMARY KEY,
    title VARCHAR(255),
    artist_id INT
);

CREATE TABLE genre (
    genre_id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE media_type (
    media_type_id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    last_name VARCHAR(255),
    first_name VARCHAR(255),
    title VARCHAR(255),
    reports_to INT,
    levels VARCHAR(10),
    birthdate TIMESTAMP,
    hire_date TIMESTAMP,
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    postal_code VARCHAR(50),
    phone VARCHAR(50),
    fax VARCHAR(50),
    email VARCHAR(255)
);

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    company VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    postal_code VARCHAR(50),
    phone VARCHAR(50),
    fax VARCHAR(50),
    email VARCHAR(255),
    support_rep_id INT
);

CREATE TABLE invoice (
    invoice_id INT PRIMARY KEY,
    customer_id INT,
    invoice_date TIMESTAMP,
    billing_address VARCHAR(255),
    billing_city VARCHAR(255),
    billing_state VARCHAR(255),
    billing_country VARCHAR(255),
    billing_postal_code VARCHAR(50),
    total NUMERIC(10,2)
);

CREATE TABLE track (
    track_id INT PRIMARY KEY,
    name VARCHAR(255),
    album_id INT,
    media_type_id INT,
    genre_id INT,
    composer VARCHAR(255),
    milliseconds INT,
    bytes INT,
    unit_price NUMERIC(10,2)
);

CREATE TABLE invoice_line (
    invoice_line_id INT PRIMARY KEY,
    invoice_id INT,
    track_id INT,
    unit_price NUMERIC(10,2),
    quantity INT
);

CREATE TABLE playlist (
    playlist_id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE playlist_track (
    playlist_id INT,
    track_id INT
);
