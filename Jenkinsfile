pipeline {
  environment {
    REGISTRY = 'jsloan117/hackmyresume'
  }
  agent any
  options {
    timestamps ()
    disableResume ()
    timeout(activity: true, time: 1, unit: 'HOURS')
    warnError('An error has occurred')
  }
  triggers {
    cron('H 0 */15 * *')
  }
  parameters {
    choice(
      name: 'BRANCH',
      description: 'Branch',
      choices: ['dev', 'master']
    )
  }
  stages {
    stage('Checkout repo') {
      /* code checkout first */
      steps {
        checkout(
          [$class: 'GitSCM',
          branches: [[name: "refs/heads/${params.BRANCH}" ]], 
          doGenerateSubmoduleConfigurations: false,
          extensions: [
            [$class: 'CleanBeforeCheckout'],
            [$class: 'CheckoutOption', timeout: 5]],
          submoduleCfg: [],
          userRemoteConfigs:
            [[credentialsId: 'githubkey', url: 'git@github.com:jsloan117/docker-hackmyresume.git']]
        ])
        script {
          shortCommit = sh(returnStdout: true, script: "git log -n 1 --pretty=format:'%h'").trim()
          ansiColor('xterm') {
            echo "$shortCommit"
          }
        }
      }
    }
    stage('Building image') {
      /* build images */
      steps {
        script {
          if (params.BRANCH == 'dev') {
            dockerImage = docker.build("$REGISTRY:dev", "--compress -f Dockerfile .")
            dockerImageAlt = docker.build("$REGISTRY:ubuntu-dev", "--compress -f Dockerfile.ubuntu .")
          } else if (params.BRANCH == 'master') {
            dockerImage = docker.build("$REGISTRY:latest", "-f Dockerfile .")
            dockerImageAlt = docker.build("$REGISTRY:ubuntu-latest", "-f Dockerfile.ubuntu .")
          }
        }
      }
    }
    stage('Test image') {
      /* simple testing method */
      steps {
        script {
          dockerImage.inside() {
            sh 'hackmyresume --version'
          }
        }
      }
    }
    stage('Remove unused docker image') {
      /* remove images after push */
      steps {
        script {
          if (params.BRANCH == 'dev') {
            sh "docker rmi $REGISTRY:dev"
            sh "docker rmi $REGISTRY:ubuntu-dev"
          } else if (params.BRANCH == 'master') {
            sh "docker rmi $REGISTRY:latest"
            sh "docker rmi $REGISTRY:ubuntu-latest"
          }
        }
      }
    }
  }
}
