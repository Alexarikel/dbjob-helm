# dbjob
Helm chart to run commands on databases (Postgres / MySQL) like VACCUM, backup, etc

## Requirements
Before launching ***helm install***, you need to create following files and set following parametres:<br/><br/>
- [x] Create **secret manifest file** with your **database password** and put the name of the secret and key of the db password in the **values.yaml**
- [x] Create **docker-registry secret** with your **docker registry creds** and put the creds of your docker registry in the **values.yaml**<br/><br/>

Update following parameters in the **values.yaml**:

```
db:
  name: <my-db-name>
  serviceUrl: <database-service>
  port: <database-port>
  user: <db-user>
  
commands: {commands to run on database}

schedule: <cron for job>
containerName: database-client (can be changed)
image:
  repository: <docker-image>
  tag: <overrides the image tag whose default is the chart appVersion>
```

## Installing the Chart
To install the chart with the release name **dbjob**:
```
helm install dbjob .
```
## Uninstalling the Chart
To uninstall/delete the dbjob deployment:
```
helm uninstall dbjob 
```


