SELECT *
FROM park;

SELECT *
FROM trail;

INSERT INTO park
(
        park_name
        , reservation
        , location
)
VALUES
(
     'Cuyahoga Valley National Park'
     , null
     , 'Brecksville, OH'
);


INSERT INTO park
(
        park_name
        , reservation
        , location
)
VALUES
(   
        'Cleveland Metroparks'
        , 'Acacia Reservation'
        ,  '26899 Cedar Road Lyndhurst, OH 44124'
);

DELETE FROM park
WHERE park_name = 'Cuyahoga Valley National Park';