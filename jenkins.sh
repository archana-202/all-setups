#STEP-1: INSTALLING GIT JAVA-1.8.0 MAVEN
yum install git java-1.8.0-openjdk maven -y

#STEP-2: GETTING THE REPO (browser --> jenkins.io --> download -- > redhat)
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

#STEP-3: DOWNLOAD JAVA17 AND JENKINS
yum install java-17-amazon-corretto jenkins -y

#STEP-4: START JENKINS (when we download service it will on stopped state)
systemctl start jenkins.service
systemctl status jenkins.service
