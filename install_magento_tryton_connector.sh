#!/bin/bash

cd /tmp/

curl -L https://github.com/openlabs/magento-core-api-extension/archive/master.tar.gz | tar xz

cd magento-core-api-extension-master/Openlabs*

cp -r Openlabs/ /var/www/app/code/community/
cp app/etc/modules/Openlabs_OpenERPConnector.xml /var/www/app/etc/modules/

# Clear unused files
cd /tmp/
rm -rf magento-core-api-extension-master
