## Authentication

The ACI provider offers a flexible way of providing credentials for authentication. The following methods are supported, in this order, and explained below:

- Static credentials
- Environment variables

### Static credentials

You can provide your credentials using the aci provider parameters in the terraform file.

```
provider "aci" {
  url            = "https://host:port"
  username       = "user"
  password       = "password"
  allow_insecure = true
  domain         = "mydomain.com"
}
```

Usage:

```
$ terraform plan
```

### Environment variables

You can provide your credentials via the `ACI_URL`, `ACI_USER`, `ACI_PASS`, `ACI_ALLOW_INSECURE` and `ACI_DOMAIN` (optional) environment variables.

```
provider "aci" {}
```

Usage:

```
$ export ACI_URL="https://host:port"
$ export ACI_USERNAME="user"
$ export ACI_PASSWORD="password"
$ export ACI_ALLOW_INSECURE=true
$ export ACI_DOMAIN="mydomain.com"
$ terraform plan
```
