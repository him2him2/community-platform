BEGIN;

CREATE TABLE contributor_github_activity (
    github_event_id text NOT NULL,
    github_user_github_id integer NOT NULL REFERENCES github_user(id) ON DELETE RESTRICT,
    github_repo_github_id integer NOT NULL REFERENCES github_repo(id) ON DELETE RESTRICT,
    contribution_type text NOT NULL,
    contribution_date timestamp with time zone NOT NULL,
    PRIMARY KEY (github_event_id, github_repo_github_id)
);

COMMIT;