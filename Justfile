run:
  # Serve HTTP on port 8080, with auto-refresh enabled
  algernon -n -t -a :8080 .

prod:
  # Serving HTTP on port 80 and also HTTPS on port 443 if there are certificates or Let's Encrypt is enabled.
  # Using a bit of cache, no auto-refresh and using Redis/Valkey at localhost:6379 as the database.
  # Look at the Algernon documentation or "algernon --help" for more information.
  algernon -n -c --server --cachesize 67108864 --prod --redis=localhost:6379 .
