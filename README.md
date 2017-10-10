![Kong](http://seeklogo.com/images/K/kong-logo-3CB1F1E4A3-seeklogo.com.jpg)
# Kong Quickstart

This repos is a quickstart [Kong](https://getkong.org/) configuration used to test Kong's plugins.

It contains :
- a [Kong](https://getkong.org/) server
- a PostgreSQL server (use to store Kong's configuration)
- a [Kong Dashboard](https://github.com/PGBI/kong-dashboard)
- an [Echo service](https://hub.docker.com/r/paddycarey/go-echo/) that echos the request headers and body back at a client as JSON in the response body. (usefull to see how Kong can modify the request sent to the API)

## How to use it

Launch images :

```bash
make up
```

When it's up, connect to the Dashboard at http://localhost:8080/

You will be asked for kong server URL, enter `http://kong:8001`

You can the add the `echo` API :
* Name : **Echo**
* Urls : **/echo**
* Upstreamurl : **http://echo:8000/**

Now when connecting to http://localhost:8000/echo you will be redirected to the Echo API through Kong. You can then customize you API by adding pluggins for restriction, query modification, etc.
