CREATE TABLE voters(
    voter_first_name VARCHAR2(255) CONSTRAINT vo_fname_NN NOT NULL,
    voter_middle_init CHAR,
    voter_last_name VARCHAR2(255) CONSTRAINT vo_lname_NN NOT NULL,
    voter_ssn NUMBER(5, 0) CONSTRAINT vo_ssn_pk PRIMARY KEY
        CHECK (voter_ssn > 0),
    address VARCHAR2(255),
    voter_gender CHAR,
    voter_birthdate DATE
    );

CREATE TABLE candidates(
    candidate_first_name VARCHAR2(255) CONSTRAINT can_fname_NN NOT NULL,
    candidate_middle_init CHAR,
    candidate_last_name VARCHAR2(255) CONSTRAINT can_lname_NN NOT NULL,
    candidate_ssn NUMBER(5, 0) CONSTRAINT can_ssn_pk PRIMARY KEY
        CHECK (candidate_ssn > 0),
    political_party VARCHAR2(255),
    candidate_gender CHAR,
    candidate_birthdate DATE
    );

CREATE TABLE election_events(
    event_number NUMBER(5, 0) CONSTRAINT ee_enumber_pk PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    event_type VARCHAR(255), 
    event_name VARCHAR2(255)
    );

CREATE TABLE votes(
    time_stamp DATE CONSTRAINT vs_ts_NN NOT NULL,
    vote_location VARCHAR2(255) CONSTRAINT vs_loc_NN NOT NULL,
    voter_ssn NUMBER(5, 0) CONSTRAINT vs_vssn_fk REFERENCES voters,
    candidate_ssn NUMBER(5, 0) CONSTRAINT vs_cssn_fk REFERENCES candidates,
    event_number NUMBER(5, 0) CONSTRAINT vs_enum_fk REFERENCES election_events,
    CONSTRAINT vs_pk PRIMARY KEY(voter_ssn, candidate_ssn, event_number)
    );

CREATE TABLE event_locations(
    event_number NUMBER(5, 0) CONSTRAINT el_enum_fk REFERENCES election_events,
    event_location VARCHAR2(255) CONSTRAINT el_loc_NN NOT NULL,
    CONSTRAINT el_pk PRIMARY KEY(event_number, event_location)
    );

CREATE TABLE registers(
    event_number NUMBER(5, 0) CONSTRAINT re_enum_fk REFERENCES election_events,
    voter_ssn NUMBER(5, 0) CONSTRAINT re_vssn_fk REFERENCES voters,
    voting_status NUMBER(1, 0), -- 0 for false or 1 for true or NULL
    CONSTRAINT re_pk PRIMARY KEY(event_number, voter_ssn)
    );

CREATE TABLE nominations(
    event_number NUMBER(5, 0) CONSTRAINT no_enum_fk REFERENCES election_events,
    candidate_ssn NUMBER(5, 0) CONSTRAINT no_cssn_fk REFERENCES candidates,
    candidate_symbol VARCHAR2(255) CONSTRAINT no_sym_NN NOT NULL,
    candidate_number NUMBER(3, 0) CONSTRAINT no_num_NN NOT NULL,
    CONSTRAINT no_pk PRIMARY KEY(event_number, candidate_ssn)
    );
