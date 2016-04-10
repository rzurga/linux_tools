linux_tools Cookbook
====================
A set of Chef installs for small Linux tools that don't come installed by default.

Requirements
------------
None

Attributes
----------
None

Usage
-----
#### linux_tools::default

Just include `linux_tools` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[linux_tools]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Robert Zurga (vagrant@zurga.com)
