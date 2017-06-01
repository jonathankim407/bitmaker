Lecture 18
Thursday, Jun 1st
Intro to Web Applications Part 1

HTTP & Intro to Sinatra

HTTP runs on the concept of Requests and Responses
E.g. Request  = You go to a restaurant and order a meal
     Response = Follows the request, there is no response without a request
E.g. A single server serves multiple people
     Multiple people can give requests to a single server

HTTP status codes
404 error = When you ask for something and the server cannot find it

500 internal server error = Something has gone wrong when trying to process your request
Usually because of an exception, means theres a bug in their code

307 Temporary Redirect = We dont serve steak here, go to the other restaurant

599 (Informal convention) Network connect timeout error = Server takes your order and never comes back

Get request = When youre trying to get a package from the post office
Start with nothing, end up with package

Post request = I want to post a package, sending a package
Start with package, end up with nothing

REQUEST
HOW   = POST
WHERE = Address

HOW   = GET
WHERE = #2
WHO   = you, duh, dont need this information
WHY   = who cares, dont need this information
WHEN  = now, dont need this information
WHAT  = optional (YOU ONLY NEED WHAT FOR POST)

          PARTS OF A REQUEST @ CP
HEADER    HOW       GET           POST
HEADER    WHERE     Package No.   address
BODY      WHAT      N/A           box

REMEMBER THIS
Name of web server = www.imdb.com
Local Address      = /title/tt0241527
You send a package to Hong Kong, you write Hong Kong in english and the rest of the address in chinese
Post office is only interested in the name of the country, the rest is up to the Hong Kong post office

When logging in to a site, the post request is giving the site a package that includes your username and password

REQUESTS                                                                         RESPONSES
METHOD        DESCRIPTION             HEADER      BODY     STATUS CODE           HEADER      BODY         STATUS CODE
GET           Gets a resource         Y           N        N                     Y           Y            Y
POST          Create new resource     Y           Y        N                     Y           Sometimes    Y
PATCH/PUT     Updates a resource      Y           Y        N                     Y           Sometimes    Y
DELETE        Junks a resource        Y           N        N                     Y           Sometimes    Y

HTTP Verbs    CRUD                    Requests have 2 parts (Header, Body)       Responses have 3 parts (Header, Body, Status Code)

CRUD = Create, Read, Update, Delete

HTTP STATUS CODES
1xx Informational responses
2xx Success
- 200 OK
3xx Redirection
- 301 Moved Permanently
- 302 Found
4xx Client errors
- 403 Forbidden
- 404 Not Found
5xx Server error
- 500 Internal Server Error
- 503 Service Unavailable

Sinatra is a langauge that does one job well: Respond to requests
It is a domain-specific language (DSL): a computer language specialized to a particular application domain.
Its a mini language

We work in Ruby, and Sinatra is a dialect of the language
