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

### 3. Konfiguracija aplikacije

U `index.html` zamijenite placeholder vrijednosti:

```javascript
const SUPABASE_URL = 'SUPABASE_URL_HERE';
const SUPABASE_ANON_KEY = 'SUPABASE_ANON_KEY_HERE';
```

Zatim:

```bash
git add index.html
git commit -m "Dodaj Supabase konfiguraciju"
git push
```

### 4. Korištenje

Aplikacija je dostupna na: **https://sibrahimpa1.github.io/moj-pritisak/**

Pri prvom otvaranju postavite 4-cifreni PIN. Podijelite PIN s osobama kojima želite dati pristup istim podacima.

## Licenca

MIT
