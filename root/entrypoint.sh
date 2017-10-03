#!/bin/bash
#
service apache2 start
service postgresql start 
exec /opt/scodoc/instance/bin/zopectl fg start 
