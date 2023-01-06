pipeline { 
  agent any
  stages {
    stage ('build') {
      steps {
        echo "Running build automation..dinesh first automation"
        sh './gradlew build --no-daemon'
      }
    }
  }
}
