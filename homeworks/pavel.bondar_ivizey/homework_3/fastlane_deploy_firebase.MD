Pavels-MacBook-Pro:JSONMusic pavelbondar$ bundle exec fastlane deploy_firebase
[✔] 🚀 
+----------------------------------+---------+---------------------------+
|                              Used plugins                              |
+----------------------------------+---------+---------------------------+
| Plugin                           | Version | Action                    |
+----------------------------------+---------+---------------------------+
| fastlane-plugin-firebase_app_di  | 0.1.4   | firebase_app_distribution |
| stribution                       |         |                           |
+----------------------------------+---------+---------------------------+

[20:21:18]: ------------------------------
[20:21:18]: --- Step: default_platform ---
[20:21:18]: ------------------------------
[20:21:18]: Driving the lane 'ios deploy_firebase' 🚀
[20:21:18]: ----------------------------------------
[20:21:18]: --- Step: Verifying fastlane version ---
[20:21:18]: ----------------------------------------
[20:21:18]: Your fastlane version 2.134.0 matches the minimum requirement of 2.119.0  ✅
[20:21:18]: ------------------------------
[20:21:18]: --- Step: default_platform ---
[20:21:18]: ------------------------------
[20:21:18]: -------------------
[20:21:18]: --- Step: match ---
[20:21:18]: -------------------
[20:21:18]: Successfully loaded '/Users/pavelbondar/Documents/SP/JSONMusic/fastlane/Matchfile' 📄
[20:21:18]: No values defined in './fastlane/Matchfile'

+----------------------------+-------------------------------------+
|                    Summary for match 2.134.0                     |
+----------------------------+-------------------------------------+
| git_url                    | git@gitlab.com:Ivizey/matchdata.git |
| app_identifier             | ["com.masters-academy.JSONMusic"]   |
| readonly                   | true                                |
| username                   | maxim.savisko@gmail.com             |
| storage_mode               | git                                 |
| type                       | development                         |
| generate_apple_certs       | true                                |
| skip_provisioning_profiles | false                               |
| git_branch                 | master                              |
| shallow_clone              | false                               |
| clone_branch_directly      | false                               |
| keychain_name              | login.keychain                      |
| force                      | false                               |
| force_for_new_devices      | false                               |
| skip_confirmation          | false                               |
| skip_docs                  | false                               |
| platform                   | ios                                 |
| verbose                    | false                               |
+----------------------------+-------------------------------------+

[20:21:18]: Cloning remote git repo...
[20:21:18]: If cloning the repo takes too long, you can use the `clone_branch_directly` option in match.
[20:21:21]: 🔓  Successfully decrypted certificates repo
[20:21:21]: Installing certificate...
[⠋] Setting key partition list... (this can take a minute if there are a lot of keys installed) [20:21:25]: 
[20:21:25]: Could not configure imported keychain item (certificate) to prevent UI permission popup when code signing
Check if you supplied the correct `keychain_password` for keychain: `/Users/pavelbondar/Library/Keychains/login.keychain-db`
security: SecKeychainItemSetAccessWithPassword: The user name or passphrase you entered is not correct.
[20:21:25]: 
[20:21:25]: Please look at the following docs to see how to set a keychain password:
[20:21:25]:  - https://docs.fastlane.tools/actions/sync_code_signing
[20:21:25]:  - https://docs.fastlane.tools/actions/get_certificates
[✔] Setting key partition list... (this can take a minute if there are a lot of keys installed) 

+-------------------+--------------------------------------------------------+
|                           Installed Certificate                            |
+-------------------+--------------------------------------------------------+
| User ID           | 679WEBVNEE                                             |
| Common Name       | iPhone Developer: maxim.savisko@gmail.com (4Q928P3GJN) |
| Organisation Unit | 4KQC9K68AM                                             |
| Organisation      | Maksym Savisko                                         |
| Country           | US                                                     |
| Start Datetime    | 2019-10-10 12:32:53 UTC                                |
| End Datetime      | 2020-10-09 12:32:53 UTC                                |
+-------------------+--------------------------------------------------------+

[20:21:25]: Installing provisioning profile...

+---------------------+----------------------------------+----------------------------------+
|                              Installed Provisioning Profile                               |
+---------------------+----------------------------------+----------------------------------+
| Parameter           | Environment Variable             | Value                            |
+---------------------+----------------------------------+----------------------------------+
| App Identifier      |                                  | com.masters-academy.JSONMusic    |
| Type                |                                  | development                      |
| Platform            |                                  | ios                              |
| Profile UUID        | sigh_com.masters-academy.JSONMu  | 26e10f63-eaef-4957-bf34-56a7b97  |
|                     | sic_development                  | 482b3                            |
| Profile Name        | sigh_com.masters-academy.JSONMu  | MA JSONMusic Dev                 |
|                     | sic_development_profile-name     |                                  |
| Profile Path        | sigh_com.masters-academy.JSONMu  | /Users/pavelbondar/Library/Mobi  |
|                     | sic_development_profile-path     | leDevice/Provisioning            |
|                     |                                  | Profiles/26e10f63-eaef-4957-bf3  |
|                     |                                  | 4-56a7b97482b3.mobileprovision   |
| Development Team ID | sigh_com.masters-academy.JSONMu  | 4KQC9K68AM                       |
|                     | sic_development_team-id          |                                  |
+---------------------+----------------------------------+----------------------------------+

[20:21:26]: All required keys, certificates and provisioning profiles are installed 🙌
[20:21:26]: Setting Provisioning Profile type to 'development'
[20:21:26]: -----------------------
[20:21:26]: --- Step: cocoapods ---
[20:21:26]: -----------------------
[20:21:26]: $ bundle exec pod install
[20:22:16]: ▸ Analyzing dependencies
[20:22:16]: ▸ Downloading dependencies
[20:22:16]: ▸ Installing Firebase (6.13.0)
[20:22:30]: ▸ Installing FirebaseAnalytics (6.1.6)
[20:22:31]: ▸ Installing FirebaseCore (6.4.0)
[20:22:44]: ▸ Installing FirebaseCoreDiagnostics (1.1.2)
[20:22:55]: ▸ Installing FirebaseCoreDiagnosticsInterop (1.1.0)
[20:23:08]: ▸ Installing FirebaseInstanceID (4.2.7)
[20:23:22]: ▸ Installing GoogleAppMeasurement (6.1.6)
[20:23:32]: ▸ Installing GoogleDataTransport (3.2.0)
[20:23:46]: ▸ Installing GoogleDataTransportCCTSupport (1.2.2)
[20:24:00]: ▸ Installing GoogleUtilities (6.3.2)
[20:24:13]: ▸ Installing nanopb (0.3.9011)
[20:24:17]: ▸ Generating Pods project
[20:24:17]: ▸ Integrating client project
[20:24:17]: ▸ [!] Please close any current Xcode sessions and use `JSONMusic.xcworkspace` for this project from now on.
[20:24:17]: ▸ Pod installation complete! There is 1 dependency from the Podfile and 11 total pods installed.
[20:24:17]: ▸ [!] Automatically assigning platform `iOS` with version `13.2` on target `JSONMusic` because no platform was specified. Please specify a platform for this target in your Podfile. See `https://guides.cocoapods.org/syntax/podfile.html#platform`.
[20:24:17]: -----------------
[20:24:17]: --- Step: gym ---
[20:24:17]: -----------------
[20:24:17]: Successfully loaded '/Users/pavelbondar/Documents/SP/JSONMusic/fastlane/Gymfile' 📄

+---------------------+---------------------+
| Detected Values from './fastlane/Gymfile' |
+---------------------+---------------------+
| scheme              | JSONMusic           |
| export_method       | ad-hoc              |
| output_name         | JSONMusic.ipa       |
+---------------------+---------------------+

[20:24:17]: $ xcodebuild -showBuildSettings -workspace ./JSONMusic.xcworkspace -scheme JSONMusic
[20:24:20]: Command timed out after 3 seconds on try 1 of 4, trying again with a 6 second timeout...
[20:24:26]: Command timed out after 6 seconds on try 2 of 4, trying again with a 12 second timeout...
[20:24:36]: Detected provisioning profile mapping: {:"com.masters-academy.JSONMusic"=>"MA JSONMusic Adhoc"}

+----------------------------------------------------+----------------------------------------------------+
|                                         Summary for gym 2.134.0                                         |
+----------------------------------------------------+----------------------------------------------------+
| scheme                                             | JSONMusic                                          |
| export_method                                      | ad-hoc                                             |
| export_options.provisioningProfiles.com.masters-a  | MA JSONMusic Adhoc                                 |
| cademy.JSONMusic                                   |                                                    |
| workspace                                          | ./JSONMusic.xcworkspace                            |
| destination                                        | generic/platform=iOS                               |
| build_path                                         | /Users/pavelbondar/Library/Developer/Xcode/Archiv  |
|                                                    | es/2019-11-30                                      |
| clean                                              | false                                              |
| output_directory                                   | .                                                  |
| output_name                                        | JSONMusic                                          |
| silent                                             | false                                              |
| skip_package_ipa                                   | false                                              |
| result_bundle                                      | false                                              |
| buildlog_path                                      | ~/Library/Logs/gym                                 |
| skip_profile_detection                             | false                                              |
| xcode_path                                         | /Applications/Xcode.app                            |
+----------------------------------------------------+----------------------------------------------------+

[20:24:36]: $ set -o pipefail && xcodebuild -workspace ./JSONMusic.xcworkspace -scheme JSONMusic -destination 'generic/platform=iOS' -archivePath /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive archive | tee /Users/pavelbondar/Library/Logs/gym/JSONMusic-JSONMusic.log | xcpretty
[20:24:39]: ▸ Processing nanopb-Info.plist
[20:24:39]: ▸ Copying pb_encode.h
[20:24:39]: ▸ Copying pb_decode.h
[20:24:39]: ▸ Copying pb_common.h
[20:24:39]: ▸ Copying pb.h
[20:24:39]: ▸ Copying nanopb-umbrella.h
[20:24:39]: ▸ Processing GoogleUtilities-Info.plist
[20:24:39]: ▸ Copying GoogleUtilities-umbrella.h
[20:24:39]: ▸ Copying GULUserDefaults.h
[20:24:39]: ▸ Copying GULReachabilityMessageCode.h
[20:24:39]: ▸ Copying GULReachabilityChecker.h
[20:24:39]: ▸ Copying GULNetworkURLSession.h
[20:24:39]: ▸ Copying GULNetworkMessageCode.h
[20:24:39]: ▸ Copying GULNetworkLoggerProtocol.h
[20:24:39]: ▸ Copying GULNetworkConstants.h
[20:24:39]: ▸ Copying GULNetwork.h
[20:24:39]: ▸ Copying GULMutableDictionary.h
[20:24:39]: ▸ Copying GULNSData+zlib.h
[20:24:39]: ▸ Copying GULSwizzler.h
[20:24:39]: ▸ Copying GULOriginalIMPConvenienceMacros.h
[20:24:39]: ▸ Copying GULLoggerLevel.h
[20:24:39]: ▸ Copying GULLogger.h
[20:24:39]: ▸ Copying GULAppEnvironmentUtil.h
[20:24:39]: ▸ Copying GULLoggerCodes.h
[20:24:39]: ▸ Copying GULApplication.h
[20:24:39]: ▸ Copying GULAppDelegateSwizzler.h
[20:24:39]: ▸ Compiling pb_encode.c
[20:24:41]: ▸ Compiling pb_decode.c
[20:24:41]: ▸ Compiling pb_common.c
[20:24:41]: ▸ Compiling nanopb-dummy.m
[20:24:43]: ▸ Compiling nanopb_vers.c
[20:24:43]: ▸ Compiling pb_encode.c
[20:24:43]: ▸ Compiling pb_decode.c
[20:24:43]: ▸ Compiling pb_common.c
[20:24:43]: ▸ Compiling nanopb_vers.c
[20:24:43]: ▸ Compiling nanopb-dummy.m
[20:24:44]: ▸ Processing GoogleDataTransport-Info.plist
[20:24:44]: ▸ Copying GoogleDataTransport-umbrella.h
[20:24:44]: ▸ Copying GoogleDataTransport.h
[20:24:44]: ▸ Copying GDTCORUploader.h
[20:24:44]: ▸ Copying GDTCORUploadPackage.h
[20:24:44]: ▸ Copying GDTCORTransport.h
[20:24:44]: ▸ Copying GDTCORTargets.h
[20:24:44]: ▸ Copying GDTCORStoredEvent.h
[20:24:44]: ▸ Copying GDTCORRegistrar.h
[20:24:44]: ▸ Copying GDTCORPrioritizer.h
[20:24:44]: ▸ Copying GDTCORPlatform.h
[20:24:44]: ▸ Copying GDTCORLifecycle.h
[20:24:44]: ▸ Copying GDTCOREventTransformer.h
[20:24:44]: ▸ Copying GDTCOREventDataObject.h
[20:24:44]: ▸ Copying GDTCOREvent.h
[20:24:44]: ▸ Copying GDTCORDataFuture.h
[20:24:44]: ▸ Copying GDTCORConsoleLogger.h
[20:24:44]: ▸ Copying GDTCORClock.h
[20:24:44]: ▸ Copying GDTCORAssert.h
[20:24:44]: ▸ Copying GDTCORUploadPackage_Private.h
[20:24:44]: ▸ Copying GDTCORUploadCoordinator.h
[20:24:44]: ▸ Copying GDTCORTransport_Private.h
[20:24:44]: ▸ Copying GDTCORTransformer_Private.h
[20:24:44]: ▸ Copying GDTCORTransformer.h
[20:24:44]: ▸ Copying GDTCORStorage_Private.h
[20:24:44]: ▸ Copying GDTCORStorage.h
[20:24:44]: ▸ Copying GDTCORRegistrar_Private.h
[20:24:44]: ▸ Copying GDTCORReachability_Private.h
[20:24:44]: ▸ Copying GDTCORReachability.h
[20:24:44]: ▸ Copying GDTCOREvent_Private.h
[20:24:44]: ▸ Compiling GoogleUtilities-dummy.m
[20:24:44]: ▸ Compiling GoogleUtilities_vers.c
[20:24:44]: ▸ Compiling GULUserDefaults.m
[20:24:46]: ▸ Compiling GULSwizzler.m
[20:24:46]: ▸ Linking nanopb
[20:24:46]: ▸ Linking nanopb
[20:24:46]: ▸ Compiling GULReachabilityChecker.m
[20:24:46]: ▸ Compiling GULNetworkURLSession.m
[20:24:46]: ▸ Compiling GULNetworkConstants.m
[20:24:46]: ▸ Generating 'nanopb.framework.dSYM'
[20:24:46]: ▸ Compiling GULNetwork.m
[20:24:46]: ▸ Compiling GULNSData+zlib.m
[20:24:46]: ▸ Compiling GULMutableDictionary.m
[20:24:46]: ▸ Compiling GULLogger.m
[20:24:46]: ▸ Compiling GULAppEnvironmentUtil.m
[20:24:46]: ▸ Compiling GULAppDelegateSwizzler.m
[20:24:46]: ▸ Compiling GoogleUtilities_vers.c
[20:24:46]: ▸ Compiling GoogleUtilities-dummy.m
[20:24:48]: ▸ Compiling GULUserDefaults.m
[20:24:50]: ▸ Compiling GULSwizzler.m
[20:24:50]: ▸ Compiling GULReachabilityChecker.m
[20:24:50]: ▸ Linking GoogleUtilities
[20:24:50]: ▸ Compiling GULNetworkURLSession.m
[20:24:50]: ▸ Compiling GULNetworkConstants.m
[20:24:50]: ▸ Compiling GULNetwork.m
[20:24:50]: ▸ Compiling GULNSData+zlib.m
[20:24:50]: ▸ Compiling GULMutableDictionary.m
[20:24:50]: ▸ Compiling GULLogger.m
[20:24:50]: ▸ Compiling GULAppEnvironmentUtil.m
[20:24:50]: ▸ Compiling GULAppDelegateSwizzler.m
[20:24:50]: ▸ Compiling GoogleDataTransport-dummy.m
[20:24:50]: ▸ Compiling GoogleDataTransport_vers.c
[20:24:50]: ▸ Compiling GDTCORUploadPackage.m
[20:24:53]: ▸ Compiling GDTCORUploadCoordinator.m
[20:24:53]: ▸ Compiling GDTCORTransport.m
[20:24:53]: ▸ Linking GoogleUtilities
[20:24:53]: ▸ Compiling GDTCORTransformer.m
[20:24:53]: ▸ Generating 'GoogleUtilities.framework.dSYM'
[20:24:53]: ▸ Compiling GDTCORStoredEvent.m
[20:24:53]: ▸ Compiling GDTCORStorage.m
[20:24:53]: ▸ Compiling GDTCORRegistrar.m
[20:24:53]: ▸ Compiling GDTCORReachability.m
[20:24:53]: ▸ Compiling GDTCORPlatform.m
[20:24:53]: ▸ Compiling GDTCORLifecycle.m
[20:24:53]: ▸ Compiling GDTCOREvent.m
[20:24:53]: ▸ Compiling GDTCORDataFuture.m
[20:24:53]: ▸ Compiling GDTCORConsoleLogger.m
[20:24:53]: ▸ Compiling GDTCORClock.m
[20:24:53]: ▸ Compiling GDTCORAssert.m
[20:24:53]: ▸ Compiling GoogleDataTransport_vers.c
[20:24:53]: ▸ Compiling GoogleDataTransport-dummy.m
[20:24:54]: ▸ Compiling GDTCORUploadPackage.m
[20:24:55]: ▸ Compiling GDTCORUploadCoordinator.m
[20:24:56]: ▸ Compiling GDTCORTransport.m
[20:24:56]: ▸ Compiling GDTCORTransformer.m
[20:24:56]: ▸ Compiling GDTCORStoredEvent.m
[20:24:56]: ▸ Compiling GDTCORStorage.m
[20:24:56]: ▸ Compiling GDTCORRegistrar.m
[20:24:56]: ▸ Compiling GDTCORReachability.m
[20:24:56]: ▸ Compiling GDTCORPlatform.m
[20:24:56]: ▸ Compiling GDTCORLifecycle.m
[20:24:56]: ▸ Compiling GDTCOREvent.m
[20:24:56]: ▸ Compiling GDTCORDataFuture.m
[20:24:56]: ▸ Compiling GDTCORConsoleLogger.m
[20:24:56]: ▸ Compiling GDTCORClock.m
[20:24:56]: ▸ Compiling GDTCORAssert.m
[20:24:56]: ▸ Touching nanopb.framework (in target 'nanopb' from project 'Pods')
[20:24:56]: ▸ Touching GoogleUtilities.framework (in target 'GoogleUtilities' from project 'Pods')
[20:24:56]: ▸ Touching GoogleDataTransport.framework (in target 'GoogleDataTransport' from project 'Pods')
[20:24:57]: ▸ Processing GoogleDataTransportCCTSupport-Info.plist
[20:24:57]: ▸ Copying GoogleDataTransportCCTSupport-umbrella.h
[20:24:57]: ▸ Copying cct.nanopb.h
[20:24:57]: ▸ Copying GDTFLLUploader.h
[20:24:57]: ▸ Copying GDTFLLPrioritizer.h
[20:24:57]: ▸ Copying GDTCCTUploader.h
[20:24:57]: ▸ Copying GDTCCTPrioritizer.h
[20:24:57]: ▸ Copying GDTCCTNanopbHelpers.h
[20:24:57]: ▸ Compiling cct.nanopb.c
[20:24:57]: ▸ Compiling GoogleDataTransportCCTSupport-dummy.m
[20:24:58]: ▸ Compiling GDTFLLUploader.m
[20:24:59]: ▸ Compiling GDTFLLPrioritizer.m
[20:25:00]: ▸ Compiling GoogleDataTransportCCTSupport_vers.c
[20:25:00]: ▸ Compiling GDTCCTUploader.m
[20:25:00]: ▸ Compiling GDTCCTPrioritizer.m
[20:25:00]: ▸ Compiling GDTCCTNanopbHelpers.m
[20:25:00]: ▸ Compiling cct.nanopb.c
[20:25:00]: ▸ Compiling GoogleDataTransportCCTSupport_vers.c
[20:25:00]: ▸ Compiling GoogleDataTransportCCTSupport-dummy.m
[20:25:01]: ▸ Compiling GDTFLLUploader.m
[20:25:02]: ▸ Compiling GDTFLLPrioritizer.m
[20:25:03]: ▸ Compiling GDTCCTUploader.m
[20:25:03]: ▸ Compiling GDTCCTPrioritizer.m
[20:25:03]: ▸ Compiling GDTCCTNanopbHelpers.m
[20:25:03]: ▸ Touching GoogleDataTransportCCTSupport.framework (in target 'GoogleDataTransportCCTSupport' from project 'Pods')
[20:25:03]: ▸ Processing FirebaseCoreDiagnostics-Info.plist
[20:25:03]: ▸ Copying firebasecore.nanopb.h
[20:25:03]: ▸ Copying FirebaseCoreDiagnostics-umbrella.h
[20:25:03]: ▸ Copying FIRCoreDiagnosticsDateFileStorage.h
[20:25:03]: ▸ Compiling firebasecore.nanopb.c
[20:25:04]: ▸ Compiling FirebaseCoreDiagnostics-dummy.m
[20:25:05]: ▸ Compiling FIRCoreDiagnosticsDateFileStorage.m
[20:25:05]: ▸ Compiling FIRCoreDiagnostics.m
[20:25:06]: ▸ Compiling FirebaseCoreDiagnostics_vers.c
[20:25:06]: ▸ Compiling firebasecore.nanopb.c
[20:25:06]: ▸ Compiling FirebaseCoreDiagnostics_vers.c
[20:25:06]: ▸ Compiling FirebaseCoreDiagnostics-dummy.m
[20:25:06]: ▸ Compiling FIRCoreDiagnosticsDateFileStorage.m
[20:25:06]: ▸ Compiling FIRCoreDiagnostics.m
[20:25:07]: ▸ Touching FirebaseCoreDiagnostics.framework (in target 'FirebaseCoreDiagnostics' from project 'Pods')
[20:25:07]: ▸ Copying FirebaseCore-umbrella.h
[20:25:07]: ▸ Copying FirebaseCore.h
[20:25:07]: ▸ Copying FIROptions.h
[20:25:07]: ▸ Processing FirebaseCore-Info.plist
[20:25:07]: ▸ Copying FIRLoggerLevel.h
[20:25:07]: ▸ Copying FIRConfiguration.h
[20:25:07]: ▸ Copying FIRApp.h
[20:25:07]: ▸ Copying FIRVersion.h
[20:25:07]: ▸ Copying FIROptionsInternal.h
[20:25:07]: ▸ Copying FIRLogger.h
[20:25:07]: ▸ Copying FIRLibrary.h
[20:25:07]: ▸ Copying FIRErrors.h
[20:25:07]: ▸ Copying FIRErrorCode.h
[20:25:07]: ▸ Copying FIRDiagnosticsData.h
[20:25:07]: ▸ Copying FIRDependency.h
[20:25:07]: ▸ Copying FIRCoreDiagnosticsConnector.h
[20:25:07]: ▸ Copying FIRConfigurationInternal.h
[20:25:07]: ▸ Copying FIRComponentType.h
[20:25:07]: ▸ Copying FIRComponentContainerInternal.h
[20:25:07]: ▸ Copying FIRComponentContainer.h
[20:25:07]: ▸ Copying FIRComponent.h
[20:25:07]: ▸ Copying FIRBundleUtil.h
[20:25:07]: ▸ Copying FIRAppInternal.h
[20:25:07]: ▸ Copying FIRAppAssociationRegistration.h
[20:25:07]: ▸ Copying FIRAnalyticsConfiguration.h
[20:25:07]: ▸ Compiling FirebaseCore-dummy.m
[20:25:08]: ▸ Compiling FIRVersion.m
[20:25:08]: ▸ Compiling FIROptions.m
[20:25:08]: ▸ Compiling FirebaseCore_vers.c
[20:25:08]: ▸ Compiling FIRLogger.m
[20:25:10]: ▸ Compiling FIRErrors.m
[20:25:10]: ▸ Compiling FIRDiagnosticsData.m
[20:25:10]: ▸ Compiling FIRDependency.m
[20:25:10]: ▸ Compiling FIRCoreDiagnosticsConnector.m
[20:25:10]: ▸ Compiling FIRConfiguration.m
[20:25:10]: ▸ Compiling FIRComponentType.m
[20:25:10]: ▸ Compiling FIRComponentContainer.m
[20:25:10]: ▸ Compiling FIRComponent.m
[20:25:10]: ▸ Compiling FIRBundleUtil.m
[20:25:10]: ▸ Compiling FIRAppAssociationRegistration.m
[20:25:10]: ▸ Compiling FIRApp.m
[20:25:10]: ▸ Compiling FIRAnalyticsConfiguration.m
[20:25:10]: ▸ Compiling FirebaseCore_vers.c
[20:25:10]: ▸ Compiling FirebaseCore-dummy.m
[20:25:10]: ▸ Compiling FIRVersion.m
[20:25:10]: ▸ Compiling FIROptions.m
[20:25:10]: ▸ Compiling FIRLogger.m
[20:25:12]: ▸ Compiling FIRErrors.m
[20:25:12]: ▸ Compiling FIRDiagnosticsData.m
[20:25:12]: ▸ Compiling FIRDependency.m
[20:25:12]: ▸ Compiling FIRCoreDiagnosticsConnector.m
[20:25:12]: ▸ Compiling FIRConfiguration.m
[20:25:12]: ▸ Compiling FIRComponentType.m
[20:25:12]: ▸ Compiling FIRComponentContainer.m
[20:25:12]: ▸ Compiling FIRComponent.m
[20:25:12]: ▸ Compiling FIRBundleUtil.m
[20:25:12]: ▸ Compiling FIRAppAssociationRegistration.m
[20:25:12]: ▸ Compiling FIRApp.m
[20:25:12]: ▸ Compiling FIRAnalyticsConfiguration.m
[20:25:12]: ▸ Touching FirebaseCore.framework (in target 'FirebaseCore' from project 'Pods')
[20:25:12]: ▸ Copying FirebaseInstanceID.h
[20:25:12]: ▸ Copying FirebaseInstanceID-umbrella.h
[20:25:12]: ▸ Processing FirebaseInstanceID-Info.plist
[20:25:12]: ▸ Copying FIRInstanceID.h
[20:25:12]: ▸ Copying FIRInstanceID_Private.h
[20:25:12]: ▸ Copying FIRInstanceIDCheckinPreferences.h
[20:25:12]: ▸ Copying FIRInstanceID+Private.h
[20:25:12]: ▸ Compiling NSError+FIRInstanceID.m
[20:25:14]: ▸ Compiling FirebaseInstanceID-dummy.m
[20:25:14]: ▸ Compiling FIRInstanceIDVersionUtilities.m
[20:25:14]: ▸ Compiling FIRInstanceIDUtilities.m
[20:25:17]: ▸ Compiling FirebaseInstanceID_vers.c
[20:25:17]: ▸ Compiling FIRInstanceIDURLQueryItem.m
[20:25:17]: ▸ Compiling FIRInstanceIDTokenStore.m
[20:25:17]: ▸ Compiling FIRInstanceIDTokenOperation.m
[20:25:17]: ▸ Compiling FIRInstanceIDTokenManager.m
[20:25:17]: ▸ Compiling FIRInstanceIDTokenInfo.m
[20:25:17]: ▸ Compiling FIRInstanceIDTokenFetchOperation.m
[20:25:17]: ▸ Compiling FIRInstanceIDTokenDeleteOperation.m
[20:25:17]: ▸ Compiling FIRInstanceIDStringEncoding.m
[20:25:17]: ▸ Compiling FIRInstanceIDStore.m
[20:25:17]: ▸ Compiling FIRInstanceIDLogger.m
[20:25:17]: ▸ Compiling FIRInstanceIDKeychain.m
[20:25:17]: ▸ Compiling FIRInstanceIDKeyPairUtilities.m
[20:25:17]: ▸ Compiling FIRInstanceIDKeyPairStore.m
[20:25:17]: ▸ Compiling FIRInstanceIDKeyPair.m
[20:25:17]: ▸ Compiling FIRInstanceIDConstants.m
[20:25:17]: ▸ Compiling FIRInstanceIDCombinedHandler.m
[20:25:17]: ▸ Compiling FIRInstanceIDCheckinStore.m
[20:25:17]: ▸ Compiling FIRInstanceIDCheckinService.m
[20:25:17]: ▸ Compiling FIRInstanceIDCheckinPreferences.m
[20:25:17]: ▸ Compiling FIRInstanceIDCheckinPreferences+Internal.m
[20:25:17]: ▸ Compiling FIRInstanceIDBackupExcludedPlist.m
[20:25:17]: ▸ Compiling FIRInstanceIDAuthService.m
[20:25:17]: ▸ Compiling FIRInstanceIDAuthKeyChain.m
[20:25:17]: ▸ Compiling FIRInstanceIDAPNSInfo.m
[20:25:17]: ▸ Compiling FIRInstanceID.m
[20:25:17]: ▸ Compiling FIRInstanceID+Private.m
[20:25:17]: ▸ Compiling NSError+FIRInstanceID.m
[20:25:18]: ▸ Compiling FirebaseInstanceID_vers.c
[20:25:18]: ▸ Compiling FirebaseInstanceID-dummy.m
[20:25:18]: ▸ Compiling FIRInstanceIDVersionUtilities.m
[20:25:18]: ▸ Compiling FIRInstanceIDUtilities.m
[20:25:21]: ▸ Compiling FIRInstanceIDURLQueryItem.m
[20:25:21]: ▸ Compiling FIRInstanceIDTokenStore.m
[20:25:21]: ▸ Compiling FIRInstanceIDTokenOperation.m
[20:25:21]: ▸ Compiling FIRInstanceIDTokenManager.m
[20:25:21]: ▸ Compiling FIRInstanceIDTokenInfo.m
[20:25:21]: ▸ Compiling FIRInstanceIDTokenFetchOperation.m
[20:25:21]: ▸ Compiling FIRInstanceIDTokenDeleteOperation.m
[20:25:21]: ▸ Compiling FIRInstanceIDStringEncoding.m
[20:25:21]: ▸ Compiling FIRInstanceIDStore.m
[20:25:21]: ▸ Compiling FIRInstanceIDLogger.m
[20:25:21]: ▸ Compiling FIRInstanceIDKeychain.m
[20:25:21]: ▸ Compiling FIRInstanceIDKeyPairUtilities.m
[20:25:21]: ▸ Compiling FIRInstanceIDKeyPairStore.m
[20:25:21]: ▸ Compiling FIRInstanceIDKeyPair.m
[20:25:21]: ▸ Compiling FIRInstanceIDConstants.m
[20:25:21]: ▸ Compiling FIRInstanceIDCombinedHandler.m
[20:25:21]: ▸ Compiling FIRInstanceIDCheckinStore.m
[20:25:21]: ▸ Compiling FIRInstanceIDCheckinService.m
[20:25:21]: ▸ Compiling FIRInstanceIDCheckinPreferences.m
[20:25:21]: ▸ Compiling FIRInstanceIDCheckinPreferences+Internal.m
[20:25:21]: ▸ Compiling FIRInstanceIDBackupExcludedPlist.m
[20:25:21]: ▸ Compiling FIRInstanceIDAuthService.m
[20:25:21]: ▸ Compiling FIRInstanceIDAuthKeyChain.m
[20:25:21]: ▸ Compiling FIRInstanceIDAPNSInfo.m
[20:25:21]: ▸ Compiling FIRInstanceID.m
[20:25:22]: ▸ Compiling FIRInstanceID+Private.m
[20:25:22]: ▸ Touching FirebaseInstanceID.framework (in target 'FirebaseInstanceID' from project 'Pods')
[20:25:22]: ▸ Copying Pods-JSONMusic-umbrella.h
[20:25:22]: ▸ Processing Pods-JSONMusic-Info.plist
[20:25:22]: ▸ Compiling Pods-JSONMusic-dummy.m
[20:25:23]: ▸ Compiling Pods_JSONMusic_vers.c
[20:25:23]: ▸ Touching Pods_JSONMusic.framework (in target 'Pods-JSONMusic' from project 'Pods')
[20:25:23]: ▸ Running script '[CP] Check Pods Manifest.lock'
[20:25:27]: ▸ Linking JSONMusic
[20:25:29]: ▸ Copying GoogleService-Info.plist
[20:25:31]: ▸ Compiling LaunchScreen.storyboard
[20:25:32]: ▸ Compiling Main.storyboard
[20:25:32]: ▸ Processing Info.plist
[20:25:32]: ▸ Generating 'JSONMusic.app.dSYM'
[20:25:33]: ▸ Running script '[CP] Embed Pods Frameworks'
[20:26:18]: ▸ Touching JSONMusic.app (in target 'JSONMusic' from project 'JSONMusic')
[20:26:18]: ▸ Archive Succeeded
[20:26:19]: Generated plist file with the following values:
[20:26:19]: ▸ -----------------------------------------
[20:26:19]: ▸ {
[20:26:19]: ▸   "provisioningProfiles": {
[20:26:19]: ▸     "com.masters-academy.JSONMusic": "MA JSONMusic Adhoc"
[20:26:19]: ▸   },
[20:26:19]: ▸   "method": "ad-hoc",
[20:26:19]: ▸   "signingStyle": "manual"
[20:26:19]: ▸ }
[20:26:19]: ▸ -----------------------------------------
[20:26:19]: $ /usr/bin/xcrun /Users/pavelbondar/.rbenv/versions/2.6.2/lib/ruby/gems/2.6.0/gems/fastlane-2.134.0/gym/lib/assets/wrap_xcodebuild/xcbuild-safe.sh -exportArchive -exportOptionsPlist '/var/folders/zl/4m3j3sps0nd_x3ggby264hb00000gn/T/gym_config20191130-39253-18y17wb.plist' -archivePath /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive -exportPath '/var/folders/zl/4m3j3sps0nd_x3ggby264hb00000gn/T/gym_output20191130-39253-ucwluo' 
[20:27:12]: Mapping dSYM(s) using generated BCSymbolMaps
[20:27:12]: $ dsymutil --symbol-map /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive/BCSymbolMaps/7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.bcsymbolmap /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive/dSYMs/7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.dSYM
warning: /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic 2019-11-30 20.24.36.xcarchive/BCSymbolMaps/7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.bcsymbolmap: No such file or directory: not unobfuscating.
[20:27:12]: $ dsymutil --symbol-map /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive/BCSymbolMaps/8470AD45-2974-3CB3-9289-3F353A8DCEC9.bcsymbolmap /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive/dSYMs/GoogleUtilities.framework.dSYM
[20:27:12]: $ dsymutil --symbol-map /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive/BCSymbolMaps/19A00BC7-BABC-344A-B076-0F9CDE2AE2BA.bcsymbolmap /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive/dSYMs/GoogleUtilities.framework.dSYM
[20:27:12]: $ dsymutil --symbol-map /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive/BCSymbolMaps/39E067BF-2041-35B7-ACE0-62E0DF2BFC7C.bcsymbolmap /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive/dSYMs/nanopb.framework.dSYM
[20:27:12]: $ dsymutil --symbol-map /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive/BCSymbolMaps/DA541E37-BCB5-3B61-899E-6E90DE68AB99.bcsymbolmap /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive/dSYMs/nanopb.framework.dSYM
[20:27:12]: $ dsymutil --symbol-map /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive/BCSymbolMaps/96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.bcsymbolmap /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive/dSYMs/96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.dSYM
warning: /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic 2019-11-30 20.24.36.xcarchive/BCSymbolMaps/96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.bcsymbolmap: No such file or directory: not unobfuscating.
[20:27:12]: $ dsymutil --symbol-map /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive/BCSymbolMaps/E04A7C19-FC38-35B4-A463-4DB6839AA32E.bcsymbolmap /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive/dSYMs/JSONMusic.app.dSYM
[20:27:13]: $ dsymutil --symbol-map /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive/BCSymbolMaps/807661D8-6654-3930-8144-692D24534CF9.bcsymbolmap /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic\ 2019-11-30\ 20.24.36.xcarchive/dSYMs/807661D8-6654-3930-8144-692D24534CF9.dSYM
warning: /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic 2019-11-30 20.24.36.xcarchive/BCSymbolMaps/807661D8-6654-3930-8144-692D24534CF9.bcsymbolmap: No such file or directory: not unobfuscating.
[20:27:13]: Compressing 6 dSYM(s)
[20:27:13]: $ cd '/Users/pavelbondar/Library/Developer/Xcode/Archives/2019-11-30/JSONMusic 2019-11-30 20.24.36.xcarchive/dSYMs' && zip -r '/Users/pavelbondar/Documents/SP/JSONMusic/JSONMusic.app.dSYM.zip' *.dSYM
[20:27:13]: ▸ updating: JSONMusic.app.dSYM/ (stored 0%)
[20:27:13]: ▸ updating: JSONMusic.app.dSYM/Contents/ (stored 0%)
[20:27:13]: ▸ updating: JSONMusic.app.dSYM/Contents/Resources/ (stored 0%)
[20:27:13]: ▸ updating: JSONMusic.app.dSYM/Contents/Resources/DWARF/ (stored 0%)
[20:27:13]: ▸ updating: JSONMusic.app.dSYM/Contents/Resources/DWARF/JSONMusic (deflated 62%)
[20:27:13]: ▸ updating: JSONMusic.app.dSYM/Contents/Info.plist (deflated 52%)
[20:27:13]: ▸   adding: 7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.dSYM/ (stored 0%)
[20:27:13]: ▸   adding: 7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.dSYM/Contents/ (stored 0%)
[20:27:13]: ▸   adding: 7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.dSYM/Contents/Resources/ (stored 0%)
[20:27:13]: ▸   adding: 7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.dSYM/Contents/Resources/DWARF/ (stored 0%)
[20:27:13]: ▸   adding: 7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.dSYM/Contents/Resources/DWARF/GoogleUtilities (deflated 64%)
[20:27:13]: ▸   adding: 7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.dSYM/Contents/Resources/7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.plist (deflated 21%)
[20:27:13]: ▸   adding: 7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.dSYM/Contents/Info.plist (deflated 52%)
[20:27:13]: ▸   adding: 807661D8-6654-3930-8144-692D24534CF9.dSYM/ (stored 0%)
[20:27:13]: ▸   adding: 807661D8-6654-3930-8144-692D24534CF9.dSYM/Contents/ (stored 0%)
[20:27:13]: ▸   adding: 807661D8-6654-3930-8144-692D24534CF9.dSYM/Contents/Resources/ (stored 0%)
[20:27:13]: ▸   adding: 807661D8-6654-3930-8144-692D24534CF9.dSYM/Contents/Resources/807661D8-6654-3930-8144-692D24534CF9.plist (deflated 21%)
[20:27:13]: ▸   adding: 807661D8-6654-3930-8144-692D24534CF9.dSYM/Contents/Resources/DWARF/ (stored 0%)
[20:27:13]: ▸   adding: 807661D8-6654-3930-8144-692D24534CF9.dSYM/Contents/Resources/DWARF/JSONMusic (deflated 70%)
[20:27:13]: ▸   adding: 807661D8-6654-3930-8144-692D24534CF9.dSYM/Contents/Info.plist (deflated 52%)
[20:27:13]: ▸   adding: 96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.dSYM/ (stored 0%)
[20:27:13]: ▸   adding: 96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.dSYM/Contents/ (stored 0%)
[20:27:13]: ▸   adding: 96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.dSYM/Contents/Resources/ (stored 0%)
[20:27:13]: ▸   adding: 96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.dSYM/Contents/Resources/DWARF/ (stored 0%)
[20:27:13]: ▸   adding: 96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.dSYM/Contents/Resources/DWARF/nanopb (deflated 65%)
[20:27:13]: ▸   adding: 96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.dSYM/Contents/Resources/96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.plist (deflated 21%)
[20:27:13]: ▸   adding: 96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.dSYM/Contents/Info.plist (deflated 52%)
[20:27:13]: ▸   adding: GoogleUtilities.framework.dSYM/ (stored 0%)
[20:27:13]: ▸   adding: GoogleUtilities.framework.dSYM/Contents/ (stored 0%)
[20:27:13]: ▸   adding: GoogleUtilities.framework.dSYM/Contents/Resources/ (stored 0%)
[20:27:13]: ▸   adding: GoogleUtilities.framework.dSYM/Contents/Resources/DWARF/ (stored 0%)
[20:27:13]: ▸   adding: GoogleUtilities.framework.dSYM/Contents/Resources/DWARF/GoogleUtilities (deflated 63%)
[20:27:13]: ▸   adding: GoogleUtilities.framework.dSYM/Contents/Info.plist (deflated 52%)
[20:27:13]: ▸   adding: nanopb.framework.dSYM/ (stored 0%)
[20:27:13]: ▸   adding: nanopb.framework.dSYM/Contents/ (stored 0%)
[20:27:13]: ▸   adding: nanopb.framework.dSYM/Contents/Resources/ (stored 0%)
[20:27:13]: ▸   adding: nanopb.framework.dSYM/Contents/Resources/DWARF/ (stored 0%)
[20:27:13]: ▸   adding: nanopb.framework.dSYM/Contents/Resources/DWARF/nanopb (deflated 60%)
[20:27:13]: ▸   adding: nanopb.framework.dSYM/Contents/Info.plist (deflated 52%)

[20:27:13]: Successfully exported and compressed dSYM file
[20:27:13]: Successfully exported and signed the ipa file:
[20:27:13]: /Users/pavelbondar/Documents/SP/JSONMusic/JSONMusic.ipa
[20:27:13]: ---------------------------------------
[20:27:13]: --- Step: firebase_app_distribution ---
[20:27:13]: ---------------------------------------
[20:27:18]: ▸ i  getting app details...
[20:27:21]: ▸ i  uploading distribution...
[20:27:39]: ▸ ✔  uploaded distribution successfully
[20:27:39]: ▸ i  adding release notes...
[20:27:41]: ▸ ✔  added release notes successfully
[20:27:41]: ▸ i  adding testers/groups...
[20:27:42]: ▸ ✔  added testers/groups successfully

+------+----------------------------+-------------+
|                fastlane summary                 |
+------+----------------------------+-------------+
| Step | Action                     | Time (in s) |
+------+----------------------------+-------------+
| 1    | default_platform           | 0           |
| 2    | Verifying fastlane version | 0           |
| 3    | default_platform           | 0           |
| 4    | match                      | 7           |
| 5    | cocoapods                  | 171         |
| 6    | gym                        | 176         |
| 7    | firebase_app_distribution  | 29          |
+------+----------------------------+-------------+

[20:27:43]: fastlane.tools just saved you 6 minutes! 🎉

#######################################################################
# fastlane 2.137.0 is available. You are on 2.134.0.
# You should use the latest version.
# Please update using `bundle update fastlane`.
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

Please update using `bundle update fastlane`
Pavels-MacBook-Pro:JSONMusic pavelbondar$ 