[0KRunning with gitlab-runner 12.5.0 (577f813d)
[0;m[0K  on MacbookRunner 9DfsiMvd
[0;msection_start:1575221183:prepare_executor
[0K[0KUsing Shell executor...
[0;msection_end:1575221183:prepare_executor
[0Ksection_start:1575221183:prepare_script
[0KRunning on Andreys-MacBook-Pro.local...
section_end:1575221183:prepare_script
[0Ksection_start:1575221183:get_sources
[0K[32;1mFetching changes with git depth set to 50...[0;m
Reinitialized existing Git repository in /Users/astrib/wordmix/builds/9DfsiMvd/0/ihawk/wordmix/.git/
From https://gitlab.com/ihawk/wordmix
 * [new ref]         refs/merge-requests/2/head -> refs/merge-requests/2/head
 * [new ref]         refs/pipelines/99791455    -> refs/pipelines/99791455
[32;1mChecking out 8ea40401 as refs/merge-requests/2/head...[0;m
Removing fastlane/report.xml
Removing fastlane/test_output/
[32;1mSkipping Git submodules setup[0;m
section_end:1575221185:get_sources
[0Ksection_start:1575221185:restore_cache
[0K[32;1mChecking cache for 99791455...[0;m
Runtime platform                                  [0;m  arch[0;m=amd64 os[0;m=darwin pid[0;m=28487 revision[0;m=577f813d version[0;m=12.5.0
No URL provided, cache will not be downloaded from shared cache server. Instead a local version of cache will be extracted.[0;m 
[32;1mSuccessfully extracted cache[0;m
section_end:1575221185:restore_cache
[0Ksection_start:1575221185:download_artifacts
[0Ksection_end:1575221185:download_artifacts
[0Ksection_start:1575221185:build_script
[0K[32;1m$ export LC_ALL=en_US.UTF-8[0;m
[32;1m$ export LANG=en_US.UTF-8[0;m
[32;1m$ bundle exec fastlane test[0;m
+-------------------------------------------+---------+---------------------------+
|                                  [32mUsed plugins[0m                                   |
+-------------------------------------------+---------+---------------------------+
| Plugin                                    | Version | Action                    |
+-------------------------------------------+---------+---------------------------+
| fastlane-plugin-firebase_app_distribution | 0.1.4   | firebase_app_distribution |
+-------------------------------------------+---------+---------------------------+

[19:26:27]: [32m------------------------------[0m
[19:26:27]: [32m--- Step: default_platform ---[0m
[19:26:27]: [32m------------------------------[0m
[19:26:27]: [32mDriving the lane 'ios test' ðŸš€[0m
[19:26:27]: [32m----------------------------------------[0m
[19:26:27]: [32m--- Step: Verifying fastlane version ---[0m
[19:26:27]: [32m----------------------------------------[0m
[19:26:27]: Your fastlane version 2.134.0 matches the minimum requirement of 2.119.0  âœ…
[19:26:27]: [32m------------------------------[0m
[19:26:27]: [32m--- Step: default_platform ---[0m
[19:26:27]: [32m------------------------------[0m
[19:26:27]: [32m-----------------------[0m
[19:26:27]: [32m--- Step: run_tests ---[0m
[19:26:27]: [32m-----------------------[0m
[19:26:27]: [36m$ xcodebuild -showBuildSettings -workspace ./WordMix.xcworkspace -scheme WordMix[0m
[19:26:29]: Found simulator "iPhone 8 (13.2)"
[19:26:29]: [36m$ xcodebuild -showBuildSettings -workspace ./WordMix.xcworkspace -scheme WordMix[0m
[19:26:31]: Found simulator "iPhone 8 (13.2)"

+------------------------------------------------+----------------------------------------------------------------------------------------+
|                                                        [32mSummary for scan 2.134.0[0m                                                         |
+------------------------------------------------+----------------------------------------------------------------------------------------+
| scheme                                         | WordMix                                                                                |
| workspace                                      | ./WordMix.xcworkspace                                                                  |
| derived_data_path                              | /Users/astrib/Library/Developer/Xcode/DerivedData/WordMix-cpkynqycshmzpmedbgfbmaqsfeug |
| skip_detect_devices                            | false                                                                                  |
| force_quit_simulator                           | false                                                                                  |
| reset_simulator                                | false                                                                                  |
| reinstall_app                                  | false                                                                                  |
| clean                                          | false                                                                                  |
| open_report                                    | false                                                                                  |
| output_directory                               | ./fastlane/test_output                                                                 |
| output_types                                   | html,junit                                                                             |
| buildlog_path                                  | ~/Library/Logs/scan                                                                    |
| include_simulator_logs                         | false                                                                                  |
| should_zip_build_products                      | false                                                                                  |
| result_bundle                                  | false                                                                                  |
| use_clang_report_name                          | false                                                                                  |
| disable_concurrent_testing                     | false                                                                                  |
| skip_build                                     | false                                                                                  |
| slack_use_webhook_configured_username_and_icon | false                                                                                  |
| slack_username                                 | fastlane                                                                               |
| slack_icon_url                                 | https://s3-eu-west-1.amazonaws.com/fastlane.tools/fastlane.png                         |
| skip_slack                                     | false                                                                                  |
| slack_only_on_failure                          | false                                                                                  |
| xcodebuild_command                             | env NSUnbufferedIO=YES xcodebuild                                                      |
| fail_build                                     | true                                                                                   |
| xcode_path                                     | /Applications/Xcode.app                                                                |
+------------------------------------------------+----------------------------------------------------------------------------------------+

[19:26:31]: [36m$ set -o pipefail && env NSUnbufferedIO=YES xcodebuild -workspace ./WordMix.xcworkspace -scheme WordMix -destination 'platform=iOS Simulator,id=279A414D-2514-460D-AFC6-5403857DC893' -derivedDataPath '/Users/astrib/Library/Developer/Xcode/DerivedData/WordMix-cpkynqycshmzpmedbgfbmaqsfeug' build test | tee '/Users/astrib/Library/Logs/scan/WordMix-WordMix.log' | xcpretty  --report html --output '/Users/astrib/wordmix/builds/9DfsiMvd/0/ihawk/wordmix/fastlane/test_output/report.html' --report junit --output '/Users/astrib/wordmix/builds/9DfsiMvd/0/ihawk/wordmix/fastlane/test_output/report.junit' --report junit --output '/var/folders/8v/h5plyjp53wl6xs6s8w2vwwd40000gn/T/junit_report20191201-28568-15tju95' [0m
[19:26:31]: â–¸ [35mLoading...[0m
[19:26:34]: [35m[33mâ–¸[0m [39;1mLinking[0m WordMix[0m
[19:26:35]: [35m[33mâ–¸[0m [39;1mBuild[0m Succeeded[0m
[19:26:35]: [35m[33mâ–¸[0m [39;1mLinking[0m WordMix[0m
[19:26:37]: [35m[33mâ–¸[0m [39;1mLinking[0m WordMixTests[0m
[19:26:37]: â–¸ [35m2019-12-01 19:26:37.463 xcodebuild[28617:245907]  IDETestOperationsObserverDebug: Writing diagnostic log for test session to:[0m
[19:26:37]: â–¸ [35m/Users/astrib/Library/Developer/Xcode/DerivedData/WordMix-cpkynqycshmzpmedbgfbmaqsfeug/Logs/Test/Run-WordMix-2019.12.01_19-26-33-+0200.xcresult/Staging/2_Test/Diagnostics/WordMixTests-8DC508DE-C5B4-4FC4-9781-8199E5A1229C/WordMixTests-EB0B12AE-4A37-47EB-BBEA-D56AC49D90F9/Session-WordMixTests-2019-12-01_192637-w11JBP.log[0m
[19:26:37]: â–¸ [35m2019-12-01 19:26:37.463 xcodebuild[28617:245847] [MT] IDETestOperationsObserverDebug: (5A29069E-8BAD-4F06-97B1-7FBB76B14540) Beginning test session WordMixTests-5A29069E-8BAD-4F06-97B1-7FBB76B14540 at 2019-12-01 19:26:37.463 with Xcode 11B52 on target <DVTiPhoneSimulator: 0x7f9e86ad6ce0> {[0m
[19:26:37]: â–¸ [35m		SimDevice: iPhone 8 (279A414D-2514-460D-AFC6-5403857DC893, iOS 13.2, Booted)[0m
[19:26:37]: â–¸ [35m} (13.2 (17B84))[0m
[19:26:37]: â–¸ [35m2019-12-01 19:26:37.476 xcodebuild[28617:245847] [MT] IDETestOperationsObserverDebug: (5A29069E-8BAD-4F06-97B1-7FBB76B14540) Finished requesting crash reports. Continuing with testing.[0m
[19:26:40]: â–¸ [35m[39;1mAll tests[0m
[19:26:40]: â–¸ [35mTest Suite [39;1mWordMixTests.xctest[0m started[0m
[19:26:40]: â–¸ [35m[39;1mWordMixTests[0m
[19:26:40]: â–¸ [35m    [32;1mâœ“[0m testExample (0.001 seconds)[0m
[19:26:40]: â–¸ [35m    [33mâ—·[0m testPerformanceExample measured (0.000 seconds)[0m
[19:26:40]: â–¸ [35m    [32;1mâœ“[0m testPerformanceExample ([31m0.266[0m seconds)[0m
[19:26:40]: â–¸ [35m[32;1m	 Executed 2 tests, with 0 failures (0 unexpected) in 0.267 (0.269) seconds[0m
[19:26:40]: â–¸ [35m[0m
[19:26:40]: â–¸ [35m2019-12-01 19:26:40.947 xcodebuild[28617:245847] [MT] IDETestOperationsObserverDebug: 3.498 elapsed -- Testing started completed.[0m
[19:26:40]: â–¸ [35m2019-12-01 19:26:40.947 xcodebuild[28617:245847] [MT] IDETestOperationsObserverDebug: 0.000 sec, +0.000 sec -- start[0m
[19:26:40]: â–¸ [35m2019-12-01 19:26:40.947 xcodebuild[28617:245847] [MT] IDETestOperationsObserverDebug: 3.498 sec, +3.498 sec -- end[0m
[19:26:41]: [35m[33mâ–¸[0m [39;1mTest[0m Succeeded[0m
+--------------------+---+
|      Test Results      |
+--------------------+---+
| Number of tests    | 2 |
| Number of failures | [32m0[0m |
+--------------------+---+


+------+----------------------------+-------------+
|                [32mfastlane summary[0m                 |
+------+----------------------------+-------------+
| Step | Action                     | Time (in s) |
+------+----------------------------+-------------+
| 1    | default_platform           | 0           |
| 2    | Verifying fastlane version | 0           |
| 3    | default_platform           | 0           |
| 4    | run_tests                  | 14          |
+------+----------------------------+-------------+

[19:26:41]: [32mfastlane.tools finished successfully ðŸŽ‰[0m

#######################################################################
# fastlane 2.137.0 is available. You are on 2.134.0.
# You should use the latest version.
# Please update using `bundle update fastlane`.
#######################################################################

[32m2.137.0 Improvements[0m
* [supply] raise error if rollout is used as argument for the track or track_promote_to options (#15692) via Josh Holtz
* [supply] upload meta in same commit to fix issue with validate_only (#15691) via Josh Holtz
* [action] gradle: Add support for mapping.txt file (#15597) via NicoEkino
* [screengrab] address issue #15674 - make sure aapt is available before trying to clean status bar (#15684) via Hiroto Nakamura
* [screengrab] Remove unused clean status bar options (#15679) via Rick Clephas
* [action] added custom option to testfairy upload (#15670) via Vijay Sharma
* [supply] don't apply rollout when value 1 of when uploading and don't call promote or rollout methods when uploading (#15668) via Josh Holtz
* [ensure_bundle_exec] Fix wording in action error message and dâ€¦ (#15596) via Iulian Onofrei
* [fastlane] fix typo in code comment (#15604) via Iulian Onofrei
* [action] fix formatting in ruby_version action's details (#15605) via Iulian Onofrei

[32m2.136.0 Screengrab improvements and supply fixes[0m
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

[32m2.135.2 Hotfix for uploading a draft using supply[0m
* [supply] fix allowing uploading of a draft release on a track with a completed release (#15627) via Josh Holtz

[32mTo see all new releases, open https://github.com/fastlane/fastlane/releases[0m

[32mPlease update using `bundle update fastlane`[0m
section_end:1575221202:build_script
[0Ksection_start:1575221202:after_script
[0Ksection_end:1575221202:after_script
[0Ksection_start:1575221202:archive_cache
[0K[32;1mCreating cache 99791455...[0;m
Runtime platform                                  [0;m  arch[0;m=amd64 os[0;m=darwin pid[0;m=28823 revision[0;m=577f813d version[0;m=12.5.0
Pods/: found 397 matching files                   [0;m 
No URL provided, cache will be not uploaded to shared cache server. Cache will be stored only locally.[0;m 
[32;1mCreated cache[0;m
section_end:1575221203:archive_cache
[0Ksection_start:1575221203:upload_artifacts_on_success
[0Ksection_end:1575221203:upload_artifacts_on_success
[0K[32;1mJob succeeded
[0;m