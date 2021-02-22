SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'trails';

DROP DATABASE trails;

CREATE DATABASE trails;