fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew cask install fastlane`

# Available Actions
## iOS
### ios match_decrypt
```
fastlane ios match_decrypt
```

### ios match_encrypt
```
fastlane ios match_encrypt
```

### ios get_cert_id
```
fastlane ios get_cert_id
```
Get cert ID for manual encrypt for match
### ios match_decrypt_repo
```
fastlane ios match_decrypt_repo
```
Decrypt match repo
### ios match_encrypt_repo
```
fastlane ios match_encrypt_repo
```
Encrypt match repo on path

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
