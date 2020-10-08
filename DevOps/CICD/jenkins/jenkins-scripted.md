node{
stage('SC') {
    git 'https://github.com/wakaleo/game-of-life.git'
}
stage('Build package') {
    sh 'mvn package'
}
stage('public junit test results') {
   junit 'gameoflife-web/target/surefire-reports/*.xml'
}
stage('archive the artifact') {
    archive 'gameoflife-web/target/*.war'
}
}