linux.openvpn_install
=========

The role to configure OpenVPN in a Docker image.

Requirements
------------

None.

Role Variables
--------------

Variables are used for the SSL certificate values in the `vars.j2`.  In this case they are:

- `easyrsa_country`
- `easyrsa_state`
- `easyrsa_city`
- `easyrsa_org`
- `easyrsa_email`
- `easyrsa_OU`

Section of the `vars.j2` file:

```
export KEY_COUNTRY="{{ easyrsa_country | default('US') }}"
export KEY_PROVINCE="{{ easyrsa_state | default('NY') }}"
export KEY_CITY="{{ easyrsa_city | default('New York') }}"
export KEY_ORG="{{ easyrsa_org | default('Mod') }}"
export KEY_EMAIL="{{ easyrsa_email | default('admin@localhost') }}"
export KEY_OU="{{ easyrsa_OU | default('DevOps') }}"
```

Dependencies
------------

None.

Example Playbook
----------------

TBD.
License
-------

BSD

Author Information
------------------

Bill Cawthra - http://bonovoxly.github.io/
