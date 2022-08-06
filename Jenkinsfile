pipeline {
    agent any
    
    tools
    {
       maven "Maven"
    }
     
    stages {
      stage('checkout') {
           steps {
             
                git branch: 'main', url: 'https://github.com/gubbi555/foodwater'
             
          }
        }
         stage('Tools Init') {
            steps {
                tool name: 'ansible', type: 'org.jenkinsci.plugins.ansible.AnsibleInstallation'       
            }
            }
        }
     
        
         stage('Execute Maven') {
           steps {
             
                sh 'mvn package'             
          }
        }
        
        
         
        
        
        
        stage('Ansible Deploy') {
             
            steps {
                 
             
               
               sh "ansible-playbook main.yml -i dev --user jenkins --key-file ~/.ssh/id_rsa"

               
            
            }
        }
    }
}
