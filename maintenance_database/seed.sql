PRAGMA foreign_keys = ON;

-- Users
INSERT INTO users (name, email, role) VALUES ('Admin User', 'admin@example.com', 'admin');
INSERT INTO users (name, email, role) VALUES ('Tech One', 'tech1@example.com', 'technician');
INSERT INTO users (name, email, role) VALUES ('Tech Two', 'tech2@example.com', 'technician');

-- Assets
INSERT INTO assets (name, code, location, description) VALUES ('Air Compressor A', 'AC-1001', 'Plant 1 - Room A', 'Primary air compressor');
INSERT INTO assets (name, code, location, description) VALUES ('Conveyor Line B', 'CONV-2002', 'Plant 1 - Line B', 'Main conveyor line B');

-- Tasks
INSERT INTO maintenance_tasks (title, description, asset_id, assigned_to, status, priority, due_date)
VALUES ('Inspect compressor filters', 'Check and clean/replace filters as needed', 1, 2, 'pending', 'high', DATE('now', '+3 days'));

INSERT INTO maintenance_tasks (title, description, asset_id, assigned_to, status, priority, due_date)
VALUES ('Lubricate conveyor bearings', 'Apply lubricant to all specified points', 2, 3, 'in_progress', 'medium', DATE('now', '+7 days'));

-- Schedules
INSERT INTO schedules (asset_id, frequency, next_run, last_run, notes)
VALUES (1, 'monthly', DATE('now', '+27 days'), DATE('now', '-3 days'), 'Monthly compressor service');

INSERT INTO schedules (asset_id, frequency, next_run, last_run, notes)
VALUES (2, 'weekly', DATE('now', '+6 days'), DATE('now'), 'Weekly conveyor check');

-- History
INSERT INTO task_history (task_id, action, details, performed_by)
VALUES (1, 'created', 'Task created from seed', 1);

INSERT INTO task_history (task_id, action, details, performed_by)
VALUES (2, 'status_change', 'Marked as in progress', 1);
