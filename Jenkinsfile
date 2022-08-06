pipeline {
    agent any
    tools {
        maven "Maven"
    }

    stages {
        stage('git clone') {
            steps {
                git branch: 'main', url: 'https://github.com/gubbi555/foodwater'
            }
        }
        stage ('ansible init'){
            steps {
                tool name: 'Ansible', type: 'org.jenkinsci.plugins.ansible.AnsibleInstallation'
            }
        }
        stage ('maven build') {
            steps {
                sh 'mvn package'
            }
        }
        stage('ansible deploy') {
            steps {
                sh 'ansible-playbook main.yml -i dev --user jenkins'
            }
        }
    }
}
