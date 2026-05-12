#!/bin/bash

echo "Testing security headers..."
curl -I http://localhost | grep -E "Content-Security-Policy|X-Frame-Options|X-Content-Type-Options"

echo ""
echo "Testing blocked HTTP methods..."

echo "TRACE test:"
curl -X TRACE -I http://localhost

echo "DELETE test:"
curl -X DELETE -I http://localhost

echo ""
echo "Done."
