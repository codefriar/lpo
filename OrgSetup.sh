sfdx force:org:create -s -f config/project-scratch-def.json -a LightningPlatformOrientation
sfdx force:source:push
sfdx force:user:permset:assign -n Grant_users_access_to_park_management_objects
sfdx force:org:open 