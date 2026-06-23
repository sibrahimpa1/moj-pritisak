-- Enable UUID extension
create extension if not exists "uuid-ossp";

-- Measurements table
create table measurements (
  id uuid default uuid_generate_v4() primary key,
  measured_at timestamptz not null,
  systolic integer not null check (systolic between 60 and 250),
  diastolic integer not null check (diastolic between 40 and 150),
  pulse integer not null check (pulse between 30 and 200),
  note text,
  pin_hash text not null,
  created_at timestamptz default now()
);

-- Bowel movements table
create table bowel_movements (
  id uuid default uuid_generate_v4() primary key,
  recorded_at timestamptz not null,
  type integer not null check (type between 1 and 7),
  note text,
  pin_hash text not null,
  created_at timestamptz default now()
);

-- Indexes for date filtering
create index on measurements (measured_at desc);
create index on bowel_movements (recorded_at desc);

-- Row Level Security: allow all operations (PIN filtering done in app)
alter table measurements enable row level security;
alter table bowel_movements enable row level security;

create policy "Public access" on measurements for all using (true);
create policy "Public access" on bowel_movements for all using (true);
