-- Run this in Supabase SQL Editor if weight_entries does not exist yet.

create table if not exists weight_entries (
  id uuid default uuid_generate_v4() primary key,
  recorded_at timestamptz not null,
  weight_kg numeric(5, 1) not null check (weight_kg between 30 and 300),
  note text,
  pin_hash text not null,
  created_at timestamptz default now()
);

create index if not exists weight_entries_recorded_at_idx on weight_entries (recorded_at desc);

alter table weight_entries enable row level security;

create policy "Public access" on weight_entries for all using (true);
