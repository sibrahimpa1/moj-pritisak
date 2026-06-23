# Moj Pritisak

Jednostavna web aplikacija za praćenje krvnog pritiska i stolice — na bosanskom/hrvatskom jeziku.

## Značajke

- Praćenje mjerenja krvnog pritiska (sistolni, dijastolni, puls)
- Praćenje stolice (Bristol skala 1–7)
- PIN-bazirani dijeljeni pristup — isti PIN = isti podaci
- Pregled današnjih unosa, historija, trendovi i statistike
- Izvoz podataka u JSON

## Tehnologije

- Jedan HTML fajl (`index.html`) — bez build alata
- [Supabase](https://supabase.com) za bazu podataka
- [GitHub Pages](https://pages.github.com) za hosting

## Postavljanje

### 1. GitHub repozitorij

1. Kreirajte novi repozitorij na [github.com/new](https://github.com/new) — ime: `moj-pritisak`, Public, bez README
2. U **Settings → Pages → Build and deployment → Source** odaberite **GitHub Actions**

### 2. Supabase

1. Kreirajte novi projekt na [supabase.com](https://supabase.com)
2. Otvorite **SQL Editor** i pokrenite sadržaj fajla `supabase_setup.sql`
3. Kopirajte **Project URL** i **anon public key** iz **Settings → API**

### 3. Konfiguracija aplikacije (GitHub Secrets)

Vrijednosti **ne idu u git** — dodajte ih kao tajne u GitHub repozitoriju:

1. GitHub repo → **Settings** → **Secrets and variables** → **Actions**
2. **New repository secret**:
   - `SUPABASE_URL` — npr. `https://abcdefgh.supabase.co`
   - `SUPABASE_ANON_KEY` — anon public ključ iz Supabase

Pri svakom deployu, GitHub Actions automatski ubacuje ove vrijednosti u `index.html`.

**Gdje naći Project URL u Supabase:** Dashboard → **Project Settings** (⚙️) → **API** → polje **Project URL** (na vrhu stranice).

### 4. Korištenje

Aplikacija je dostupna na: **https://sibrahimpa1.github.io/moj-pritisak/**

Pri prvom otvaranju postavite 4-cifreni PIN. Podijelite PIN s osobama kojima želite dati pristup istim podacima.

## Licenca

MIT
