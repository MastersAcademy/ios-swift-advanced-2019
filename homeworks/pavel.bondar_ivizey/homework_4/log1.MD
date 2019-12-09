 Running with gitlab-runner 12.5.0 (577f813d)
2   on Macbook Pho Runner y4DUmUxG
3
Using Shell executor...
00:00
5
Running on Pavels-MacBook-Pro.local...
00:00
7
Fetching changes with git depth set to 50...
00:05
8 Reinitialized existing Git repository in /Users/pavelbondar/Documents/SP/JSONMusic/builds/y4DUmUxG/0/Ivizey/JSONMusic/.git/
9 From https://gitlab.com/Ivizey/JSONMusic
10  * [new ref]         refs/pipelines/100379690 -> refs/pipelines/100379690
11  * [new tag]         beta/new_tag             -> beta/new_tag
12 Checking out 0a4601b4 as beta/new_tag...
13 Removing Pods/Local Podspecs/
14 Skipping Git submodules setup
16
Checking cache for 100379690-2...
00:00
17 Runtime platform                                    arch=amd64 os=darwin pid=62475 revision=577f813d version=12.5.0
18 No URL provided, cache will not be downloaded from shared cache server. Instead a local version of cache will be extracted. 
19 Successfully extracted cache
22
$ bundle exec fastlane deploy_firebase
02:17
23 +-------------------------------------------+---------+---------------------------+
24 |                                  Used plugins                                   |
25 +-------------------------------------------+---------+---------------------------+
26 | Plugin                                    | Version | Action                    |
27 +-------------------------------------------+---------+---------------------------+
28 | fastlane-plugin-firebase_app_distribution | 0.1.4   | firebase_app_distribution |
29 +-------------------------------------------+---------+---------------------------+
30 [19:42:00]: ------------------------------
31 [19:42:00]: --- Step: default_platform ---
32 [19:42:00]: ------------------------------
33 [19:42:00]: Driving the lane 'ios deploy_firebase' 🚀
34 [19:42:00]: ----------------------------------------
35 [19:42:00]: --- Step: Verifying fastlane version ---
36 [19:42:00]: ----------------------------------------
37 [19:42:00]: Your fastlane version 2.134.0 matches the minimum requirement of 2.119.0  ✅
38 [19:42:00]: ------------------------------
39 [19:42:00]: --- Step: default_platform ---
40 [19:42:00]: ------------------------------
41 [19:42:00]: -------------------
42 [19:42:00]: --- Step: match ---
43 [19:42:00]: -------------------
44 [19:42:00]: Successfully loaded '/Users/pavelbondar/Documents/SP/JSONMusic/builds/y4DUmUxG/0/Ivizey/JSONMusic/fastlane/Matchfile' 📄
45 [19:42:00]: No values defined in './fastlane/Matchfile'
46 +----------------------------+-------------------------------------+
47 |                    Summary for match 2.134.0                     |
48 +----------------------------+-------------------------------------+
49 | git_url                    | git@gitlab.com:Ivizey/matchdata.git |
50 | app_identifier             | ["com.masters-academy.JSONMusic"]   |
51 | readonly                   | true                                |
52 | username                   | maxim.savisko@gmail.com             |
53 | storage_mode               | git                                 |
54 | type                       | development                         |
55 | generate_apple_certs       | true                                |
56 | skip_provisioning_profiles | false                               |
57 | git_branch                 | master                              |
58 | shallow_clone              | false                               |
59 | clone_branch_directly      | false                               |
60 | keychain_name              | login.keychain                      |
61 | force                      | false                               |
62 | force_for_new_devices      | false                               |
63 | skip_confirmation          | false                               |
64 | skip_docs                  | false                               |
65 | platform                   | ios                                 |
66 | verbose                    | false                               |
67 +----------------------------+-------------------------------------+
68 [19:42:00]: Cloning remote git repo...
69 [19:42:00]: If cloning the repo takes too long, you can use the `clone_branch_directly` option in match.
70 [19:42:03]: 🔓  Successfully decrypted certificates repo
71 [19:42:03]: Installing certificate...
72 [19:42:04]: Setting key partition list... (this can take a minute if there are a lot of keys installed)
73 [19:42:04]: 
74 [19:42:04]: Could not configure imported keychain item (certificate) to prevent UI permission popup when code signing
75 Check if you supplied the correct `keychain_password` for keychain: `/Users/pavelbondar/Library/Keychains/login.keychain-db`
76 security: SecKeychainItemSetAccessWithPassword: The user name or passphrase you entered is not correct.
77 [19:42:04]: 
78 [19:42:04]: Please look at the following docs to see how to set a keychain password:
79 [19:42:04]:  - https://docs.fastlane.tools/actions/sync_code_signing
80 [19:42:04]:  - https://docs.fastlane.tools/actions/get_certificates
81 +-------------------+--------------------------------------------------------+
82 |                           Installed Certificate                            |
83 +-------------------+--------------------------------------------------------+
84 | User ID           | 679WEBVNEE                                             |
85 | Common Name       | iPhone Developer: maxim.savisko@gmail.com (4Q928P3GJN) |
86 | Organisation Unit | 4KQC9K68AM                                             |
87 | Organisation      | Maksym Savisko                                         |
88 | Country           | US                                                     |
89 | Start Datetime    | 2019-10-10 12:32:53 UTC                                |
90 | End Datetime      | 2020-10-09 12:32:53 UTC                                |
91 +-------------------+--------------------------------------------------------+
92 [19:42:04]: Installing provisioning profile...
93 +---------------------+-------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
94 |                                                                                     Installed Provisioning Profile                                                                                     |
95 +---------------------+-------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
96 | Parameter           | Environment Variable                                        | Value                                                                                                              |
97 +---------------------+-------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
98 | App Identifier      |                                                             | com.masters-academy.JSONMusic                                                                                      |
99 | Type                |                                                             | development                                                                                                        |
100 | Platform            |                                                             | ios                                                                                                                |
101 | Profile UUID        | sigh_com.masters-academy.JSONMusic_development              | 26e10f63-eaef-4957-bf34-56a7b97482b3                                                                               |
102 | Profile Name        | sigh_com.masters-academy.JSONMusic_development_profile-name | MA JSONMusic Dev                                                                                                   |
103 | Profile Path        | sigh_com.masters-academy.JSONMusic_development_profile-path | /Users/pavelbondar/Library/MobileDevice/Provisioning Profiles/26e10f63-eaef-4957-bf34-56a7b97482b3.mobileprovision |
104 | Development Team ID | sigh_com.masters-academy.JSONMusic_development_team-id      | 4KQC9K68AM                                                                                                         |
105 +---------------------+-------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
106 [19:42:04]: All required keys, certificates and provisioning profiles are installed 🙌
107 [19:42:04]: Setting Provisioning Profile type to 'development'
108 [19:42:04]: -----------------------
109 [19:42:04]: --- Step: cocoapods ---
110 [19:42:04]: -----------------------
111 [19:42:04]: $ bundle exec pod install
112 [19:42:07]: ▸ Analyzing dependencies
113 [19:42:07]: ▸ Downloading dependencies
114 [19:42:07]: ▸ Generating Pods project
115 [19:42:07]: ▸ Integrating client project
116 [19:42:07]: ▸ Pod installation complete! There is 1 dependency from the Podfile and 11 total pods installed.
117 [19:42:07]: ▸ [!] Automatically assigning platform `iOS` with version `13.2` on target `JSONMusic` because no platform was specified. Please specify a platform for this target in your Podfile. See `https://guides.cocoapods.org/syntax/podfile.html#platform`.
118 [19:42:07]: -----------------
119 [19:42:07]: --- Step: gym ---
120 [19:42:07]: -----------------
121 [19:42:07]: Successfully loaded '/Users/pavelbondar/Documents/SP/JSONMusic/builds/y4DUmUxG/0/Ivizey/JSONMusic/fastlane/Gymfile' 📄
122 [19:42:07]: No values defined in './fastlane/Gymfile'
123 [19:42:07]: $ xcodebuild -showBuildSettings -workspace ./JSONMusic.xcworkspace -scheme JSONMusic
124 [19:42:10]: Command timed out after 3 seconds on try 1 of 4, trying again with a 6 second timeout...
125 [19:42:14]: Detected provisioning profile mapping: {:"com.masters-academy.JSONMusic"=>"MA JSONMusic Adhoc"}
126 +-------------------------------------------------------------------+----------------------------------------------------------------+
127 |                                                      Summary for gym 2.134.0                                                       |
128 +-------------------------------------------------------------------+----------------------------------------------------------------+
129 | scheme                                                            | JSONMusic                                                      |
130 | export_method                                                     | ad-hoc                                                         |
131 | export_options.provisioningProfiles.com.masters-academy.JSONMusic | MA JSONMusic Adhoc                                             |
132 | workspace                                                         | ./JSONMusic.xcworkspace                                        |
133 | destination                                                       | generic/platform=iOS                                           |
134 | output_name                                                       | JSONMusic                                                      |
135 | build_path                                                        | /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03 |
136 | clean                                                             | false                                                          |
137 | output_directory                                                  | .                                                              |
138 | silent                                                            | false                                                          |
139 | skip_package_ipa                                                  | false                                                          |
140 | result_bundle                                                     | false                                                          |
141 | buildlog_path                                                     | ~/Library/Logs/gym                                             |
142 | skip_profile_detection                                            | false                                                          |
143 | xcode_path                                                        | /Applications/Xcode.app                                        |
144 +-------------------------------------------------------------------+----------------------------------------------------------------+
145 [19:42:14]: $ set -o pipefail && xcodebuild -workspace ./JSONMusic.xcworkspace -scheme JSONMusic -destination 'generic/platform=iOS' -archivePath /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive archive | tee /Users/pavelbondar/Library/Logs/gym/JSONMusic-JSONMusic.log | xcpretty
146 [19:42:19]: ▸ Copying pb_common.h
147 [19:42:19]: ▸ Copying pb_encode.h
148 [19:42:19]: ▸ Copying pb_decode.h
149 [19:42:19]: ▸ Processing nanopb-Info.plist
150 [19:42:19]: ▸ Copying pb.h
151 [19:42:19]: ▸ Copying nanopb-umbrella.h
152 [19:42:19]: ▸ Processing GoogleUtilities-Info.plist
153 [19:42:19]: ▸ Copying GoogleUtilities-umbrella.h
154 [19:42:19]: ▸ Copying GULUserDefaults.h
155 [19:42:19]: ▸ Copying GULReachabilityMessageCode.h
156 [19:42:19]: ▸ Copying GULReachabilityChecker.h
157 [19:42:19]: ▸ Copying GULNetworkURLSession.h
158 [19:42:19]: ▸ Copying GULNetworkMessageCode.h
159 [19:42:19]: ▸ Copying GULNetworkLoggerProtocol.h
160 [19:42:19]: ▸ Copying GULNetworkConstants.h
161 [19:42:19]: ▸ Copying GULNetwork.h
162 [19:42:19]: ▸ Copying GULMutableDictionary.h
163 [19:42:19]: ▸ Copying GULNSData+zlib.h
164 [19:42:19]: ▸ Copying GULSwizzler.h
165 [19:42:19]: ▸ Copying GULOriginalIMPConvenienceMacros.h
166 [19:42:19]: ▸ Copying GULLoggerLevel.h
167 [19:42:19]: ▸ Copying GULLogger.h
168 [19:42:19]: ▸ Copying GULAppEnvironmentUtil.h
169 [19:42:19]: ▸ Copying GULLoggerCodes.h
170 [19:42:19]: ▸ Copying GULApplication.h
171 [19:42:19]: ▸ Copying GULAppDelegateSwizzler.h
172 [19:42:19]: ▸ Processing GoogleDataTransport-Info.plist
173 [19:42:19]: ▸ Copying GoogleDataTransport-umbrella.h
174 [19:42:19]: ▸ Copying GoogleDataTransport.h
175 [19:42:19]: ▸ Copying GDTCORUploader.h
176 [19:42:19]: ▸ Copying GDTCORUploadPackage.h
177 [19:42:19]: ▸ Copying GDTCORTransport.h
178 [19:42:19]: ▸ Copying GDTCORTargets.h
179 [19:42:19]: ▸ Copying GDTCORStoredEvent.h
180 [19:42:19]: ▸ Copying GDTCORRegistrar.h
181 [19:42:19]: ▸ Copying GDTCORPrioritizer.h
182 [19:42:19]: ▸ Copying GDTCORPlatform.h
183 [19:42:19]: ▸ Copying GDTCORLifecycle.h
184 [19:42:19]: ▸ Copying GDTCOREventTransformer.h
185 [19:42:19]: ▸ Copying GDTCOREventDataObject.h
186 [19:42:19]: ▸ Copying GDTCOREvent.h
187 [19:42:19]: ▸ Copying GDTCORDataFuture.h
188 [19:42:19]: ▸ Copying GDTCORConsoleLogger.h
189 [19:42:19]: ▸ Copying GDTCORClock.h
190 [19:42:19]: ▸ Copying GDTCORAssert.h
191 [19:42:19]: ▸ Copying GDTCORUploadPackage_Private.h
192 [19:42:19]: ▸ Copying GDTCORUploadCoordinator.h
193 [19:42:19]: ▸ Copying GDTCORTransport_Private.h
194 [19:42:19]: ▸ Copying GDTCORTransformer_Private.h
195 [19:42:19]: ▸ Copying GDTCORTransformer.h
196 [19:42:19]: ▸ Copying GDTCORStorage_Private.h
197 [19:42:19]: ▸ Copying GDTCORStorage.h
198 [19:42:19]: ▸ Copying GDTCORRegistrar_Private.h
199 [19:42:19]: ▸ Copying GDTCORReachability_Private.h
200 [19:42:19]: ▸ Copying GDTCORReachability.h
201 [19:42:19]: ▸ Copying GDTCOREvent_Private.h
202 [19:42:19]: ▸ Compiling pb_encode.c
203 [19:42:19]: ▸ Compiling pb_encode.c
204 [19:42:19]: ▸ Compiling pb_decode.c
205 [19:42:20]: ▸ Compiling pb_common.c
206 [19:42:20]: ▸ Compiling nanopb_vers.c
207 [19:42:20]: ▸ Compiling nanopb-dummy.m
208 [19:42:20]: ▸ Compiling pb_decode.c
209 [19:42:20]: ▸ Compiling pb_common.c
210 [19:42:20]: ▸ Compiling nanopb_vers.c
211 [19:42:20]: ▸ Compiling nanopb-dummy.m
212 [19:42:20]: ▸ Compiling GoogleUtilities_vers.c
213 [19:42:20]: ▸ Compiling GoogleUtilities-dummy.m
214 [19:42:20]: ▸ Linking nanopb
215 [19:42:20]: ▸ Compiling GULUserDefaults.m
216 [19:42:20]: ▸ Compiling GULSwizzler.m
217 [19:42:20]: ▸ Compiling GULReachabilityChecker.m
218 [19:42:20]: ▸ Linking nanopb
219 [19:42:20]: ▸ Compiling GULNetworkURLSession.m
220 [19:42:21]: ▸ Compiling GULNetworkConstants.m
221 [19:42:21]: ▸ Compiling GULNetwork.m
222 [19:42:21]: ▸ Compiling GULNSData+zlib.m
223 [19:42:21]: ▸ Generating 'nanopb.framework.dSYM'
224 [19:42:21]: ▸ Compiling GULMutableDictionary.m
225 [19:42:21]: ▸ Compiling GULLogger.m
226 [19:42:21]: ▸ Compiling GULAppEnvironmentUtil.m
227 [19:42:21]: ▸ Compiling GULAppDelegateSwizzler.m
228 [19:42:22]: ▸ Compiling GoogleUtilities_vers.c
229 [19:42:22]: ▸ Compiling GoogleUtilities-dummy.m
230 [19:42:22]: ▸ Compiling GULUserDefaults.m
231 [19:42:22]: ▸ Compiling GULSwizzler.m
232 [19:42:22]: ▸ Compiling GULReachabilityChecker.m
233 [19:42:22]: ▸ Compiling GULNetworkURLSession.m
234 [19:42:22]: ▸ Compiling GULNetworkConstants.m
235 [19:42:22]: ▸ Compiling GULNetwork.m
236 [19:42:22]: ▸ Compiling GULNSData+zlib.m
237 [19:42:22]: ▸ Linking GoogleUtilities
238 [19:42:22]: ▸ Compiling GULMutableDictionary.m
239 [19:42:22]: ▸ Compiling GULLogger.m
240 [19:42:22]: ▸ Compiling GULAppEnvironmentUtil.m
241 [19:42:22]: ▸ Compiling GULAppDelegateSwizzler.m
242 [19:42:23]: ▸ Compiling GoogleDataTransport_vers.c
243 [19:42:23]: ▸ Compiling GoogleDataTransport-dummy.m
244 [19:42:23]: ▸ Compiling GDTCORUploadPackage.m
245 [19:42:23]: ▸ Compiling GDTCORUploadCoordinator.m
246 [19:42:23]: ▸ Compiling GDTCORTransport.m
247 [19:42:23]: ▸ Compiling GDTCORTransformer.m
248 [19:42:23]: ▸ Compiling GDTCORStoredEvent.m
249 [19:42:23]: ▸ Compiling GDTCORStorage.m
250 [19:42:23]: ▸ Linking GoogleUtilities
251 [19:42:23]: ▸ Compiling GDTCORRegistrar.m
252 [19:42:23]: ▸ Compiling GDTCORReachability.m
253 [19:42:23]: ▸ Compiling GDTCORPlatform.m
254 [19:42:24]: ▸ Compiling GDTCORLifecycle.m
255 [19:42:24]: ▸ Generating 'GoogleUtilities.framework.dSYM'
256 [19:42:24]: ▸ Compiling GDTCOREvent.m
257 [19:42:24]: ▸ Compiling GDTCORDataFuture.m
258 [19:42:24]: ▸ Compiling GDTCORConsoleLogger.m
259 [19:42:24]: ▸ Compiling GDTCORClock.m
260 [19:42:24]: ▸ Compiling GDTCORAssert.m
261 [19:42:24]: ▸ Compiling GoogleDataTransport_vers.c
262 [19:42:24]: ▸ Compiling GoogleDataTransport-dummy.m
263 [19:42:24]: ▸ Compiling GDTCORUploadPackage.m
264 [19:42:24]: ▸ Compiling GDTCORUploadCoordinator.m
265 [19:42:24]: ▸ Compiling GDTCORTransport.m
266 [19:42:24]: ▸ Compiling GDTCORTransformer.m
267 [19:42:24]: ▸ Compiling GDTCORStoredEvent.m
268 [19:42:24]: ▸ Compiling GDTCORStorage.m
269 [19:42:25]: ▸ Compiling GDTCORRegistrar.m
270 [19:42:25]: ▸ Compiling GDTCORReachability.m
271 [19:42:25]: ▸ Compiling GDTCORPlatform.m
272 [19:42:25]: ▸ Compiling GDTCORLifecycle.m
273 [19:42:25]: ▸ Compiling GDTCOREvent.m
274 [19:42:25]: ▸ Compiling GDTCORDataFuture.m
275 [19:42:25]: ▸ Compiling GDTCORConsoleLogger.m
276 [19:42:25]: ▸ Compiling GDTCORClock.m
277 [19:42:25]: ▸ Compiling GDTCORAssert.m
278 [19:42:25]: ▸ Touching nanopb.framework (in target 'nanopb' from project 'Pods')
279 [19:42:25]: ▸ Touching GoogleUtilities.framework (in target 'GoogleUtilities' from project 'Pods')
280 [19:42:25]: ▸ Touching GoogleDataTransport.framework (in target 'GoogleDataTransport' from project 'Pods')
281 [19:42:25]: ▸ Copying GoogleDataTransportCCTSupport-umbrella.h
282 [19:42:25]: ▸ Copying cct.nanopb.h
283 [19:42:25]: ▸ Copying GDTFLLUploader.h
284 [19:42:25]: ▸ Processing GoogleDataTransportCCTSupport-Info.plist
285 [19:42:25]: ▸ Copying GDTFLLPrioritizer.h
286 [19:42:25]: ▸ Copying GDTCCTUploader.h
287 [19:42:25]: ▸ Copying GDTCCTPrioritizer.h
288 [19:42:25]: ▸ Copying GDTCCTNanopbHelpers.h
289 [19:42:25]: ▸ Compiling GoogleDataTransportCCTSupport-dummy.m
290 [19:42:25]: ▸ Compiling cct.nanopb.c
291 [19:42:25]: ▸ Compiling GoogleDataTransportCCTSupport_vers.c
292 [19:42:25]: ▸ Compiling GDTFLLUploader.m
293 [19:42:26]: ▸ Compiling GDTFLLPrioritizer.m
294 [19:42:26]: ▸ Compiling GDTCCTUploader.m
295 [19:42:26]: ▸ Compiling GDTCCTPrioritizer.m
296 [19:42:26]: ▸ Compiling GDTCCTNanopbHelpers.m
297 [19:42:26]: ▸ Compiling cct.nanopb.c
298 [19:42:26]: ▸ Compiling GoogleDataTransportCCTSupport_vers.c
299 [19:42:26]: ▸ Compiling GoogleDataTransportCCTSupport-dummy.m
300 [19:42:26]: ▸ Compiling GDTFLLUploader.m
301 [19:42:26]: ▸ Compiling GDTFLLPrioritizer.m
302 [19:42:26]: ▸ Compiling GDTCCTUploader.m
303 [19:42:27]: ▸ Compiling GDTCCTPrioritizer.m
304 [19:42:27]: ▸ Compiling GDTCCTNanopbHelpers.m
305 [19:42:27]: ▸ Touching GoogleDataTransportCCTSupport.framework (in target 'GoogleDataTransportCCTSupport' from project 'Pods')
306 [19:42:27]: ▸ Processing FirebaseCoreDiagnostics-Info.plist
307 [19:42:27]: ▸ Copying firebasecore.nanopb.h
308 [19:42:27]: ▸ Copying FirebaseCoreDiagnostics-umbrella.h
309 [19:42:27]: ▸ Copying FIRCoreDiagnosticsDateFileStorage.h
310 [19:42:27]: ▸ Compiling firebasecore.nanopb.c
311 [19:42:27]: ▸ Compiling FirebaseCoreDiagnostics-dummy.m
312 [19:42:27]: ▸ Compiling FIRCoreDiagnosticsDateFileStorage.m
313 [19:42:27]: ▸ Compiling FIRCoreDiagnostics.m
314 [19:42:27]: ▸ Compiling FirebaseCoreDiagnostics_vers.c
315 [19:42:27]: ▸ Compiling firebasecore.nanopb.c
316 [19:42:27]: ▸ Compiling FirebaseCoreDiagnostics_vers.c
317 [19:42:27]: ▸ Compiling FirebaseCoreDiagnostics-dummy.m
318 [19:42:27]: ▸ Compiling FIRCoreDiagnosticsDateFileStorage.m
319 [19:42:27]: ▸ Compiling FIRCoreDiagnostics.m
320 [19:42:28]: ▸ Touching FirebaseCoreDiagnostics.framework (in target 'FirebaseCoreDiagnostics' from project 'Pods')
321 [19:42:28]: ▸ Copying FirebaseCore-umbrella.h
322 [19:42:28]: ▸ Copying FirebaseCore.h
323 [19:42:28]: ▸ Copying FIROptions.h
324 [19:42:28]: ▸ Processing FirebaseCore-Info.plist
325 [19:42:28]: ▸ Copying FIRLoggerLevel.h
326 [19:42:28]: ▸ Copying FIRConfiguration.h
327 [19:42:28]: ▸ Copying FIRApp.h
328 [19:42:28]: ▸ Copying FIRVersion.h
329 [19:42:28]: ▸ Copying FIROptionsInternal.h
330 [19:42:28]: ▸ Copying FIRLogger.h
331 [19:42:28]: ▸ Copying FIRLibrary.h
332 [19:42:28]: ▸ Copying FIRErrors.h
333 [19:42:28]: ▸ Copying FIRErrorCode.h
334 [19:42:28]: ▸ Copying FIRDiagnosticsData.h
335 [19:42:28]: ▸ Copying FIRDependency.h
336 [19:42:28]: ▸ Copying FIRCoreDiagnosticsConnector.h
337 [19:42:28]: ▸ Copying FIRConfigurationInternal.h
338 [19:42:28]: ▸ Copying FIRComponentType.h
339 [19:42:28]: ▸ Copying FIRComponentContainerInternal.h
340 [19:42:28]: ▸ Copying FIRComponentContainer.h
341 [19:42:28]: ▸ Copying FIRComponent.h
342 [19:42:28]: ▸ Copying FIRBundleUtil.h
343 [19:42:28]: ▸ Copying FIRAppInternal.h
344 [19:42:28]: ▸ Copying FIRAppAssociationRegistration.h
345 [19:42:28]: ▸ Copying FIRAnalyticsConfiguration.h
346 [19:42:28]: ▸ Compiling FirebaseCore-dummy.m
347 [19:42:28]: ▸ Compiling FIRVersion.m
348 [19:42:28]: ▸ Compiling FirebaseCore_vers.c
349 [19:42:28]: ▸ Compiling FIROptions.m
350 [19:42:28]: ▸ Compiling FIRLogger.m
351 [19:42:28]: ▸ Compiling FIRErrors.m
352 [19:42:28]: ▸ Compiling FIRDiagnosticsData.m
353 [19:42:28]: ▸ Compiling FIRDependency.m
354 [19:42:28]: ▸ Compiling FIRCoreDiagnosticsConnector.m
355 [19:42:28]: ▸ Compiling FIRConfiguration.m
356 [19:42:28]: ▸ Compiling FIRComponentType.m
357 [19:42:28]: ▸ Compiling FIRComponentContainer.m
358 [19:42:28]: ▸ Compiling FIRComponent.m
359 [19:42:28]: ▸ Compiling FIRBundleUtil.m
360 [19:42:28]: ▸ Compiling FIRAppAssociationRegistration.m
361 [19:42:28]: ▸ Compiling FIRApp.m
362 [19:42:29]: ▸ Compiling FIRAnalyticsConfiguration.m
363 [19:42:29]: ▸ Compiling FirebaseCore_vers.c
364 [19:42:29]: ▸ Compiling FirebaseCore-dummy.m
365 [19:42:29]: ▸ Compiling FIRVersion.m
366 [19:42:29]: ▸ Compiling FIROptions.m
367 [19:42:29]: ▸ Compiling FIRLogger.m
368 [19:42:29]: ▸ Compiling FIRErrors.m
369 [19:42:29]: ▸ Compiling FIRDiagnosticsData.m
370 [19:42:29]: ▸ Compiling FIRDependency.m
371 [19:42:29]: ▸ Compiling FIRCoreDiagnosticsConnector.m
372 [19:42:29]: ▸ Compiling FIRConfiguration.m
373 [19:42:29]: ▸ Compiling FIRComponentType.m
374 [19:42:29]: ▸ Compiling FIRComponentContainer.m
375 [19:42:29]: ▸ Compiling FIRComponent.m
376 [19:42:29]: ▸ Compiling FIRBundleUtil.m
377 [19:42:29]: ▸ Compiling FIRAppAssociationRegistration.m
378 [19:42:29]: ▸ Compiling FIRApp.m
379 [19:42:30]: ▸ Compiling FIRAnalyticsConfiguration.m
380 [19:42:30]: ▸ Touching FirebaseCore.framework (in target 'FirebaseCore' from project 'Pods')
381 [19:42:30]: ▸ Copying FirebaseInstanceID-umbrella.h
382 [19:42:30]: ▸ Copying FirebaseInstanceID.h
383 [19:42:30]: ▸ Copying FIRInstanceID.h
384 [19:42:30]: ▸ Processing FirebaseInstanceID-Info.plist
385 [19:42:30]: ▸ Copying FIRInstanceID_Private.h
386 [19:42:30]: ▸ Copying FIRInstanceIDCheckinPreferences.h
387 [19:42:30]: ▸ Copying FIRInstanceID+Private.h
388 [19:42:30]: ▸ Compiling NSError+FIRInstanceID.m
389 [19:42:30]: ▸ Compiling FirebaseInstanceID-dummy.m
390 [19:42:30]: ▸ Compiling FIRInstanceIDVersionUtilities.m
391 [19:42:30]: ▸ Compiling FirebaseInstanceID_vers.c
392 [19:42:30]: ▸ Compiling FIRInstanceIDUtilities.m
393 [19:42:30]: ▸ Compiling FIRInstanceIDURLQueryItem.m
394 [19:42:30]: ▸ Compiling FIRInstanceIDTokenStore.m
395 [19:42:30]: ▸ Compiling FIRInstanceIDTokenOperation.m
396 [19:42:30]: ▸ Compiling FIRInstanceIDTokenManager.m
397 [19:42:30]: ▸ Compiling FIRInstanceIDTokenInfo.m
398 [19:42:30]: ▸ Compiling FIRInstanceIDTokenFetchOperation.m
399 [19:42:30]: ▸ Compiling FIRInstanceIDTokenDeleteOperation.m
400 [19:42:30]: ▸ Compiling FIRInstanceIDStringEncoding.m
401 [19:42:30]: ▸ Compiling FIRInstanceIDStore.m
402 [19:42:31]: ▸ Compiling FIRInstanceIDLogger.m
403 [19:42:31]: ▸ Compiling FIRInstanceIDKeychain.m
404 [19:42:31]: ▸ Compiling FIRInstanceIDKeyPairUtilities.m
405 [19:42:31]: ▸ Compiling FIRInstanceIDKeyPairStore.m
406 [19:42:31]: ▸ Compiling FIRInstanceIDKeyPair.m
407 [19:42:31]: ▸ Compiling FIRInstanceIDConstants.m
408 [19:42:31]: ▸ Compiling FIRInstanceIDCombinedHandler.m
409 [19:42:31]: ▸ Compiling FIRInstanceIDCheckinStore.m
410 [19:42:31]: ▸ Compiling FIRInstanceIDCheckinService.m
411 [19:42:31]: ▸ Compiling FIRInstanceIDCheckinPreferences.m
412 [19:42:31]: ▸ Compiling FIRInstanceIDCheckinPreferences+Internal.m
413 [19:42:31]: ▸ Compiling FIRInstanceIDBackupExcludedPlist.m
414 [19:42:31]: ▸ Compiling FIRInstanceIDAuthService.m
415 [19:42:31]: ▸ Compiling FIRInstanceIDAuthKeyChain.m
416 [19:42:31]: ▸ Compiling FIRInstanceIDAPNSInfo.m
417 [19:42:31]: ▸ Compiling FIRInstanceID.m
418 [19:42:32]: ▸ Compiling FIRInstanceID+Private.m
419 [19:42:32]: ▸ Compiling NSError+FIRInstanceID.m
420 [19:42:32]: ▸ Compiling FirebaseInstanceID_vers.c
421 [19:42:32]: ▸ Compiling FirebaseInstanceID-dummy.m
422 [19:42:32]: ▸ Compiling FIRInstanceIDVersionUtilities.m
423 [19:42:32]: ▸ Compiling FIRInstanceIDUtilities.m
424 [19:42:32]: ▸ Compiling FIRInstanceIDURLQueryItem.m
425 [19:42:32]: ▸ Compiling FIRInstanceIDTokenStore.m
426 [19:42:32]: ▸ Compiling FIRInstanceIDTokenOperation.m
427 [19:42:32]: ▸ Compiling FIRInstanceIDTokenManager.m
428 [19:42:32]: ▸ Compiling FIRInstanceIDTokenInfo.m
429 [19:42:32]: ▸ Compiling FIRInstanceIDTokenFetchOperation.m
430 [19:42:33]: ▸ Compiling FIRInstanceIDTokenDeleteOperation.m
431 [19:42:33]: ▸ Compiling FIRInstanceIDStringEncoding.m
432 [19:42:33]: ▸ Compiling FIRInstanceIDStore.m
433 [19:42:33]: ▸ Compiling FIRInstanceIDLogger.m
434 [19:42:33]: ▸ Compiling FIRInstanceIDKeychain.m
435 [19:42:33]: ▸ Compiling FIRInstanceIDKeyPairUtilities.m
436 [19:42:33]: ▸ Compiling FIRInstanceIDKeyPairStore.m
437 [19:42:33]: ▸ Compiling FIRInstanceIDKeyPair.m
438 [19:42:33]: ▸ Compiling FIRInstanceIDConstants.m
439 [19:42:33]: ▸ Compiling FIRInstanceIDCombinedHandler.m
440 [19:42:33]: ▸ Compiling FIRInstanceIDCheckinStore.m
441 [19:42:33]: ▸ Compiling FIRInstanceIDCheckinService.m
442 [19:42:33]: ▸ Compiling FIRInstanceIDCheckinPreferences.m
443 [19:42:33]: ▸ Compiling FIRInstanceIDCheckinPreferences+Internal.m
444 [19:42:33]: ▸ Compiling FIRInstanceIDBackupExcludedPlist.m
445 [19:42:33]: ▸ Compiling FIRInstanceIDAuthService.m
446 [19:42:34]: ▸ Compiling FIRInstanceIDAuthKeyChain.m
447 [19:42:34]: ▸ Compiling FIRInstanceIDAPNSInfo.m
448 [19:42:34]: ▸ Compiling FIRInstanceID.m
449 [19:42:34]: ▸ Compiling FIRInstanceID+Private.m
450 [19:42:34]: ▸ Touching FirebaseInstanceID.framework (in target 'FirebaseInstanceID' from project 'Pods')
451 [19:42:34]: ▸ Processing Pods-JSONMusic-Info.plist
452 [19:42:34]: ▸ Copying Pods-JSONMusic-umbrella.h
453 [19:42:34]: ▸ Compiling Pods-JSONMusic-dummy.m
454 [19:42:34]: ▸ Compiling Pods_JSONMusic_vers.c
455 [19:42:34]: ▸ Touching Pods_JSONMusic.framework (in target 'Pods-JSONMusic' from project 'Pods')
456 [19:42:34]: ▸ Running script '[CP] Check Pods Manifest.lock'
457 [19:42:36]: ▸ Linking JSONMusic
458 [19:42:38]: ▸ Copying GoogleService-Info.plist
459 [19:42:40]: ▸ Compiling Main.storyboard
460 [19:42:41]: ▸ Compiling LaunchScreen.storyboard
461 [19:42:41]: ▸ Processing Info.plist
462 [19:42:41]: ▸ Generating 'JSONMusic.app.dSYM'
463 [19:42:42]: ▸ Running script '[CP] Embed Pods Frameworks'
464 [19:43:07]: ▸ Touching JSONMusic.app (in target 'JSONMusic' from project 'JSONMusic')
465 [19:43:07]: ▸ Archive Succeeded
466 [19:43:08]: Generated plist file with the following values:
467 [19:43:08]: ▸ -----------------------------------------
468 [19:43:08]: ▸ {
469 [19:43:08]: ▸   "provisioningProfiles": {
470 [19:43:08]: ▸     "com.masters-academy.JSONMusic": "MA JSONMusic Adhoc"
471 [19:43:08]: ▸   },
472 [19:43:08]: ▸   "method": "ad-hoc",
473 [19:43:08]: ▸   "signingStyle": "manual"
474 [19:43:08]: ▸ }
475 [19:43:08]: ▸ -----------------------------------------
476 [19:43:08]: $ /usr/bin/xcrun /Users/pavelbondar/.rbenv/versions/2.6.2/lib/ruby/gems/2.6.0/gems/fastlane-2.134.0/gym/lib/assets/wrap_xcodebuild/xcbuild-safe.sh -exportArchive -exportOptionsPlist '/var/folders/zl/4m3j3sps0nd_x3ggby264hb00000gn/T/gym_config20191203-62552-1ievwyz.plist' -archivePath /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive -exportPath '/var/folders/zl/4m3j3sps0nd_x3ggby264hb00000gn/T/gym_output20191203-62552-1k99v04' 
477 [19:43:55]: Mapping dSYM(s) using generated BCSymbolMaps
478 [19:43:55]: $ dsymutil --symbol-map /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive/BCSymbolMaps/7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.bcsymbolmap /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive/dSYMs/7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.dSYM
479 warning: /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic 2019-12-03 19.42.14.xcarchive/BCSymbolMaps/7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.bcsymbolmap: No such file or directory: not unobfuscating.
480 [19:43:55]: $ dsymutil --symbol-map /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive/BCSymbolMaps/B0DC9674-02BF-3B78-9EED-09CC5A446DA9.bcsymbolmap /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive/dSYMs/GoogleUtilities.framework.dSYM
481 [19:43:55]: $ dsymutil --symbol-map /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive/BCSymbolMaps/34C15ED6-9BFF-373B-B186-58BE0F39B708.bcsymbolmap /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive/dSYMs/GoogleUtilities.framework.dSYM
482 [19:43:55]: $ dsymutil --symbol-map /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive/BCSymbolMaps/A3BAB611-857B-3755-B297-C5E6FED43C45.bcsymbolmap /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive/dSYMs/nanopb.framework.dSYM
483 [19:43:55]: $ dsymutil --symbol-map /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive/BCSymbolMaps/31F236A1-4F9D-34E5-B792-B34D5E617975.bcsymbolmap /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive/dSYMs/nanopb.framework.dSYM
484 [19:43:55]: $ dsymutil --symbol-map /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive/BCSymbolMaps/96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.bcsymbolmap /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive/dSYMs/96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.dSYM
485 warning: /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic 2019-12-03 19.42.14.xcarchive/BCSymbolMaps/96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.bcsymbolmap: No such file or directory: not unobfuscating.
486 [19:43:55]: $ dsymutil --symbol-map /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive/BCSymbolMaps/46D5665F-6798-3B88-88F0-CADD41BA171F.bcsymbolmap /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive/dSYMs/JSONMusic.app.dSYM
487 [19:43:56]: $ dsymutil --symbol-map /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive/BCSymbolMaps/807661D8-6654-3930-8144-692D24534CF9.bcsymbolmap /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic\ 2019-12-03\ 19.42.14.xcarchive/dSYMs/807661D8-6654-3930-8144-692D24534CF9.dSYM
488 warning: /Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic 2019-12-03 19.42.14.xcarchive/BCSymbolMaps/807661D8-6654-3930-8144-692D24534CF9.bcsymbolmap: No such file or directory: not unobfuscating.
489 [19:43:56]: Compressing 6 dSYM(s)
490 [19:43:56]: $ cd '/Users/pavelbondar/Library/Developer/Xcode/Archives/2019-12-03/JSONMusic 2019-12-03 19.42.14.xcarchive/dSYMs' && zip -r '/Users/pavelbondar/Documents/SP/JSONMusic/builds/y4DUmUxG/0/Ivizey/JSONMusic/JSONMusic.app.dSYM.zip' *.dSYM
491 [19:43:56]: ▸ updating: JSONMusic.app.dSYM/ (stored 0%)
492 [19:43:56]: ▸ updating: JSONMusic.app.dSYM/Contents/ (stored 0%)
493 [19:43:56]: ▸ updating: JSONMusic.app.dSYM/Contents/Resources/ (stored 0%)
494 [19:43:56]: ▸ updating: JSONMusic.app.dSYM/Contents/Resources/DWARF/ (stored 0%)
495 [19:43:56]: ▸ updating: JSONMusic.app.dSYM/Contents/Resources/DWARF/JSONMusic (deflated 62%)
496 [19:43:56]: ▸ updating: JSONMusic.app.dSYM/Contents/Info.plist (deflated 52%)
497 [19:43:56]: ▸ updating: 7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.dSYM/ (stored 0%)
498 [19:43:56]: ▸ updating: 7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.dSYM/Contents/ (stored 0%)
499 [19:43:56]: ▸ updating: 7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.dSYM/Contents/Resources/ (stored 0%)
500 [19:43:56]: ▸ updating: 7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.dSYM/Contents/Resources/DWARF/ (stored 0%)
501 [19:43:56]: ▸ updating: 7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.dSYM/Contents/Resources/DWARF/GoogleUtilities (deflated 64%)
502 [19:43:56]: ▸ updating: 7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.dSYM/Contents/Resources/7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.plist (deflated 21%)
503 [19:43:56]: ▸ updating: 7A830CBC-E6DF-3A05-8ED4-C4BC54F161A3.dSYM/Contents/Info.plist (deflated 52%)
504 [19:43:56]: ▸ updating: 807661D8-6654-3930-8144-692D24534CF9.dSYM/ (stored 0%)
505 [19:43:56]: ▸ updating: 807661D8-6654-3930-8144-692D24534CF9.dSYM/Contents/ (stored 0%)
506 [19:43:56]: ▸ updating: 807661D8-6654-3930-8144-692D24534CF9.dSYM/Contents/Resources/ (stored 0%)
507 [19:43:56]: ▸ updating: 807661D8-6654-3930-8144-692D24534CF9.dSYM/Contents/Resources/807661D8-6654-3930-8144-692D24534CF9.plist (deflated 21%)
508 [19:43:56]: ▸ updating: 807661D8-6654-3930-8144-692D24534CF9.dSYM/Contents/Resources/DWARF/ (stored 0%)
509 [19:43:56]: ▸ updating: 807661D8-6654-3930-8144-692D24534CF9.dSYM/Contents/Resources/DWARF/JSONMusic (deflated 70%)
510 [19:43:56]: ▸ updating: 807661D8-6654-3930-8144-692D24534CF9.dSYM/Contents/Info.plist (deflated 52%)
511 [19:43:56]: ▸ updating: 96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.dSYM/ (stored 0%)
512 [19:43:56]: ▸ updating: 96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.dSYM/Contents/ (stored 0%)
513 [19:43:56]: ▸ updating: 96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.dSYM/Contents/Resources/ (stored 0%)
514 [19:43:56]: ▸ updating: 96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.dSYM/Contents/Resources/DWARF/ (stored 0%)
515 [19:43:56]: ▸ updating: 96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.dSYM/Contents/Resources/DWARF/nanopb (deflated 65%)
516 [19:43:56]: ▸ updating: 96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.dSYM/Contents/Resources/96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.plist (deflated 21%)
517 [19:43:56]: ▸ updating: 96CDACD3-84CF-3F3B-9373-EC4EDAC9B960.dSYM/Contents/Info.plist (deflated 52%)
518 [19:43:56]: ▸ updating: GoogleUtilities.framework.dSYM/ (stored 0%)
519 [19:43:56]: ▸ updating: GoogleUtilities.framework.dSYM/Contents/ (stored 0%)
520 [19:43:56]: ▸ updating: GoogleUtilities.framework.dSYM/Contents/Resources/ (stored 0%)
521 [19:43:56]: ▸ updating: GoogleUtilities.framework.dSYM/Contents/Resources/DWARF/ (stored 0%)
522 [19:43:56]: ▸ updating: GoogleUtilities.framework.dSYM/Contents/Resources/DWARF/GoogleUtilities (deflated 63%)
523 [19:43:56]: ▸ updating: GoogleUtilities.framework.dSYM/Contents/Info.plist (deflated 52%)
524 [19:43:56]: ▸ updating: nanopb.framework.dSYM/ (stored 0%)
525 [19:43:56]: ▸ updating: nanopb.framework.dSYM/Contents/ (stored 0%)
526 [19:43:56]: ▸ updating: nanopb.framework.dSYM/Contents/Resources/ (stored 0%)
527 [19:43:56]: ▸ updating: nanopb.framework.dSYM/Contents/Resources/DWARF/ (stored 0%)
528 [19:43:56]: ▸ updating: nanopb.framework.dSYM/Contents/Resources/DWARF/nanopb (deflated 60%)
529 [19:43:56]: ▸ updating: nanopb.framework.dSYM/Contents/Info.plist (deflated 52%)
530 [19:43:56]: Successfully exported and compressed dSYM file
531 [19:43:56]: Successfully exported and signed the ipa file:
532 [19:43:56]: /Users/pavelbondar/Documents/SP/JSONMusic/builds/y4DUmUxG/0/Ivizey/JSONMusic/JSONMusic.ipa
533 [19:43:56]: ---------------------------------------
534 [19:43:56]: --- Step: firebase_app_distribution ---
535 [19:43:56]: ---------------------------------------
536 [19:44:00]: ▸ irebase CLIi  getting app details...
537 [19:44:03]: ▸ i  uploading distribution...
538 [19:44:07]: ▸ ✔  uploaded distribution successfully
539 [19:44:07]: ▸ i  adding release notes...
540 [19:44:09]: ▸ ✔  added release notes successfully
541 [19:44:09]: ▸ i  adding testers/groups...
542 [19:44:10]: ▸ ✔  added testers/groups successfully
543 +------+----------------------------+-------------+
544 |                fastlane summary                 |
545 +------+----------------------------+-------------+
546 | Step | Action                     | Time (in s) |
547 +------+----------------------------+-------------+
548 | 1    | default_platform           | 0           |
549 | 2    | Verifying fastlane version | 0           |
550 | 3    | default_platform           | 0           |
551 | 4    | match                      | 4           |
552 | 5    | cocoapods                  | 2           |
553 | 6    | gym                        | 109         |
554 | 7    | firebase_app_distribution  | 14          |
555 +------+----------------------------+-------------+
556 [19:44:10]: fastlane.tools finished successfully 🎉
557 #######################################################################
558 # fastlane 2.137.0 is available. You are on 2.134.0.
559 # You should use the latest version.
560 # Please update using `bundle update fastlane`.
561 #######################################################################
562 2.137.0 Improvements
563 * [supply] raise error if rollout is used as argument for the track or track_promote_to options (#15692) via Josh Holtz
564 * [supply] upload meta in same commit to fix issue with validate_only (#15691) via Josh Holtz
565 * [action] gradle: Add support for mapping.txt file (#15597) via NicoEkino
566 * [screengrab] address issue #15674 - make sure aapt is available before trying to clean status bar (#15684) via Hiroto Nakamura
567 * [screengrab] Remove unused clean status bar options (#15679) via Rick Clephas
568 * [action] added custom option to testfairy upload (#15670) via Vijay Sharma
569 * [supply] don't apply rollout when value 1 of when uploading and don't call promote or rollout methods when uploading (#15668) via Josh Holtz
570 * [ensure_bundle_exec] Fix wording in action error message and d… (#15596) via Iulian Onofrei
571 * [fastlane] fix typo in code comment (#15604) via Iulian Onofrei
572 * [action] fix formatting in ruby_version action's details (#15605) via Iulian Onofrei
573 2.136.0 Screengrab improvements and supply fixes
574 * [supply] use version code for changelog again (regression introducted in 2.135.0) (#15665) via Josh Holtz
575 * [Fastlane.swift] default tool hash to [:] not {} and test swift generation on circle (#15654) via Josh Holtz
576 * [screengrab] update bintray plugin to 0.9.1 so releases work again (#15642) via Josh Holtz
577 * [supply] fixes some issue with version codes not being found and allows promote with rollout now (#15647) via Josh Holtz
578 * [screengrab] let users set clean status bar (#15284) via Rick Clephas
579 * [screengrab] add `adb_host` option (#14948) via Cedric Gatay
580 * [screengrab] add config to allow disabling timestamp suffix to filename  (#14781) via Hiroto-N
581 * [screengrab] updated apk paths in Screengrabfile (#15077) via Rishabh Tayal
582 * [screengrab] added new internal path for screenshots and run adb root to prevent access denied (#15635) via Josh Holtz
583 * [screengrab] update Screengrab to AndroidX (#15217) via Colin Lee
584 2.135.2 Hotfix for uploading a draft using supply
585 * [supply] fix allowing uploading of a draft release on a track with a completed release (#15627) via Josh Holtz
586 To see all new releases, open https://github.com/fastlane/fastlane/releases
587 Please update using `bundle update fastlane`
590
Creating cache 100379690-2...
00:01
591 Runtime platform                                    arch=amd64 os=darwin pid=63853 revision=577f813d version=12.5.0
592 Pods/: found 402 matching files                    
593 No URL provided, cache will be not uploaded to shared cache server. Cache will be stored only locally. 
594 Created cache
597 Job succeeded