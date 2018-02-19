@Library("pipeline-libs") _
    trendyol_kubernetes_pipeline {
      	artifactType ="api"
        jenkinsLoggingMode = "Debug"
        jenkinsNode ="master"
        solutionName = {solutionName}
		dockerRepository = "sfrontregistry.trendyol.com"
        deploymentSettings =  [development:["tyweb-development"],master:["tyweb-stage1"],release:["tyweb-production1","tyweb-production2"]]
		dockerRepoCredentialId = "42684d1a-fdf7-4d4c-b7a9-4292949c17f5"
    }
