CREATE TYPE CompletionStatus as ENUM ('TODO', 'DONE');

CREATE TABLE todo.task_lists (
  task_list_id BIGINT NOT NULL,
  title INT NOT NULL,
  updated_at TIMESTAMP NOT NULL DEFAULT now(),
  PRIMARY KEY (task_list_id)
);


CREATE TABLE todo.task (
  task_id BIGINT NOT NULL,
  task_list_id BIGINT NOT NULL,
  status CompletionStatus NOT NULL,
  title INT NOT NULL,
  updated_at TIMESTAMP NOT NULL DEFAULT now(),
  PRIMARY KEY (task_id)
);


ALTER TABLE todo.task_lists
ADD CONSTRAINT task_list_id_fk FOREIGN KEY (task_list_id) REFERENCES todo.task_lists (task_list_id);
