* You might face terraform version issues with providers which can be fixed by specifying the version in main configuration file like: 

```terraform
terraform {
  required_providers {
    terraform = {
      source = "hashicorp/terraform"
      version = "1.0.0"
    }
  }
}
```

* sample error will look like: 

![](https://raw.githubusercontent.com/kartik1998/dotterraform/master/images/version_error.png)