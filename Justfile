run:
  # Serving HTTP on port 8080, with auto-refresh enabled
  algernon -n --domain -t -a :8080

prod:
  # Serving HTTP on port 80 and also HTTPS on port 443 if there are certificates or Let's Encrypt is enabled.
  # Serving domains if there is a directory per domain, like "localhost" or "myhappydomain.com".
  # Using a bit of cache, no auto-refresh and using Redis/Valkey at localhost:6379 as the database.
  algernon -n --domain -n -c --server --cachesize 67108864 --prod --redis=localhost:6379 .
