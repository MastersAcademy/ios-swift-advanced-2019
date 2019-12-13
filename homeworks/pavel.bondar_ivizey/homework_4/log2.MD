Running with gitlab-runner 12.5.0 (577f813d)
2   on Macbook Pho Runner y4DUmUxG
3
Using Shell executor...
00:00
5
Running on Pavels-MacBook-Pro.local...
00:01
7
Fetching changes with git depth set to 50...
00:44
8 Reinitialized existing Git repository in /Users/pavelbondar/Documents/SP/JSONMusic/builds/y4DUmUxG/0/Ivizey/JSONMusic/.git/
9 From https://gitlab.com/Ivizey/JSONMusic
10  * [new ref]         refs/merge-requests/2/head -> refs/merge-requests/2/head
11  * [new ref]         refs/pipelines/101751642   -> refs/pipelines/101751642
12 Checking out 65dd6ba0 as refs/merge-requests/2/head...
13 Removing Pods/Local Podspecs/
14 Skipping Git submodules setup
18
$ bundle exec fastlane tests
19 +-------------------------------------------+---------+---------------------------+
20 |                                  Used plugins                                   |
21 +-------------------------------------------+---------+---------------------------+
22 | Plugin                                    | Version | Action                    |
23 +-------------------------------------------+---------+---------------------------+
24 | fastlane-plugin-firebase_app_distribution | 0.1.4   | firebase_app_distribution |
25 +-------------------------------------------+---------+---------------------------+
26 [18:10:04]: ------------------------------
27 [18:10:04]: --- Step: default_platform ---
28 [18:10:04]: ------------------------------
29 [18:10:04]: Driving the lane 'ios tests' 🚀
30 [18:10:04]: ----------------------------------------
31 [18:10:04]: --- Step: Verifying fastlane version ---
32 [18:10:04]: ----------------------------------------
33 [18:10:04]: Your fastlane version 2.134.0 matches the minimum requirement of 2.119.0  ✅
34 [18:10:04]: ------------------------------
35 [18:10:04]: --- Step: default_platform ---
36 [18:10:04]: ------------------------------
37 [18:10:04]: ------------------
38 [18:10:04]: --- Step: scan ---
39 [18:10:04]: ------------------
40 [18:10:05]: $ xcodebuild -showBuildSettings -workspace ./JSONMusic.xcworkspace -scheme JSONMusic
41 [18:10:08]: Command timed out after 3 seconds on try 1 of 4, trying again with a 6 second timeout...
42 [18:10:14]: Found simulator "iPhone 8 (13.2.2)"
43 [18:10:14]: $ xcodebuild -showBuildSettings -workspace ./JSONMusic.xcworkspace -scheme JSONMusic
44 [18:10:17]: Command timed out after 3 seconds on try 1 of 4, trying again with a 6 second timeout...
45 [18:10:21]: Found simulator "iPhone 8 (13.2.2)"
46 +------------------------------------------------+-----------------------------------------------------------------------------------------------+
47 |                                                            Summary for scan 2.134.0                                                            |
48 +------------------------------------------------+-----------------------------------------------------------------------------------------------+
49 | clean                                          | true                                                                                          |
50 | code_coverage                                  | true                                                                                          |
51 | scheme                                         | JSONMusic                                                                                     |
52 | skip_slack                                     | true                                                                                          |
53 | workspace                                      | ./JSONMusic.xcworkspace                                                                       |
54 | derived_data_path                              | /Users/pavelbondar/Library/Developer/Xcode/DerivedData/JSONMusic-axfmnfothetahtelcxnfuqcwircv |
55 | skip_detect_devices                            | false                                                                                         |
56 | force_quit_simulator                           | false                                                                                         |
57 | reset_simulator                                | false                                                                                         |
58 | reinstall_app                                  | false                                                                                         |
59 | open_report                                    | false                                                                                         |
60 | output_directory                               | ./fastlane/test_output                                                                        |
61 | output_types                                   | html,junit                                                                                    |
62 | buildlog_path                                  | ~/Library/Logs/scan                                                                           |
63 | include_simulator_logs                         | false                                                                                         |
64 | should_zip_build_products                      | false                                                                                         |
65 | result_bundle                                  | false                                                                                         |
66 | use_clang_report_name                          | false                                                                                         |
67 | disable_concurrent_testing                     | false                                                                                         |
68 | skip_build                                     | false                                                                                         |
69 | slack_use_webhook_configured_username_and_icon | false                                                                                         |
70 | slack_username                                 | fastlane                                                                                      |
71 | slack_icon_url                                 | https://s3-eu-west-1.amazonaws.com/fastlane.tools/fastlane.png                                |
72 | slack_only_on_failure                          | false                                                                                         |
73 | xcodebuild_command                             | env NSUnbufferedIO=YES xcodebuild                                                             |
74 | fail_build                                     | true                                                                                          |
75 | xcode_path                                     | /Applications/Xcode.app                                                                       |
76 +------------------------------------------------+-----------------------------------------------------------------------------------------------+
77 [18:10:21]: $ set -o pipefail && env NSUnbufferedIO=YES xcodebuild -workspace ./JSONMusic.xcworkspace -scheme JSONMusic -destination 'platform=iOS Simulator,id=70EA9CAE-4B3B-460D-89CB-044DC19B62C7' -derivedDataPath '/Users/pavelbondar/Library/Developer/Xcode/DerivedData/JSONMusic-axfmnfothetahtelcxnfuqcwircv' -enableCodeCoverage YES clean build test | tee '/Users/pavelbondar/Library/Logs/scan/JSONMusic-JSONMusic.log' | xcpretty  --report html --output '/Users/pavelbondar/Documents/SP/JSONMusic/builds/y4DUmUxG/0/Ivizey/JSONMusic/fastlane/test_output/report.html' --report junit --output '/Users/pavelbondar/Documents/SP/JSONMusic/builds/y4DUmUxG/0/Ivizey/JSONMusic/fastlane/test_output/report.junit' --report junit --output '/var/folders/zl/4m3j3sps0nd_x3ggby264hb00000gn/T/junit_report20191209-9663-1uj9jjc' 
78 [18:10:21]: ▸ Loading...
79 [18:10:26]: ▸ Clean Succeeded
80 [18:10:27]: ▸ Processing nanopb-Info.plist
81 [18:10:27]: ▸ Copying pb_encode.h
82 [18:10:27]: ▸ Copying pb_decode.h
83 [18:10:27]: ▸ Copying pb_common.h
84 [18:10:27]: ▸ Copying pb.h
85 [18:10:27]: ▸ Copying nanopb-umbrella.h
86 [18:10:27]: ▸ Compiling pb_encode.c
87 [18:10:29]: ▸ Compiling pb_decode.c
88 [18:10:29]: ▸ Compiling pb_common.c
89 [18:10:29]: ▸ Compiling nanopb-dummy.m
90 [18:10:33]: ▸ Compiling nanopb_vers.c
91 [18:10:33]: ▸ Processing GoogleUtilities-Info.plist
92 [18:10:33]: ▸ Copying GoogleUtilities-umbrella.h
93 [18:10:33]: ▸ Copying GULUserDefaults.h
94 [18:10:33]: ▸ Copying GULReachabilityMessageCode.h
95 [18:10:33]: ▸ Copying GULReachabilityChecker.h
96 [18:10:33]: ▸ Copying GULNetworkURLSession.h
97 [18:10:33]: ▸ Copying GULNetworkMessageCode.h
98 [18:10:33]: ▸ Copying GULNetworkLoggerProtocol.h
99 [18:10:33]: ▸ Copying GULNetworkConstants.h
100 [18:10:33]: ▸ Copying GULNetwork.h
101 [18:10:33]: ▸ Copying GULMutableDictionary.h
102 [18:10:33]: ▸ Copying GULNSData+zlib.h
103 [18:10:33]: ▸ Copying GULSwizzler.h
104 [18:10:33]: ▸ Copying GULOriginalIMPConvenienceMacros.h
105 [18:10:33]: ▸ Copying GULLoggerLevel.h
106 [18:10:33]: ▸ Copying GULLogger.h
107 [18:10:33]: ▸ Copying GULAppEnvironmentUtil.h
108 [18:10:33]: ▸ Copying GULLoggerCodes.h
109 [18:10:33]: ▸ Copying GULApplication.h
110 [18:10:33]: ▸ Copying GULAppDelegateSwizzler.h
111 [18:10:33]: ▸ Processing GoogleDataTransport-Info.plist
112 [18:10:33]: ▸ Copying GoogleDataTransport-umbrella.h
113 [18:10:33]: ▸ Copying GoogleDataTransport.h
114 [18:10:33]: ▸ Copying GDTCORUploader.h
115 [18:10:33]: ▸ Copying GDTCORUploadPackage.h
116 [18:10:33]: ▸ Copying GDTCORTransport.h
117 [18:10:33]: ▸ Copying GDTCORTargets.h
118 [18:10:33]: ▸ Copying GDTCORStoredEvent.h
119 [18:10:33]: ▸ Copying GDTCORRegistrar.h
120 [18:10:33]: ▸ Copying GDTCORPrioritizer.h
121 [18:10:33]: ▸ Copying GDTCORPlatform.h
122 [18:10:33]: ▸ Copying GDTCORLifecycle.h
123 [18:10:33]: ▸ Copying GDTCOREventTransformer.h
124 [18:10:33]: ▸ Copying GDTCOREventDataObject.h
125 [18:10:33]: ▸ Copying GDTCOREvent.h
126 [18:10:33]: ▸ Copying GDTCORDataFuture.h
127 [18:10:33]: ▸ Copying GDTCORConsoleLogger.h
128 [18:10:33]: ▸ Copying GDTCORClock.h
129 [18:10:33]: ▸ Copying GDTCORAssert.h
130 [18:10:33]: ▸ Copying GDTCORUploadPackage_Private.h
131 [18:10:33]: ▸ Copying GDTCORUploadCoordinator.h
132 [18:10:33]: ▸ Copying GDTCORTransport_Private.h
133 [18:10:33]: ▸ Copying GDTCORTransformer_Private.h
134 [18:10:33]: ▸ Copying GDTCORTransformer.h
135 [18:10:33]: ▸ Copying GDTCORStorage_Private.h
136 [18:10:33]: ▸ Copying GDTCORStorage.h
137 [18:10:33]: ▸ Copying GDTCORRegistrar_Private.h
138 [18:10:33]: ▸ Copying GDTCORReachability_Private.h
139 [18:10:33]: ▸ Copying GDTCORReachability.h
140 [18:10:33]: ▸ Copying GDTCOREvent_Private.h
141 [18:10:33]: ▸ Compiling GoogleUtilities-dummy.m
142 [18:10:34]: ▸ Compiling GoogleUtilities_vers.c
143 [18:10:34]: ▸ Compiling GULUserDefaults.m
144 [18:10:34]: ▸ Compiling GULSwizzler.m
145 [18:10:34]: ▸ Compiling GULReachabilityChecker.m
146 [18:10:34]: ▸ Linking nanopb
147 [18:10:34]: ▸ Compiling GULNetworkURLSession.m
148 [18:10:34]: ▸ Compiling GULNetworkConstants.m
149 [18:10:34]: ▸ Compiling GULNetwork.m
150 [18:10:34]: ▸ Compiling GULNSData+zlib.m
151 [18:10:34]: ▸ Compiling GULMutableDictionary.m
152 [18:10:34]: ▸ Compiling GULLogger.m
153 [18:10:35]: ▸ Compiling GULAppEnvironmentUtil.m
154 [18:10:35]: ▸ Compiling GULAppDelegateSwizzler.m
155 [18:10:35]: ▸ Compiling GoogleDataTransport-dummy.m
156 [18:10:36]: ▸ Compiling GoogleDataTransport_vers.c
157 [18:10:36]: ▸ Compiling GDTCORUploadPackage.m
158 [18:10:38]: ▸ Compiling GDTCORUploadCoordinator.m
159 [18:10:39]: ▸ Compiling GDTCORTransport.m
160 [18:10:39]: ▸ Linking GoogleUtilities
161 [18:10:39]: ▸ Compiling GDTCORTransformer.m
162 [18:10:39]: ▸ Compiling GDTCORStoredEvent.m
163 [18:10:39]: ▸ Compiling GDTCORStorage.m
164 [18:10:39]: ▸ Compiling GDTCORRegistrar.m
165 [18:10:39]: ▸ Compiling GDTCORReachability.m
166 [18:10:39]: ▸ Compiling GDTCORPlatform.m
167 [18:10:39]: ▸ Compiling GDTCORLifecycle.m
168 [18:10:39]: ▸ Compiling GDTCOREvent.m
169 [18:10:39]: ▸ Compiling GDTCORDataFuture.m
170 [18:10:39]: ▸ Compiling GDTCORConsoleLogger.m
171 [18:10:40]: ▸ Compiling GDTCORClock.m
172 [18:10:40]: ▸ Compiling GDTCORAssert.m
173 [18:10:40]: Running Tests: ▸ Touching nanopb.framework (in target 'nanopb' from project 'Pods')
174 [18:10:40]: Running Tests: ▸ Touching GoogleUtilities.framework (in target 'GoogleUtilities' from project 'Pods')
175 [18:10:40]: Running Tests: ▸ Touching GoogleDataTransport.framework (in target 'GoogleDataTransport' from project 'Pods')
176 [18:10:40]: ▸ Copying GoogleDataTransportCCTSupport-umbrella.h
177 [18:10:40]: ▸ Processing GoogleDataTransportCCTSupport-Info.plist
178 [18:10:40]: ▸ Copying GDTFLLUploader.h
179 [18:10:40]: ▸ Copying cct.nanopb.h
180 [18:10:40]: ▸ Copying GDTFLLPrioritizer.h
181 [18:10:40]: ▸ Copying GDTCCTUploader.h
182 [18:10:40]: ▸ Copying GDTCCTPrioritizer.h
183 [18:10:40]: ▸ Copying GDTCCTNanopbHelpers.h
184 [18:10:40]: ▸ Compiling GoogleDataTransportCCTSupport-dummy.m
185 [18:10:42]: ▸ Compiling cct.nanopb.c
186 [18:10:42]: ▸ Compiling GDTFLLUploader.m
187 [18:10:44]: ▸ Compiling GoogleDataTransportCCTSupport_vers.c
188 [18:10:44]: ▸ Compiling GDTFLLPrioritizer.m
189 [18:10:44]: ▸ Compiling GDTCCTUploader.m
190 [18:10:44]: ▸ Compiling GDTCCTPrioritizer.m
191 [18:10:44]: ▸ Compiling GDTCCTNanopbHelpers.m
192 [18:10:44]: Running Tests: ▸ Touching GoogleDataTransportCCTSupport.framework (in target 'GoogleDataTransportCCTSupport' from project 'Pods')
193 [18:10:44]: ▸ Copying firebasecore.nanopb.h
194 [18:10:44]: ▸ Processing FirebaseCoreDiagnostics-Info.plist
195 [18:10:44]: ▸ Copying FirebaseCoreDiagnostics-umbrella.h
196 [18:10:44]: ▸ Copying FIRCoreDiagnosticsDateFileStorage.h
197 [18:10:44]: ▸ Compiling FirebaseCoreDiagnostics-dummy.m
198 [18:10:46]: ▸ Compiling firebasecore.nanopb.c
199 [18:10:46]: ▸ Compiling FIRCoreDiagnosticsDateFileStorage.m
200 [18:10:47]: ▸ Compiling FirebaseCoreDiagnostics_vers.c
201 [18:10:47]: ▸ Compiling FIRCoreDiagnostics.m
202 [18:10:48]: Running Tests: ▸ Touching FirebaseCoreDiagnostics.framework (in target 'FirebaseCoreDiagnostics' from project 'Pods')
203 [18:10:48]: ▸ Copying FirebaseCore-umbrella.h
204 [18:10:48]: ▸ Copying FIROptions.h
205 [18:10:48]: ▸ Copying FIRLoggerLevel.h
206 [18:10:48]: ▸ Copying FirebaseCore.h
207 [18:10:48]: ▸ Processing FirebaseCore-Info.plist
208 [18:10:48]: ▸ Copying FIRConfiguration.h
209 [18:10:48]: ▸ Copying FIRApp.h
210 [18:10:48]: ▸ Copying FIRVersion.h
211 [18:10:48]: ▸ Copying FIROptionsInternal.h
212 [18:10:48]: ▸ Copying FIRLogger.h
213 [18:10:48]: ▸ Copying FIRLibrary.h
214 [18:10:48]: ▸ Copying FIRErrors.h
215 [18:10:48]: ▸ Copying FIRErrorCode.h
216 [18:10:48]: ▸ Copying FIRDiagnosticsData.h
217 [18:10:48]: ▸ Copying FIRDependency.h
218 [18:10:48]: ▸ Copying FIRCoreDiagnosticsConnector.h
219 [18:10:48]: ▸ Copying FIRConfigurationInternal.h
220 [18:10:48]: ▸ Copying FIRComponentType.h
221 [18:10:48]: ▸ Copying FIRComponentContainerInternal.h
222 [18:10:48]: ▸ Copying FIRComponentContainer.h
223 [18:10:48]: ▸ Copying FIRComponent.h
224 [18:10:48]: ▸ Copying FIRBundleUtil.h
225 [18:10:48]: ▸ Copying FIRAppInternal.h
226 [18:10:48]: ▸ Copying FIRAppAssociationRegistration.h
227 [18:10:48]: ▸ Copying FIRAnalyticsConfiguration.h
228 [18:10:48]: ▸ Compiling FIRVersion.m
229 [18:10:48]: ▸ Compiling FIROptions.m
230 [18:10:50]: ▸ Compiling FirebaseCore-dummy.m
231 [18:10:51]: ▸ Compiling FirebaseCore_vers.c
232 [18:10:51]: ▸ Compiling FIRLogger.m
233 [18:10:54]: ▸ Compiling FIRErrors.m
234 [18:10:54]: ▸ Compiling FIRDiagnosticsData.m
235 [18:10:54]: ▸ Compiling FIRDependency.m
236 [18:10:54]: ▸ Compiling FIRCoreDiagnosticsConnector.m
237 [18:10:54]: ▸ Compiling FIRConfiguration.m
238 [18:10:54]: ▸ Compiling FIRComponentType.m
239 [18:10:54]: ▸ Compiling FIRComponentContainer.m
240 [18:10:54]: ▸ Compiling FIRComponent.m
241 [18:10:54]: ▸ Compiling FIRBundleUtil.m
242 [18:10:54]: ▸ Compiling FIRAppAssociationRegistration.m
243 [18:10:54]: ▸ Compiling FIRApp.m
244 [18:10:54]: ▸ Compiling FIRAnalyticsConfiguration.m
245 [18:10:54]: Running Tests: ▸ Touching FirebaseCore.framework (in target 'FirebaseCore' from project 'Pods')
246 [18:10:54]: ▸ Copying FirebaseInstanceID.h
247 [18:10:54]: ▸ Copying FIRInstanceID.h
248 [18:10:54]: ▸ Copying FirebaseInstanceID-umbrella.h
249 [18:10:54]: ▸ Copying FIRInstanceID_Private.h
250 [18:10:54]: ▸ Processing FirebaseInstanceID-Info.plist
251 [18:10:54]: ▸ Copying FIRInstanceIDCheckinPreferences.h
252 [18:10:54]: ▸ Copying FIRInstanceID+Private.h
253 [18:10:54]: ▸ Compiling FirebaseInstanceID-dummy.m
254 [18:10:56]: ▸ Compiling NSError+FIRInstanceID.m
255 [18:10:56]: ▸ Compiling FIRInstanceIDVersionUtilities.m
256 [18:10:56]: ▸ Compiling FIRInstanceIDUtilities.m
257 [18:10:59]: ▸ Compiling FirebaseInstanceID_vers.c
258 [18:10:59]: ▸ Compiling FIRInstanceIDURLQueryItem.m
259 [18:10:59]: ▸ Compiling FIRInstanceIDTokenStore.m
260 [18:10:59]: ▸ Compiling FIRInstanceIDTokenOperation.m
261 [18:10:59]: ▸ Compiling FIRInstanceIDTokenManager.m
262 [18:10:59]: ▸ Compiling FIRInstanceIDTokenInfo.m
263 [18:10:59]: ▸ Compiling FIRInstanceIDTokenFetchOperation.m
264 [18:10:59]: ▸ Compiling FIRInstanceIDTokenDeleteOperation.m
265 [18:10:59]: ▸ Compiling FIRInstanceIDStringEncoding.m
266 [18:10:59]: ▸ Compiling FIRInstanceIDStore.m
267 [18:10:59]: ▸ Compiling FIRInstanceIDLogger.m
268 [18:10:59]: ▸ Compiling FIRInstanceIDKeychain.m
269 [18:10:59]: ▸ Compiling FIRInstanceIDKeyPairUtilities.m
270 [18:10:59]: ▸ Compiling FIRInstanceIDKeyPairStore.m
271 [18:10:59]: ▸ Compiling FIRInstanceIDKeyPair.m
272 [18:10:59]: ▸ Compiling FIRInstanceIDConstants.m
273 [18:10:59]: ▸ Compiling FIRInstanceIDCombinedHandler.m
274 [18:10:59]: ▸ Compiling FIRInstanceIDCheckinStore.m
275 [18:10:59]: ▸ Compiling FIRInstanceIDCheckinService.m
276 [18:10:59]: ▸ Compiling FIRInstanceIDCheckinPreferences.m
277 [18:10:59]: ▸ Compiling FIRInstanceIDCheckinPreferences+Internal.m
278 [18:10:59]: ▸ Compiling FIRInstanceIDBackupExcludedPlist.m
279 [18:10:59]: ▸ Compiling FIRInstanceIDAuthService.m
280 [18:10:59]: ▸ Compiling FIRInstanceIDAuthKeyChain.m
281 [18:10:59]: ▸ Compiling FIRInstanceIDAPNSInfo.m
282 [18:10:59]: ▸ Compiling FIRInstanceID.m
283 [18:10:59]: ▸ Compiling FIRInstanceID+Private.m
284 [18:11:00]: Running Tests: ▸ Touching FirebaseInstanceID.framework (in target 'FirebaseInstanceID' from project 'Pods')
285 [18:11:00]: ▸ Copying Pods-JSONMusic-umbrella.h
286 [18:11:00]: ▸ Processing Pods-JSONMusic-Info.plist
287 [18:11:00]: ▸ Compiling Pods-JSONMusic-dummy.m
288 [18:11:01]: ▸ Compiling Pods_JSONMusic_vers.c
289 [18:11:01]: Running Tests: ▸ Touching Pods_JSONMusic.framework (in target 'Pods-JSONMusic' from project 'Pods')
290 [18:11:01]: ▸ Running script '[CP] Check Pods Manifest.lock'
291 [18:11:02]: ▸ Compiling NetworkDataFetcher.swift
292 [18:11:19]: ▸ Compiling NetworkService.swift
293 [18:11:19]: ▸ Compiling SearchResponce.swift
294 [18:11:19]: ▸ Compiling ViewController.swift
295 [18:11:19]: ▸ Compiling AppDelegate.swift
296 [18:11:19]: ▸ Compiling SceneDelegate.swift
297 [18:11:20]: ▸ Linking JSONMusic
298 [18:11:24]: ▸ Copying GoogleService-Info.plist
299 [18:11:24]: ▸ Compiling LaunchScreen.storyboard
300 [18:11:26]: ▸ Compiling Main.storyboard
301 [18:11:26]: ▸ Processing Info.plist
302 [18:11:26]: ▸ Running script '[CP] Embed Pods Frameworks'
303 [18:11:28]: Running Tests: ▸ Touching JSONMusic.app (in target 'JSONMusic' from project 'JSONMusic')
304 [18:11:28]: ▸ Build Succeeded
305 [18:11:29]: ▸ Processing nanopb-Info.plist
306 [18:11:29]: ▸ Compiling pb_encode.c
307 [18:11:30]: ▸ Compiling nanopb_vers.c
308 [18:11:30]: ▸ Compiling pb_decode.c
309 [18:11:30]: ▸ Compiling pb_common.c
310 [18:11:30]: ▸ Compiling nanopb-dummy.m
311 [18:11:30]: ▸ Processing GoogleUtilities-Info.plist
312 [18:11:30]: ▸ Compiling GoogleUtilities_vers.c
313 [18:11:30]: ▸ Compiling GoogleUtilities-dummy.m
314 [18:11:30]: ▸ Compiling GULUserDefaults.m
315 [18:11:31]: ▸ Compiling GULSwizzler.m
316 [18:11:31]: ▸ Compiling GULReachabilityChecker.m
317 [18:11:31]: ▸ Linking nanopb
318 [18:11:31]: ▸ Compiling GULNetworkURLSession.m
319 [18:11:31]: ▸ Compiling GULNetworkConstants.m
320 [18:11:31]: ▸ Compiling GULNetwork.m
321 [18:11:31]: ▸ Compiling GULNSData+zlib.m
322 [18:11:31]: ▸ Compiling GULMutableDictionary.m
323 [18:11:31]: ▸ Compiling GULLogger.m
324 [18:11:31]: ▸ Compiling GULAppEnvironmentUtil.m
325 [18:11:32]: ▸ Compiling GULAppDelegateSwizzler.m
326 [18:11:32]: ▸ Processing GoogleDataTransport-Info.plist
327 [18:11:32]: ▸ Compiling GoogleDataTransport_vers.c
328 [18:11:32]: ▸ Compiling GoogleDataTransport-dummy.m
329 [18:11:32]: ▸ Compiling GDTCORUploadPackage.m
330 [18:11:32]: ▸ Compiling GDTCORUploadCoordinator.m
331 [18:11:32]: ▸ Compiling GDTCORTransport.m
332 [18:11:32]: ▸ Compiling GDTCORTransformer.m
333 [18:11:32]: ▸ Linking GoogleUtilities
334 [18:11:32]: ▸ Compiling GDTCORStoredEvent.m
335 [18:11:33]: ▸ Compiling GDTCORStorage.m
336 [18:11:33]: ▸ Compiling GDTCORRegistrar.m
337 [18:11:33]: ▸ Compiling GDTCORReachability.m
338 [18:11:33]: ▸ Compiling GDTCORPlatform.m
339 [18:11:34]: ▸ Compiling GDTCORLifecycle.m
340 [18:11:34]: ▸ Compiling GDTCOREvent.m
341 [18:11:34]: ▸ Compiling GDTCORDataFuture.m
342 [18:11:34]: ▸ Compiling GDTCORConsoleLogger.m
343 [18:11:34]: ▸ Compiling GDTCORClock.m
344 [18:11:34]: ▸ Compiling GDTCORAssert.m
345 [18:11:34]: ▸ Processing GoogleDataTransportCCTSupport-Info.plist
346 [18:11:34]: ▸ Compiling GoogleDataTransportCCTSupport_vers.c
347 [18:11:34]: ▸ Compiling cct.nanopb.c
348 [18:11:36]: ▸ Compiling GoogleDataTransportCCTSupport-dummy.m
349 [18:11:36]: ▸ Compiling GDTFLLUploader.m
350 [18:11:36]: ▸ Compiling GDTFLLPrioritizer.m
351 [18:11:36]: ▸ Compiling GDTCCTUploader.m
352 [18:11:36]: ▸ Compiling GDTCCTPrioritizer.m
353 [18:11:36]: ▸ Compiling GDTCCTNanopbHelpers.m
354 [18:11:36]: ▸ Processing FirebaseCoreDiagnostics-Info.plist
355 [18:11:36]: ▸ Compiling FirebaseCoreDiagnostics_vers.c
356 [18:11:36]: ▸ Compiling FirebaseCoreDiagnostics-dummy.m
357 [18:11:37]: ▸ Compiling firebasecore.nanopb.c
358 [18:11:37]: ▸ Compiling FIRCoreDiagnosticsDateFileStorage.m
359 [18:11:37]: ▸ Compiling FIRCoreDiagnostics.m
360 [18:11:37]: ▸ Compiling FIRVersion.m
361 [18:11:37]: ▸ Processing FirebaseCore-Info.plist
362 [18:11:37]: ▸ Compiling FirebaseCore_vers.c
363 [18:11:37]: ▸ Compiling FirebaseCore-dummy.m
364 [18:11:37]: ▸ Compiling FIROptions.m
365 [18:11:38]: ▸ Compiling FIRLogger.m
366 [18:11:38]: ▸ Compiling FIRErrors.m
367 [18:11:38]: ▸ Compiling FIRDiagnosticsData.m
368 [18:11:38]: ▸ Compiling FIRDependency.m
369 [18:11:38]: ▸ Compiling FIRCoreDiagnosticsConnector.m
370 [18:11:38]: ▸ Compiling FIRConfiguration.m
371 [18:11:38]: ▸ Compiling FIRComponentType.m
372 [18:11:38]: ▸ Compiling FIRComponentContainer.m
373 [18:11:38]: ▸ Compiling FIRComponent.m
374 [18:11:38]: ▸ Compiling FIRBundleUtil.m
375 [18:11:38]: ▸ Compiling FIRAppAssociationRegistration.m
376 [18:11:38]: ▸ Compiling FIRApp.m
377 [18:11:39]: ▸ Compiling FIRAnalyticsConfiguration.m
378 [18:11:39]: ▸ Processing FirebaseInstanceID-Info.plist
379 [18:11:39]: ▸ Compiling NSError+FIRInstanceID.m
380 [18:11:39]: ▸ Compiling FirebaseInstanceID_vers.c
381 [18:11:39]: ▸ Compiling FIRInstanceIDVersionUtilities.m
382 [18:11:39]: ▸ Compiling FirebaseInstanceID-dummy.m
383 [18:11:39]: ▸ Compiling FIRInstanceIDUtilities.m
384 [18:11:40]: ▸ Compiling FIRInstanceIDURLQueryItem.m
385 [18:11:40]: ▸ Compiling FIRInstanceIDTokenStore.m
386 [18:11:40]: ▸ Compiling FIRInstanceIDTokenOperation.m
387 [18:11:40]: ▸ Compiling FIRInstanceIDTokenManager.m
388 [18:11:40]: ▸ Compiling FIRInstanceIDTokenInfo.m
389 [18:11:40]: ▸ Compiling FIRInstanceIDTokenFetchOperation.m
390 [18:11:40]: ▸ Compiling FIRInstanceIDTokenDeleteOperation.m
391 [18:11:40]: ▸ Compiling FIRInstanceIDStringEncoding.m
392 [18:11:40]: ▸ Compiling FIRInstanceIDStore.m
393 [18:11:40]: ▸ Compiling FIRInstanceIDLogger.m
394 [18:11:40]: ▸ Compiling FIRInstanceIDKeychain.m
395 [18:11:41]: ▸ Compiling FIRInstanceIDKeyPairUtilities.m
396 [18:11:41]: ▸ Compiling FIRInstanceIDKeyPairStore.m
397 [18:11:41]: ▸ Compiling FIRInstanceIDKeyPair.m
398 [18:11:41]: ▸ Compiling FIRInstanceIDConstants.m
399 [18:11:41]: ▸ Compiling FIRInstanceIDCombinedHandler.m
400 [18:11:41]: ▸ Compiling FIRInstanceIDCheckinStore.m
401 [18:11:41]: ▸ Compiling FIRInstanceIDCheckinService.m
402 [18:11:41]: ▸ Compiling FIRInstanceIDCheckinPreferences.m
403 [18:11:41]: ▸ Compiling FIRInstanceIDCheckinPreferences+Internal.m
404 [18:11:41]: ▸ Compiling FIRInstanceIDBackupExcludedPlist.m
405 [18:11:41]: ▸ Compiling FIRInstanceIDAuthService.m
406 [18:11:41]: ▸ Compiling FIRInstanceIDAuthKeyChain.m
407 [18:11:41]: ▸ Compiling FIRInstanceIDAPNSInfo.m
408 [18:11:41]: ▸ Compiling FIRInstanceID.m
409 [18:11:42]: ▸ Compiling FIRInstanceID+Private.m
410 [18:11:42]: ▸ Processing Pods-JSONMusic-Info.plist
411 [18:11:42]: ▸ Compiling Pods_JSONMusic_vers.c
412 [18:11:43]: ▸ Compiling Pods-JSONMusic-dummy.m
413 [18:11:43]: ▸ Running script '[CP] Check Pods Manifest.lock'
414 [18:11:44]: ▸ Compiling NetworkDataFetcher.swift
415 [18:11:45]: ▸ Compiling NetworkService.swift
416 [18:11:45]: ▸ Compiling SearchResponce.swift
417 [18:11:45]: ▸ Compiling ViewController.swift
418 [18:11:45]: ▸ Compiling AppDelegate.swift
419 [18:11:45]: ▸ Compiling SceneDelegate.swift
420 [18:11:46]: ▸ Linking JSONMusic
421 [18:11:47]: ▸ Running script '[CP] Embed Pods Frameworks'
422 [18:11:47]: ▸ Processing Info.plist
423 [18:11:48]: ▸ Processing Info.plist
424 [18:11:48]: ▸ Compiling JSONMusicTests.swift
425 [18:11:54]: ▸ Linking JSONMusicTests
426 [18:11:54]: ▸ Copying /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/usr/lib/libXCTestBundleInject.dylib
427 [18:11:54]: ▸ Copying /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Library/PrivateFrameworks/XCTAutomationSupport.framework
428 [18:11:54]: ▸ Copying /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Library/Frameworks/XCTest.framework
429 [18:11:54]: ▸ Copying /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/usr/lib/libXCTestSwiftSupport.dylib
430 [18:11:54]: Running Tests: ▸ Touching JSONMusicTests.xctest (in target 'JSONMusicTests' from project 'JSONMusic')
431 [18:11:54]: ▸ 2019-12-09 18:11:54.902 xcodebuild[9732:7725854]  IDETestOperationsObserverDebug: Writing diagnostic log for test session to:
432 [18:11:54]: ▸ /Users/pavelbondar/Library/Developer/Xcode/DerivedData/JSONMusic-axfmnfothetahtelcxnfuqcwircv/Logs/Test/Run-JSONMusic-2019.12.09_6-10-25-+0200.xcresult/Staging/3_Test/Diagnostics/JSONMusicTests-820FCD6D-CE27-4BC2-BE98-71E9E39550E4/JSONMusicTests-806C17D8-F5DB-4A6F-8F50-FF602138209D/Session-JSONMusicTests-2019-12-09_61154 PM-H0KLBi.log
433 [18:11:54]: ▸ 2019-12-09 18:11:54.906 xcodebuild[9732:7723936] [MT] IDETestOperationsObserverDebug: (AF88B110-6C89-4350-A2BC-6F0CF10717C1) Beginning test session JSONMusicTests-AF88B110-6C89-4350-A2BC-6F0CF10717C1 at 2019-12-09 6:11:54.903 PM with Xcode 11B500 on target <DVTiPhoneSimulator: 0x7fe009d06b90> {
434 [18:11:54]: ▸ 		SimDevice: iPhone 8 (70EA9CAE-4B3B-460D-89CB-044DC19B62C7, iOS 13.2, Shutdown)
435 [18:11:54]: ▸ } (13.2.2 (17B102))
436 [18:12:31]: ▸ 2019-12-09 18:12:31.630 xcodebuild[9732:7723936] [MT] IDETestOperationsObserverDebug: (AF88B110-6C89-4350-A2BC-6F0CF10717C1) Finished requesting crash reports. Continuing with testing.
437 [18:12:36]: ▸ All tests
438 [18:12:36]: ▸ Test Suite JSONMusicTests.xctest started
439 [18:12:36]: ▸ JSONMusicTests
440 [18:12:36]: ▸     ✓ testExample (0.004 seconds)
441 [18:12:37]: ▸     ◷ testPerformanceExample measured (0.000 seconds)
442 [18:12:37]: ▸     ✓ testPerformanceExample (0.300 seconds)
443 [18:12:37]: ▸ 	 Executed 2 tests, with 0 failures (0 unexpected) in 0.304 (0.311) seconds
444 [18:12:37]: ▸ 
445 [18:12:37]: ▸ 2019-12-09 18:12:37.514 xcodebuild[9732:7723936] [MT] IDETestOperationsObserverDebug: 42.618 elapsed -- Testing started completed.
446 [18:12:37]: ▸ 2019-12-09 18:12:37.514 xcodebuild[9732:7723936] [MT] IDETestOperationsObserverDebug: 0.000 sec, +0.000 sec -- start
447 [18:12:37]: ▸ 2019-12-09 18:12:37.514 xcodebuild[9732:7723936] [MT] IDETestOperationsObserverDebug: 42.618 sec, +42.618 sec -- end
448 [18:12:39]: ▸ Test Succeeded
449 +--------------------+---+
450 |      Test Results      |
451 +--------------------+---+
452 | Number of tests    | 2 |
453 | Number of failures | 0 |
454 +--------------------+---+
455 +------+----------------------------+-------------+
456 |                fastlane summary                 |
457 +------+----------------------------+-------------+
458 | Step | Action                     | Time (in s) |
459 +------+----------------------------+-------------+
460 | 1    | default_platform           | 0           |
461 | 2    | Verifying fastlane version | 0           |
462 | 3    | default_platform           | 0           |
463 | 4    | scan                       | 160         |
464 +------+----------------------------+-------------+
465 [18:12:45]: fastlane.tools finished successfully 🎉
466 #######################################################################
467 # fastlane 2.137.0 is available. You are on 2.134.0.
468 # You should use the latest version.
469 # Please update using `bundle update fastlane`.
470 #######################################################################
471 2.137.0 Improvements
472 * [supply] raise error if rollout is used as argument for the track or track_promote_to options (#15692) via Josh Holtz
473 * [supply] upload meta in same commit to fix issue with validate_only (#15691) via Josh Holtz
474 * [action] gradle: Add support for mapping.txt file (#15597) via NicoEkino
475 * [screengrab] address issue #15674 - make sure aapt is available before trying to clean status bar (#15684) via Hiroto Nakamura
476 * [screengrab] Remove unused clean status bar options (#15679) via Rick Clephas
477 * [action] added custom option to testfairy upload (#15670) via Vijay Sharma
478 * [supply] don't apply rollout when value 1 of when uploading and don't call promote or rollout methods when uploading (#15668) via Josh Holtz
479 * [ensure_bundle_exec] Fix wording in action error message and d… (#15596) via Iulian Onofrei
480 * [fastlane] fix typo in code comment (#15604) via Iulian Onofrei
481 * [action] fix formatting in ruby_version action's details (#15605) via Iulian Onofrei
482 2.136.0 Screengrab improvements and supply fixes
483 * [supply] use version code for changelog again (regression introducted in 2.135.0) (#15665) via Josh Holtz
484 * [Fastlane.swift] default tool hash to [:] not {} and test swift generation on circle (#15654) via Josh Holtz
485 * [screengrab] update bintray plugin to 0.9.1 so releases work again (#15642) via Josh Holtz
486 * [supply] fixes some issue with version codes not being found and allows promote with rollout now (#15647) via Josh Holtz
487 * [screengrab] let users set clean status bar (#15284) via Rick Clephas
488 * [screengrab] add `adb_host` option (#14948) via Cedric Gatay
489 * [screengrab] add config to allow disabling timestamp suffix to filename  (#14781) via Hiroto-N
490 * [screengrab] updated apk paths in Screengrabfile (#15077) via Rishabh Tayal
491 * [screengrab] added new internal path for screenshots and run adb root to prevent access denied (#15635) via Josh Holtz
492 * [screengrab] update Screengrab to AndroidX (#15217) via Colin Lee
493 2.135.2 Hotfix for uploading a draft using supply
494 * [supply] fix allowing uploading of a draft release on a track with a completed release (#15627) via Josh Holtz
495 To see all new releases, open https://github.com/fastlane/fastlane/releases
496 Please update using `bundle update fastlane`
497 Job succeeded