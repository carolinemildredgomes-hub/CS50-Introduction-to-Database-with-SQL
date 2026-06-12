INSERT INTO users
(first_name, last_name, username, password)
VALUES
('Claudine', 'Gay', 'claudine', 'password'),
('Reid', 'Hoffman', 'reid', 'password');


INSERT INTO schools
(name, school_type, location, founded_year)
VALUES
(
'Harvard University',
'Higher Education',
'Cambridge, Massachusetts',
1636
);

INSERT INTO companies
(name, industry, location)
VALUES
(
'LinkedIn',
'Technology',
'Sunnyvale, California'
);


INSERT INTO school_affiliations
(
user_id,
school_id,
degree,
start_date,
end_date
)
VALUES
(
1,
1,
'PhD',
'1993-01-01',
'1998-12-31'
);


INSERT INTO company_affiliations
(
user_id,
company_id,
title,
start_date,
end_date
)
VALUES
(
2,
1,
'CEO and Chairman',
'2003-01-01',
'2007-02-01'
);



