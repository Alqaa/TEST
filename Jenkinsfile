node('linux') {
    stage('Setup') {
        git credentialsId: '2369930e-193f-4e18-9797-76bd3d34f56e', url: 'https://github.com/UST-SEIS665/seis665-03-fall-2018-assignment-11-Alqaa.git'

        sh 'aws s3 cp s3://opopo/classweb.html ${WORKSPACE}/index.html'

          }
  
    stage('Build') {
        sh 'docker build -t classweb:1.0 .'
    }
    stage('Test') {
        sh 'docker run -d --name classweb1 -p 80:80 --env NGINX_PORT=80 classweb:1.0'
        sh 'curl -s 10.120.1.85'
        sh 'docker stop classweb1'
        sh 'docker rm --force classweb1'
    }
 }
