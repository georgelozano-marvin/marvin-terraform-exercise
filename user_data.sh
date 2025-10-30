#!/bin/bash
set -euxo pipefail

dnf -y update
dnf -y install nginx
systemctl enable nginx
systemctl start nginx

cat >/usr/share/nginx/html/index.html <<'EOF'
<!doctype html>
<html lang="en">
<head><meta charset="utf-8"><title>Hello</title></head>
<body style="font-family: system-ui, sans-serif; padding: 40px;">
  <h1>Hello, Marvin!</h1>
  <p>This page was deployed automatically by <strong>Terraform + user_data</strong> on Amazon Linux 2023.</p>
</body>
</html>
EOF
