-- Run this in Supabase SQL Editor if you already created the database before probiotics were added.

create table if not exists probiotic_entries (
  id uuid default uuid_generate_v4() primary key,
  taken_at timestamptz not null,
  types text[] not null,
  note text,
  pin_hash text not null,
  created_at timestamptz default now()
);

create index if not exists probiotic_entries_taken_at_idx on probiotic_entries (taken_at desc);

alter table probiotic_entries enable row level security;

create policy "Public access" on probiotic_entries for all using (true);
