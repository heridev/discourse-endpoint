Discourse endpoint plugin
=======================

Usage
=====


Installation
============

* Add the plugin's repo url to your container's `app.yml` file

```yml
hooks:
  after_code:
    - exec:
        cd: $home/plugins
        cmd:
          - mkdir -p plugins
          - git clone https://github.com/discourse/docker_manager.git
          - git clone https://github.com/heridev/discourse-endpoint.git
```

* Rebuild the container

```
cd /var/docker
./launcher rebuild app
```

License
=======
MIT
