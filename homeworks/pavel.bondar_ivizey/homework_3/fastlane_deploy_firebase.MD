[21:46:55]: $ bundle exec fastlane deploy_firebase
[21:46:55]: 
[21:46:55]: Get started using a Gemfile for fastlane https://docs.fastlane.tools/getting-started/ios/setup/#use-a-gemfile
+------------------------+---------+------------------------+
|                       Used plugins                        |
+------------------------+---------+------------------------+
| Plugin                 | Version | Action                 |
+------------------------+---------+------------------------+
| fastlane-plugin-fireb  | 0.1.4   | firebase_app_distribu  |
| ase_app_distribution   |         | tion                   |
+------------------------+---------+------------------------+

[21:46:57]: ------------------------------
[21:46:57]: --- Step: default_platform ---
[21:46:57]: ------------------------------
[21:46:57]: Driving the lane 'ios deploy_firebase' 🚀
[21:46:57]: ----------------------------------------
[21:46:57]: --- Step: Verifying fastlane version ---
[21:46:57]: ----------------------------------------
[21:46:57]: Your fastlane version 2.134.0 matches the minimum requirement of 2.119.0  ✅
[21:46:57]: ------------------------------
[21:46:57]: --- Step: default_platform ---
[21:46:57]: ------------------------------
[21:46:57]: ---------------------------------------
[21:46:57]: --- Step: firebase_app_distribution ---
[21:46:57]: ---------------------------------------
[21:47:01]: ▸ i  getting app details...
[21:47:04]: ▸ i  uploading distribution...
[21:47:08]: ▸ ✔  uploaded distribution successfully
[21:47:08]: ▸ i  adding release notes...
[21:47:09]: ▸ ✔  added release notes successfully
[21:47:09]: ▸ i  adding testers/groups...
[21:47:11]: ▸ ✔  added testers/groups successfully

+------+------------------------+-------------+
|              fastlane summary               |
+------+------------------------+-------------+
| Step | Action                 | Time (in s) |
+------+------------------------+-------------+
| 1    | default_platform       | 0           |
| 2    | Verifying fastlane     | 0           |
|      | version                |             |
| 3    | default_platform       | 0           |
| 4    | firebase_app_distribu  | 13          |
|      | tion                   |             |
+------+------------------------+-------------+

[21:47:11]: fastlane.tools finished successfully 🎉

#######################################################################
# fastlane 2.137.0 is available. You are on 2.134.0.
# You should use the latest version.
# Please update using `sudo gem install fastlane`.
#######################################################################
# Run `sudo gem cleanup` from time to time to speed up fastlane
#######################################################################

2.137.0 Improvements
* [supply] raise error if rollout is used as argument for the track or track_promote_to options (#15692) via Josh Holtz
* [supply] upload meta in same commit to fix issue with validate_only (#15691) via Josh Holtz
* [action] gradle: Add support for mapping.txt file (#15597) via NicoEkino
* [screengrab] address issue #15674 - make sure aapt is available before trying to clean status bar (#15684) via Hiroto Nakamura
* [screengrab] Remove unused clean status bar options (#15679) via Rick Clephas
* [action] added custom option to testfairy upload (#15670) via Vijay Sharma
* [supply] don't apply rollout when value 1 of when uploading and don't call promote or rollout methods when uploading (#15668) via Josh Holtz
* [ensure_bundle_exec] Fix wording in action error message and d… (#15596) via Iulian Onofrei
* [fastlane] fix typo in code comment (#15604) via Iulian Onofrei
* [action] fix formatting in ruby_version action's details (#15605) via Iulian Onofrei

2.136.0 Screengrab improvements and supply fixes
* [supply] use version code for changelog again (regression introducted in 2.135.0) (#15665) via Josh Holtz
* [Fastlane.swift] default tool hash to [:] not {} and test swift generation on circle (#15654) via Josh Holtz
* [screengrab] update bintray plugin to 0.9.1 so releases work again (#15642) via Josh Holtz
* [supply] fixes some issue with version codes not being found and allows promote with rollout now (#15647) via Josh Holtz
* [screengrab] let users set clean status bar (#15284) via Rick Clephas
* [screengrab] add `adb_host` option (#14948) via Cedric Gatay
* [screengrab] add config to allow disabling timestamp suffix to filename  (#14781) via Hiroto-N
* [screengrab] updated apk paths in Screengrabfile (#15077) via Rishabh Tayal
* [screengrab] added new internal path for screenshots and run adb root to prevent access denied (#15635) via Josh Holtz
* [screengrab] update Screengrab to AndroidX (#15217) via Colin Lee

2.135.2 Hotfix for uploading a draft using supply
* [supply] fix allowing uploading of a draft release on a track with a completed release (#15627) via Josh Holtz

To see all new releases, open https://github.com/fastlane/fastlane/releases

Please update using `sudo gem install fastlane`