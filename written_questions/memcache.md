###How can Memcache improve a site’s performance? Include a description about how data is stored and retrieved in a multi-node configuration.

Memcache works tirelessly to improve performance by lightening the load and queries on a database. The cached data is stored in a hash where users can call a key and receive the value in data.
This function is so effective, in part, by the utilization of multiple web-servers that allocate the data. When a query is made, each server in the memcache line up receives a request for that specific data. Upon receipt of the data request, the server containing that information returns the data relating to the key.

Being that database queries can tax a system and gobble up valuable resources that slow down development, the ability to access cached data is priceless.

It's important to keep in mind that the keys used in the cached system can be stored indefinitely or for a predetermined time before expiration. When a request is made for data, the cached information is first searched to see if that information is immediately available. If not, the data is pulled from the database and the response is cached for future requests.