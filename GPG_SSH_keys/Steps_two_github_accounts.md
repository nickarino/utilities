* login to https://github.com/settings/emails and validate your primary email
* On local machine,
```
git config --global user.name "Name"
git config --global user.email "GitHub email here"
```
* Now create SSH keys
```
ssh-keygen.exe -b 4096 -t rsa -C "nick@ourdecsions.com" -f C:\Users\skriloffn\.ssh\id_rsa_github_nickarino
```

* validate the hash by
```
ssh-keygen -lf C:\Users\skriloffn\.ssh\id_rsa_github_nickarino.pub
```

* Make sure the sha hash of the key is in my keystore
```
PS C:\dev> ssh-add -l 
4096 SHA256:Qg86xZ37ErlRBV+iYybUawsJyEQzED6I4kzoe9S2Auo nick@ourdecsions.com (RSA)
3072 SHA256:ZpdKAlSS3qZY1osvkj/tJG3XBNA7u/mYgQzOMegcBNk darden\skriloffn@SKRILOFFN-10L4 (RSA)
PS C:\dev> ssh-keygen.exe -lf C:\Users\skriloffn\.ssh\id_rsa
3072 SHA256:ZpdKAlSS3qZY1osvkj/tJG3XBNA7u/mYgQzOMegcBNk darden\skriloffn@SKRILOFFN-10L4 (RSA)

```

* To get the ssh agent running, you either 
Git Bash, by default PowerShell does not have eval command enabled.
```
$ eval $(ssh-agent -s)
Agent pid 4723
$ ssh-add ~/.ssh/id_github_nickname

For powershell
PS C:\Users\skriloffn\.ssh>  Get-Service -Name ssh-agent                                  

Status   Name               DisplayName
------   ----               -----------
Running  ssh-agent          OpenSSH Authentication Agent
```
* [link to getting ssh client setup](https://stackoverflow.com/questions/52113738/starting-ssh-agent-on-windows-10-fails-unable-to-start-ssh-agent-service-erro) 

* Validate your ssh connection
```
 ssh git@github.com   (Not username@github.com)
 ```
 
 ```
ssh -i C:\Users\skriloffn\.ssh\id_rsa_github_nickarino git@github.com
```


 * For each command window session, set this
 ```
 $env:GIT_SSH_COMMAND="ssh -i C:\Users\skriloffn\.ssh\id_rsa_github_nickarino"
 ```
 
 See the picture [here](https://ourdecisions-my.sharepoint.com/personal/nick_ourdecisions_com/_layouts/15/doc.aspx?sourcedoc={39c6f729-f50a-435d-89c5-fcd62a33a84d}&action=edit&or=PrevCreateNew&wdnewandopenct=0)

