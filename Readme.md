# Ypool
### ypool.net API ruby wrapper

With this gem you can call ypool.net API methods directly in Ruby!


### Usage

    pool = Ypool.new
    pool.global_stats

### Usage (personal details, requires api key)

    API_KEY = "....." # 20 characters api key, get it from: http://ypool.net/api_documentation (requires login)
    pool = Ypool.new API_KEY
    pool.live_workers
    
