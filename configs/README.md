Dir for different config files

! - added "with open('/tmp/token', 'w') as f:    f.write(app.config['ACCESS_TOKEN'])" to /usr/local/lib/python3.8/site-packages/graphenex/core/web/__init__.py (because we need to run grapheneX as daemon via ansible, also we need to store token)
