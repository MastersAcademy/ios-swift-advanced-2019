[0KRunning with gitlab-runner 12.5.0 (577f813d)
[0;m[0K  on MacbookRunner 9DfsiMvd
[0;msection_start:1575199611:prepare_executor
[0K[0KUsing Shell executor...
[0;msection_end:1575199611:prepare_executor
[0Ksection_start:1575199611:prepare_script
[0KRunning on Andreys-MacBook-Pro.local...
section_end:1575199612:prepare_script
[0Ksection_start:1575199612:get_sources
[0K[32;1mFetching changes with git depth set to 50...[0;m
Reinitialized existing Git repository in /Users/astrib/wordmix/builds/9DfsiMvd/0/ihawk/wordmix/.git/
From https://gitlab.com/ihawk/wordmix
 * [new ref]         refs/pipelines/99760020 -> refs/pipelines/99760020
 * [new tag]         beta/8                  -> beta/8
[32;1mChecking out 57a177d3 as beta/8...[0;m
Removing Pods/Local Podspecs/
Removing Pods/Pods.xcodeproj/xcuserdata/astrib.xcuserdatad/xcschemes/Firebase.xcscheme
Removing Pods/Pods.xcodeproj/xcuserdata/astrib.xcuserdatad/xcschemes/FirebaseAnalytics.xcscheme
Removing Pods/Pods.xcodeproj/xcuserdata/astrib.xcuserdatad/xcschemes/FirebaseCore.xcscheme
Removing Pods/Pods.xcodeproj/xcuserdata/astrib.xcuserdatad/xcschemes/FirebaseCoreDiagnostics.xcscheme
Removing Pods/Pods.xcodeproj/xcuserdata/astrib.xcuserdatad/xcschemes/FirebaseCoreDiagnosticsInterop.xcscheme
Removing Pods/Pods.xcodeproj/xcuserdata/astrib.xcuserdatad/xcschemes/FirebaseInstanceID.xcscheme
Removing Pods/Pods.xcodeproj/xcuserdata/astrib.xcuserdatad/xcschemes/GoogleAppMeasurement.xcscheme
Removing Pods/Pods.xcodeproj/xcuserdata/astrib.xcuserdatad/xcschemes/GoogleDataTransport.xcscheme
Removing Pods/Pods.xcodeproj/xcuserdata/astrib.xcuserdatad/xcschemes/GoogleDataTransportCCTSupport.xcscheme
Removing Pods/Pods.xcodeproj/xcuserdata/astrib.xcuserdatad/xcschemes/GoogleUtilities.xcscheme
Removing Pods/Pods.xcodeproj/xcuserdata/astrib.xcuserdatad/xcschemes/nanopb.xcscheme
Removing fastlane/report.xml
[32;1mSkipping Git submodules setup[0;m
section_end:1575199623:get_sources
[0Ksection_start:1575199623:restore_cache
[0K[32;1mChecking cache for 99760020...[0;m
Runtime platform                                  [0;m  arch[0;m=amd64 os[0;m=darwin pid[0;m=5507 revision[0;m=577f813d version[0;m=12.5.0
No URL provided, cache will not be downloaded from shared cache server. Instead a local version of cache will be extracted.[0;m 
[32;1mSuccessfully extracted cache[0;m
section_end:1575199623:restore_cache
[0Ksection_start:1575199623:download_artifacts
[0Ksection_end:1575199623:download_artifacts
[0Ksection_start:1575199623:build_script
[0K[32;1m$ bundle install[0;m
Using CFPropertyList 3.0.1
Using concurrent-ruby 1.1.5
Using i18n 0.9.5
Using minitest 5.13.0
Using thread_safe 0.3.6
Using tzinfo 1.2.5
Using activesupport 4.2.11.1
Using public_suffix 2.0.5
Using addressable 2.7.0
Using httpclient 2.8.3
Using json 2.2.0
Using algoliasearch 1.27.1
Using atomos 0.1.3
Using babosa 1.0.3
Using bundler 2.0.2
Using claide 1.0.3
Using fuzzy_match 2.0.4
Using nap 1.1.0
Using cocoapods-core 1.8.4
Using cocoapods-deintegrate 1.0.4
Using cocoapods-downloader 1.3.0
Using cocoapods-plugins 1.0.0
Using cocoapods-search 1.0.0
Using cocoapods-stats 1.1.0
Using netrc 0.11.0
Using cocoapods-trunk 1.4.1
Using cocoapods-try 1.1.0
Using colored2 3.1.2
Using escape 0.0.4
Using fourflusher 2.3.1
Using gh_inspector 1.1.3
Using molinillo 0.6.6
Using ruby-macho 1.4.0
Using nanaimo 0.2.6
Using xcodeproj 1.13.0
Using cocoapods 1.8.4
Using colored 1.2
Using highline 1.7.10
Using commander-fastlane 4.4.6
Using declarative 0.0.10
Using declarative-option 0.1.0
Using digest-crc 0.4.1
Using unf_ext 0.0.7.6
Using unf 0.1.4
Using domain_name 0.5.20190701
Using dotenv 2.7.5
Using emoji_regex 1.0.1
Using excon 0.68.0
Using multipart-post 2.0.0
Using faraday 0.17.0
Using http-cookie 1.0.3
Using faraday-cookie_jar 0.0.6
Using faraday_middleware 0.13.1
Using fastimage 2.1.7
Using jwt 2.1.0
Using memoist 0.16.1
Using multi_json 1.14.1
Using os 1.0.1
Using signet 0.12.0
Using googleauth 0.6.7
Using mime-types-data 3.2019.1009
Using mime-types 3.3
Using uber 0.1.0
Using representable 3.0.4
Using retriable 3.1.2
Using google-api-client 0.23.9
Using google-cloud-env 1.3.0
Using google-cloud-core 1.4.1
Using google-cloud-storage 1.16.0
Using mini_magick 4.9.5
Using multi_xml 0.6.0
Using plist 3.5.0
Using rubyzip 1.3.0
Using security 0.1.3
Using naturally 2.2.0
Using simctl 1.6.6
Using slack-notifier 2.3.2
Using terminal-notifier 2.0.0
Using unicode-display_width 1.6.0
Using terminal-table 1.8.0
Using tty-screen 0.7.0
Using tty-cursor 0.7.0
Using tty-spinner 0.9.1
Using word_wrap 1.0.0
Using rouge 2.0.7
Using xcpretty 0.3.0
Using xcpretty-travis-formatter 1.0.0
Using fastlane 2.134.0
Using fastlane-plugin-firebase_app_distribution 0.1.4
Bundle complete! 3 Gemfile dependencies, 89 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
[32;1m$ export LC_ALL=en_US.UTF-8[0;m
[32;1m$ export LANG=en_US.UTF-8[0;m
[32;1m$ bundle exec fastlane pods[0;m
+-------------------------------------------+---------+---------------------------+
|                                  [32mUsed plugins[0m                                   |
+-------------------------------------------+---------+---------------------------+
| Plugin                                    | Version | Action                    |
+-------------------------------------------+---------+---------------------------+
| fastlane-plugin-firebase_app_distribution | 0.1.4   | firebase_app_distribution |
+-------------------------------------------+---------+---------------------------+

[13:27:05]: [32m------------------------------[0m
[13:27:05]: [32m--- Step: default_platform ---[0m
[13:27:05]: [32m------------------------------[0m
[13:27:05]: [32mDriving the lane 'ios pods' ðŸš€[0m
[13:27:05]: [32m----------------------------------------[0m
[13:27:05]: [32m--- Step: Verifying fastlane version ---[0m
[13:27:05]: [32m----------------------------------------[0m
[13:27:05]: Your fastlane version 2.134.0 matches the minimum requirement of 2.119.0  âœ…
[13:27:05]: [32m------------------------------[0m
[13:27:05]: [32m--- Step: default_platform ---[0m
[13:27:05]: [32m------------------------------[0m
[13:27:05]: [32m-----------------------[0m
[13:27:05]: [32m--- Step: cocoapods ---[0m
[13:27:05]: [32m-----------------------[0m
[13:27:05]: [36m$ bundle exec pod install --verbose[0m
[13:27:07]: â–¸ [35mPreparing[0m
[13:27:07]: â–¸ [35mAnalyzing dependencies[0m
[13:27:07]: â–¸ [35mInspecting targets to integrate[0m
[13:27:07]: â–¸ [35mUsing `ARCHS` setting to build architectures of target `Pods-WordMix`: (``)[0m
[13:27:07]: â–¸ [35mUsing `ARCHS` setting to build architectures of target `Pods-WordMixTests`: (``)[0m
[13:27:07]: â–¸ [35mFinding Podfile changes[0m
[13:27:07]: â–¸ [35m- Firebase[0m
[13:27:07]: â–¸ [35mResolving dependencies of `Podfile`[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: CocoaPods-version.yml exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: all_pods_versions_0_3_5.txt exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/3/5/Firebase/6.13.0/Firebase.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/3/5/Firebase/6.13.0/Firebase.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/3/5/Firebase/6.13.0/Firebase.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: all_pods_versions_e_2_1.txt exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/e/2/1/FirebaseAnalytics/6.1.6/FirebaseAnalytics.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: all_pods_versions_8_b_d.txt exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/8/b/d/FirebaseCore/6.4.0/FirebaseCore.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/e/2/1/FirebaseAnalytics/6.1.6/FirebaseAnalytics.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: all_pods_versions_3_6_0.txt exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/3/6/0/FirebaseInstanceID/4.2.7/FirebaseInstanceID.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: all_pods_versions_e_3_b.txt exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/e/3/b/GoogleAppMeasurement/6.1.6/GoogleAppMeasurement.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: all_pods_versions_0_8_4.txt exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/8/4/GoogleUtilities/6.3.2/GoogleUtilities.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/8/4/GoogleUtilities/6.3.2/GoogleUtilities.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/8/4/GoogleUtilities/6.3.2/GoogleUtilities.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/8/4/GoogleUtilities/6.3.2/GoogleUtilities.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/8/4/GoogleUtilities/6.3.2/GoogleUtilities.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: all_pods_versions_6_1_e.txt exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/6/1/e/nanopb/0.3.9011/nanopb.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/6/1/e/nanopb/0.3.9011/nanopb.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/6/1/e/nanopb/0.3.9011/nanopb.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/6/1/e/nanopb/0.3.9011/nanopb.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/3/6/0/FirebaseInstanceID/4.2.7/FirebaseInstanceID.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/8/4/GoogleUtilities/6.3.2/GoogleUtilities.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/8/4/GoogleUtilities/6.3.2/GoogleUtilities.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/8/4/GoogleUtilities/6.3.2/GoogleUtilities.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/8/4/GoogleUtilities/6.3.2/GoogleUtilities.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/8/4/GoogleUtilities/6.3.2/GoogleUtilities.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/8/4/GoogleUtilities/6.3.2/GoogleUtilities.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/8/4/GoogleUtilities/6.3.2/GoogleUtilities.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/8/b/d/FirebaseCore/6.4.0/FirebaseCore.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/8/4/GoogleUtilities/6.3.2/GoogleUtilities.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/8/4/GoogleUtilities/6.3.2/GoogleUtilities.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: all_pods_versions_8_9_c.txt exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/8/9/c/FirebaseCoreDiagnosticsInterop/1.1.0/FirebaseCoreDiagnosticsInterop.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: all_pods_versions_8_3_c.txt exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/8/3/c/FirebaseCoreDiagnostics/1.1.2/FirebaseCoreDiagnostics.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/8/b/d/FirebaseCore/6.4.0/FirebaseCore.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/8/b/d/FirebaseCore/6.4.0/FirebaseCore.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/8/9/c/FirebaseCoreDiagnosticsInterop/1.1.0/FirebaseCoreDiagnosticsInterop.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/8/3/c/FirebaseCoreDiagnostics/1.1.2/FirebaseCoreDiagnostics.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: all_pods_versions_b_c_f.txt exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/b/c/f/GoogleDataTransportCCTSupport/1.2.2/GoogleDataTransportCCTSupport.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/6/1/e/nanopb/0.3.9011/nanopb.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/b/c/f/GoogleDataTransportCCTSupport/1.2.2/GoogleDataTransportCCTSupport.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: all_pods_versions_0_6_a.txt exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/6/a/GoogleDataTransport/3.2.0/GoogleDataTransport.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/e/3/b/GoogleAppMeasurement/6.1.6/GoogleAppMeasurement.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: Specs/0/6/a/GoogleDataTransport/3.2.0/GoogleDataTransport.podspec.json exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35mComparing resolved specification to the sandbox manifest[0m
[13:27:07]: â–¸ [35m- Firebase[0m
[13:27:07]: â–¸ [35m- FirebaseAnalytics[0m
[13:27:07]: â–¸ [35m- FirebaseCore[0m
[13:27:07]: â–¸ [35m- FirebaseCoreDiagnostics[0m
[13:27:07]: â–¸ [35m- FirebaseCoreDiagnosticsInterop[0m
[13:27:07]: â–¸ [35m- FirebaseInstanceID[0m
[13:27:07]: â–¸ [35m- GoogleAppMeasurement[0m
[13:27:07]: â–¸ [35m- GoogleDataTransport[0m
[13:27:07]: â–¸ [35m- GoogleDataTransportCCTSupport[0m
[13:27:07]: â–¸ [35m- GoogleUtilities[0m
[13:27:07]: â–¸ [35m- nanopb[0m
[13:27:07]: â–¸ [35mDownloading dependencies[0m
[13:27:07]: â–¸ [35m-> Using Firebase (6.13.0)[0m
[13:27:07]: â–¸ [35m-> Using FirebaseAnalytics (6.1.6)[0m
[13:27:07]: â–¸ [35m-> Using FirebaseCore (6.4.0)[0m
[13:27:07]: â–¸ [35m-> Using FirebaseCoreDiagnostics (1.1.2)[0m
[13:27:07]: â–¸ [35m-> Using FirebaseCoreDiagnosticsInterop (1.1.0)[0m
[13:27:07]: â–¸ [35m-> Using FirebaseInstanceID (4.2.7)[0m
[13:27:07]: â–¸ [35m-> Using GoogleAppMeasurement (6.1.6)[0m
[13:27:07]: â–¸ [35m-> Using GoogleDataTransport (3.2.0)[0m
[13:27:07]: â–¸ [35m-> Using GoogleDataTransportCCTSupport (1.2.2)[0m
[13:27:07]: â–¸ [35m-> Using GoogleUtilities (6.3.2)[0m
[13:27:07]: â–¸ [35m-> Using nanopb (0.3.9011)[0m
[13:27:07]: â–¸ [35m- Running pre install hooks[0m
[13:27:07]: â–¸ [35mGenerating Pods project[0m
[13:27:07]: â–¸ [35m- Creating Pods project[0m
[13:27:07]: â–¸ [35m- Installing files into Pods project[0m
[13:27:07]: â–¸ [35m- Adding source files[0m
[13:27:07]: â–¸ [35m- Adding frameworks[0m
[13:27:07]: â–¸ [35m- Adding libraries[0m
[13:27:07]: â–¸ [35m- Adding resources[0m
[13:27:07]: â–¸ [35m- Linking headers[0m
[13:27:07]: â–¸ [35m- Installing Pod Targets[0m
[13:27:07]: â–¸ [35m- Installing target `Firebase` iOS 8.0[0m
[13:27:07]: â–¸ [35m- Installing target `FirebaseAnalytics` iOS 8.0[0m
[13:27:07]: â–¸ [35m- Installing target `FirebaseCore` iOS 8.0[0m
[13:27:07]: â–¸ [35m- Generating module map file at `Pods/Target Support Files/FirebaseCore/FirebaseCore.modulemap`[0m
[13:27:07]: â–¸ [35m- Generating umbrella header at `Pods/Target Support Files/FirebaseCore/FirebaseCore-umbrella.h`[0m
[13:27:07]: â–¸ [35m- Generating Info.plist file at `Pods/Target Support Files/FirebaseCore/FirebaseCore-Info.plist`[0m
[13:27:07]: â–¸ [35m- Generating dummy source at `Pods/Target Support Files/FirebaseCore/FirebaseCore-dummy.m`[0m
[13:27:07]: â–¸ [35m- Installing target `FirebaseCoreDiagnostics` iOS 8.0[0m
[13:27:07]: â–¸ [35m- Generating module map file at `Pods/Target Support Files/FirebaseCoreDiagnostics/FirebaseCoreDiagnostics.modulemap`[0m
[13:27:07]: â–¸ [35m- Generating umbrella header at `Pods/Target Support Files/FirebaseCoreDiagnostics/FirebaseCoreDiagnostics-umbrella.h`[0m
[13:27:07]: â–¸ [35m- Generating Info.plist file at `Pods/Target Support Files/FirebaseCoreDiagnostics/FirebaseCoreDiagnostics-Info.plist`[0m
[13:27:07]: â–¸ [35m- Generating dummy source at `Pods/Target Support Files/FirebaseCoreDiagnostics/FirebaseCoreDiagnostics-dummy.m`[0m
[13:27:07]: â–¸ [35m- Installing target `FirebaseCoreDiagnosticsInterop` iOS 8.0[0m
[13:27:07]: â–¸ [35m- Installing target `FirebaseInstanceID` iOS 8.0[0m
[13:27:07]: â–¸ [35m- Generating module map file at `Pods/Target Support Files/FirebaseInstanceID/FirebaseInstanceID.modulemap`[0m
[13:27:07]: â–¸ [35m- Generating umbrella header at `Pods/Target Support Files/FirebaseInstanceID/FirebaseInstanceID-umbrella.h`[0m
[13:27:07]: â–¸ [35m- Generating Info.plist file at `Pods/Target Support Files/FirebaseInstanceID/FirebaseInstanceID-Info.plist`[0m
[13:27:07]: â–¸ [35m- Generating dummy source at `Pods/Target Support Files/FirebaseInstanceID/FirebaseInstanceID-dummy.m`[0m
[13:27:07]: â–¸ [35m- Installing target `GoogleAppMeasurement` iOS 8.0[0m
[13:27:07]: â–¸ [35m- Installing target `GoogleDataTransport` iOS 8.0[0m
[13:27:07]: â–¸ [35m- Generating module map file at `Pods/Target Support Files/GoogleDataTransport/GoogleDataTransport.modulemap`[0m
[13:27:07]: â–¸ [35m- Generating umbrella header at `Pods/Target Support Files/GoogleDataTransport/GoogleDataTransport-umbrella.h`[0m
[13:27:07]: â–¸ [35m- Generating Info.plist file at `Pods/Target Support Files/GoogleDataTransport/GoogleDataTransport-Info.plist`[0m
[13:27:07]: â–¸ [35m- Generating dummy source at `Pods/Target Support Files/GoogleDataTransport/GoogleDataTransport-dummy.m`[0m
[13:27:07]: â–¸ [35m- Installing target `GoogleDataTransportCCTSupport` iOS 8.0[0m
[13:27:07]: â–¸ [35m- Generating module map file at `Pods/Target Support Files/GoogleDataTransportCCTSupport/GoogleDataTransportCCTSupport.modulemap`[0m
[13:27:07]: â–¸ [35m- Generating umbrella header at `Pods/Target Support Files/GoogleDataTransportCCTSupport/GoogleDataTransportCCTSupport-umbrella.h`[0m
[13:27:07]: â–¸ [35m- Generating Info.plist file at `Pods/Target Support Files/GoogleDataTransportCCTSupport/GoogleDataTransportCCTSupport-Info.plist`[0m
[13:27:07]: â–¸ [35m- Generating dummy source at `Pods/Target Support Files/GoogleDataTransportCCTSupport/GoogleDataTransportCCTSupport-dummy.m`[0m
[13:27:07]: â–¸ [35m- Installing target `GoogleUtilities` iOS 8.0[0m
[13:27:07]: â–¸ [35m- Generating module map file at `Pods/Target Support Files/GoogleUtilities/GoogleUtilities.modulemap`[0m
[13:27:07]: â–¸ [35m- Generating umbrella header at `Pods/Target Support Files/GoogleUtilities/GoogleUtilities-umbrella.h`[0m
[13:27:07]: â–¸ [35m- Generating Info.plist file at `Pods/Target Support Files/GoogleUtilities/GoogleUtilities-Info.plist`[0m
[13:27:07]: â–¸ [35m- Generating dummy source at `Pods/Target Support Files/GoogleUtilities/GoogleUtilities-dummy.m`[0m
[13:27:07]: â–¸ [35m- Installing target `nanopb` iOS 8.0[0m
[13:27:07]: â–¸ [35m- Generating module map file at `Pods/Target Support Files/nanopb/nanopb.modulemap`[0m
[13:27:07]: â–¸ [35m- Generating umbrella header at `Pods/Target Support Files/nanopb/nanopb-umbrella.h`[0m
[13:27:07]: â–¸ [35m- Generating Info.plist file at `Pods/Target Support Files/nanopb/nanopb-Info.plist`[0m
[13:27:07]: â–¸ [35m- Generating dummy source at `Pods/Target Support Files/nanopb/nanopb-dummy.m`[0m
[13:27:07]: â–¸ [35m- Installing Aggregate Targets[0m
[13:27:07]: â–¸ [35m- Installing target `Pods-WordMix` iOS 10.0[0m
[13:27:07]: â–¸ [35m- Generating Info.plist file at `Pods/Target Support Files/Pods-WordMix/Pods-WordMix-Info.plist`[0m
[13:27:07]: â–¸ [35m- Generating module map file at `Pods/Target Support Files/Pods-WordMix/Pods-WordMix.modulemap`[0m
[13:27:07]: â–¸ [35m- Generating umbrella header at `Pods/Target Support Files/Pods-WordMix/Pods-WordMix-umbrella.h`[0m
[13:27:07]: â–¸ [35m- Generating dummy source at `Pods/Target Support Files/Pods-WordMix/Pods-WordMix-dummy.m`[0m
[13:27:07]: â–¸ [35m- Installing target `Pods-WordMixTests` iOS 10.0[0m
[13:27:07]: â–¸ [35m- Generating Info.plist file at `Pods/Target Support Files/Pods-WordMixTests/Pods-WordMixTests-Info.plist`[0m
[13:27:07]: â–¸ [35m- Generating module map file at `Pods/Target Support Files/Pods-WordMixTests/Pods-WordMixTests.modulemap`[0m
[13:27:07]: â–¸ [35m- Generating umbrella header at `Pods/Target Support Files/Pods-WordMixTests/Pods-WordMixTests-umbrella.h`[0m
[13:27:07]: â–¸ [35m- Generating dummy source at `Pods/Target Support Files/Pods-WordMixTests/Pods-WordMixTests-dummy.m`[0m
[13:27:07]: â–¸ [35m- Generating deterministic UUIDs[0m
[13:27:07]: â–¸ [35m- Stabilizing target UUIDs[0m
[13:27:07]: â–¸ [35m- Running post install hooks[0m
[13:27:07]: â–¸ [35m- Writing Xcode project file to `Pods/Pods.xcodeproj`[0m
[13:27:07]: â–¸ [35mCleaning up sandbox directory[0m
[13:27:07]: â–¸ [35m- Writing Lockfile in `Podfile.lock`[0m
[13:27:07]: â–¸ [35m- Writing Manifest in `Pods/Manifest.lock`[0m
[13:27:07]: â–¸ [35mIntegrating client project[0m
[13:27:07]: â–¸ [35mIntegrating target `Pods-WordMix` (`WordMix.xcodeproj` project)[0m
[13:27:07]: â–¸ [35mIntegrating target `Pods-WordMixTests` (`WordMix.xcodeproj` project)[0m
[13:27:07]: â–¸ [35m- Running post install hooks[0m
[13:27:07]: â–¸ [35m- cocoapods-stats from `/Users/astrib/.rbenv/versions/2.6.2/lib/ruby/gems/2.6.0/gems/cocoapods-stats-1.1.0/lib/cocoapods_plugin.rb`[0m
[13:27:07]: â–¸ [35mCDN: trunk Relative path: CocoaPods-version.yml exists! Returning local because checking is only perfomed in repo update[0m
[13:27:07]: â–¸ [35m-> Pod installation complete! There is 1 dependency from the Podfile and 11 total pods installed.[0m
[13:27:07]: â–¸ [35m[!] Automatically assigning platform `iOS` with version `10.0` on target `WordMix` because no platform was specified. Please specify a platform for this target in your Podfile. See `https://guides.cocoapods.org/syntax/podfile.html#platform`.[0m

+------+----------------------------+-------------+
|                [32mfastlane summary[0m                 |
+------+----------------------------+-------------+
| Step | Action                     | Time (in s) |
+------+----------------------------+-------------+
| 1    | default_platform           | 0           |
| 2    | Verifying fastlane version | 0           |
| 3    | default_platform           | 0           |
| 4    | cocoapods                  | 1           |
+------+----------------------------+-------------+

[13:27:07]: [32mfastlane.tools finished successfully ðŸŽ‰[0m

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
section_end:1575199628:build_script
[0Ksection_start:1575199628:after_script
[0Ksection_end:1575199628:after_script
[0Ksection_start:1575199628:archive_cache
[0K[32;1mCreating cache 99760020...[0;m
Runtime platform                                  [0;m  arch[0;m=amd64 os[0;m=darwin pid[0;m=5703 revision[0;m=577f813d version[0;m=12.5.0
Pods/: found 409 matching files                   [0;m 
No URL provided, cache will be not uploaded to shared cache server. Cache will be stored only locally.[0;m 
[32;1mCreated cache[0;m
section_end:1575199629:archive_cache
[0Ksection_start:1575199629:upload_artifacts_on_success
[0Ksection_end:1575199629:upload_artifacts_on_success
[0K[32;1mJob succeeded
[0;m