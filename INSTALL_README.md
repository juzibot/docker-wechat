- 下载并解压 https://github.com/huan/docker-wechat/releases/download/v0.1/home.2.7.1.88.tgz

- 在windows电脑中安装所需的微信版本，替换解压后的WeChat目录

- 在home目录下创建wechat-install.reg注册表（注册表内容需要从windows中获取当前版本所对应的内容）

  ```
  Windows Registry Editor Version 5.00

  [HKEY_CURRENT_USER\Software\Tencent\WeChat]
  "ChannelId"=dword:000003e8
  "Version"=dword:62070155
  "InstallPath"="C:\\Program Files\\Tencent\\WeChat"
  "LANG_ID"=dword:00000009
  "CrashVersion"=dword:62070155
  "CrashCnt"=dword:00000000
  "NeedUpdateType"=dword:00000000
  "UpdateFailCnt"="1644626309;3"
  ```

- 在windows/linux环境压缩（不要在mac环境压缩会导致._home目录无法处理的问题）

- 将压缩后内容上传S3，修改可访问权限
