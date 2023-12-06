DROP TABLE IF EXISTS task;
DROP SEQUENCE IF EXISTS global_seq_task;

-- ______________________________________________________--

CREATE SEQUENCE global_seq_task START WITH 1 INCREMENT BY 1;
CREATE TABLE task (
                      id  INT PRIMARY KEY DEFAULT nextval('global_seq_task'),
                      title VARCHAR(160),
                      description VARCHAR(500),
                      status VARCHAR(25),
                      priority VARCHAR(25),
                      founder VARCHAR(50),
                      executor VARCHAR(50)
);