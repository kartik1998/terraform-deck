* Let's say that you update the permission of your local file. Terraform will first delete it and then create a new file with the updated permissions. In some cases you might want the file to be created first.. also what if you don't want the previous file to be deleted? You can achieve this via lifecycle rules

<b>Lifecycle rules: </b>

![](https://raw.githubusercontent.com/kartik1998/dotterraform/master/images/lifecycle_rules.png)