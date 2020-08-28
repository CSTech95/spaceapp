CREATE DATABASE spaceApp;


--\c into users_database
CREATE TABLE users
(
    id SERIAL PRIMARY KEY,
    firstName VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
);

-- Mars Rover Photos Table
CREATE TABLE mars_rover_photos
(
    id SERIAL PRIMARY KEY,
    camera_name VARCHAR(255),
    camera_nickname VARCHAR(255),
    earth_date VARCHAR(255),
    launch_date VARCHAR(255),
    landing_date VARCHAR(255),
    img_src VARCHAR(255),
    status VARCHAR(255),
)

CREATE TABLE nearAsteroids
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    estimated_diameter_min VARCHAR(255),
    estimated_diameter_max VARCHAR(255),
    is_potentially_hazardous_asteroid BOOLEAN,
    close_approach_date_full VARCHAR(255),
    --kps = kilometers per second
    velocity_kps VARCHAR(255),
    miss_distance_miles VARCHAR(255),
    orbiting_body VARCHAR(255),
)

CREATE TABLE apod
(
    id SERIAL PRIMARY KEY,
    curr_date VARCHAR(255),
    title VARCHAR(255),
    img VARCHAR(255),
    explanation VARCHAR(255),
    copyright VARCHAR(255),
)