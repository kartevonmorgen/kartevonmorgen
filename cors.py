from mitmproxy import http

def response(flow):
    # Allo-Origin must not '*' because of CORS + Cookies
    flow.response.headers["Access-Control-Allow-Origin"] = "http://localhost:8080"
    flow.response.headers["Access-Control-Allow-Credentials"] = "true"
    
    # Use this if the application sends auth info via header
    flow.response.headers["Access-Control-Expose-Headers"] = "Authorization"

def request(flow):
    # Hijack CORS OPTIONS request
    if flow.request.method == "OPTIONS":
        flow.response = http.HTTPResponse.make(200, b"",
            # Allo-Origin must not '*' because of CORS + Cookies
            {"Access-Control-Allow-Origin": "http://localhost:8080",
             "Access-Control-Allow-Methods": "GET,POST,PUT,DELETE",
             "Access-Control-Allow-Headers": "content-type",
             "Access-Control-Allow-Credentials": "true",
             "Access-Control-Max-Age": "1728000"})
