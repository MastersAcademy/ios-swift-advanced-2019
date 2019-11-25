+----------------------------+---------+---------------------------+
|                           [32mUsed plugins[0m                           |
+----------------------------+---------+---------------------------+
| Plugin                     | Version | Action                    |
+----------------------------+---------+---------------------------+
| fastlane-plugin-firebase_  | 0.1.4   | firebase_app_distribution |
| app_distribution           |         |                           |
+----------------------------+---------+---------------------------+

[13:35:14]: [32m------------------------------[0m
[13:35:14]: [32m--- Step: default_platform ---[0m
[13:35:14]: [32m------------------------------[0m
[13:35:14]: [32mDriving the lane 'ios deploy_firebase' 🚀[0m
[13:35:14]: [32m----------------------------------------[0m
[13:35:14]: [32m--- Step: Verifying fastlane version ---[0m
[13:35:14]: [32m----------------------------------------[0m
[13:35:14]: Your fastlane version 2.134.0 matches the minimum requirement of 2.119.0  ✅
[13:35:14]: [32m------------------------------[0m
[13:35:14]: [32m--- Step: default_platform ---[0m
[13:35:14]: [32m------------------------------[0m
[13:35:14]: [32m-------------------[0m
[13:35:14]: [32m--- Step: match ---[0m
[13:35:14]: [32m-------------------[0m
INFO [2019-11-25 13:35:15.12]: [32mSuccessfully loaded '/Users/astrib/wordmix/fastlane/Matchfile' 📄[0m

+----------------+---------------------------------------+
|      Detected Values from './fastlane/Matchfile'       |
+----------------+---------------------------------------+
| git_url        | git@gitlab.com:ihawk/certificates.git |
| storage_mode   | git                                   |
| type           | development                           |
| app_identifier | ["com.masters-academy.wordmix"]       |
| username       | maxim.savisko@gmail.com               |
+----------------+---------------------------------------+


+----------------------------+---------------------------------------+
|                     [32mSummary for match 2.134.0[0m                      |
+----------------------------+---------------------------------------+
| type                       | adhoc                                 |
| readonly                   | true                                  |
| clone_branch_directly      | true                                  |
| verbose                    | true                                  |
| generate_apple_certs       | true                                  |
| skip_provisioning_profiles | false                                 |
| app_identifier             | ["com.masters-academy.wordmix"]       |
| username                   | maxim.savisko@gmail.com               |
| storage_mode               | git                                   |
| git_url                    | git@gitlab.com:ihawk/certificates.git |
| git_branch                 | master                                |
| shallow_clone              | false                                 |
| keychain_name              | login.keychain                        |
| force                      | false                                 |
| force_for_new_devices      | false                                 |
| skip_confirmation          | false                                 |
| skip_docs                  | false                                 |
| platform                   | ios                                   |
+----------------------------+---------------------------------------+

INFO [2019-11-25 13:35:15.12]: Cloning remote git repo...
INFO [2019-11-25 13:35:15.12]: [36m$ git clone git@gitlab.com:ihawk/certificates.git /var/folders/8v/h5plyjp53wl6xs6s8w2vwwd40000gn/T/d20191125-35023-j3ry2n -b master --single-branch[0m
INFO [2019-11-25 13:35:15.13]: ▸ [35mCloning into '/var/folders/8v/h5plyjp53wl6xs6s8w2vwwd40000gn/T/d20191125-35023-j3ry2n'...[0m
INFO [2019-11-25 13:35:19.08]: ▸ [35mremote: Enumerating objects: 77, done.[K[0m
INFO [2019-11-25 13:35:19.08]: ▸ [35mremote: Counting objects: 100% (77/77), done.[K[0m
INFO [2019-11-25 13:35:19.39]: ▸ [35mremote: Compressing objects: 100% (74/74), done.[K[0m
INFO [2019-11-25 13:35:20.31]: ▸ [35mremote: Total 77 (delta 6), reused 0 (delta 0)[K[0m
INFO [2019-11-25 13:35:20.31]: ▸ [35mReceiving objects: 100% (77/77), 143.59 KiB | 155.00 KiB/s, done.[0m
INFO [2019-11-25 13:35:20.31]: ▸ [35mResolving deltas: 100% (6/6), done.[0m
INFO [2019-11-25 13:35:20.64]: [32m🔓  Decrypted '5P6KTNWWMY.cer'[0m
INFO [2019-11-25 13:35:20.64]: [32m🔓  Decrypted '5P6KTNWWMY.p12'[0m
INFO [2019-11-25 13:35:20.64]: [32m🔓  Decrypted '7L2Z4FAXT5.p12'[0m
INFO [2019-11-25 13:35:20.64]: [32m🔓  Decrypted '7L2Z4FAXT5.cer'[0m
INFO [2019-11-25 13:35:20.64]: [32m🔓  Decrypted 'appstore.com.masters-academy.wordmix.mobileprovision'[0m
INFO [2019-11-25 13:35:20.64]: [32m🔓  Decrypted 'development.com.masters-academy.wordmix.mobileprovision'[0m
INFO [2019-11-25 13:35:20.64]: [32m🔓  Decrypted 'AdHoc_com.masters-academy.wordmix.mobileprovision'[0m
INFO [2019-11-25 13:35:20.64]: [32m🔓  Successfully decrypted certificates repo[0m
DEBUG [2019-11-25 13:35:20.64]: Your certificate '7L2Z4FAXT5.cer' is valid
INFO [2019-11-25 13:35:20.64]: Installing certificate...
INFO [2019-11-25 13:35:20.64]: [36m$ security list-keychains -d user[0m
INFO [2019-11-25 13:35:20.65]: ▸ [35m    "/Users/astrib/Library/Keychains/login.keychain-db"[0m
INFO [2019-11-25 13:35:20.65]: [36m$ security find-certificate -c 'Apple Worldwide Developer Relations Certification Authority' /Users/astrib/Library/Keychains/login.keychain-db[0m
INFO [2019-11-25 13:35:20.67]: ▸ [35mkeychain: "/Users/astrib/Library/Keychains/login.keychain-db"[0m
INFO [2019-11-25 13:35:20.67]: ▸ [35mversion: 512[0m
INFO [2019-11-25 13:35:20.67]: ▸ [35mclass: 0x80001000 [0m
INFO [2019-11-25 13:35:20.67]: ▸ [35mattributes:[0m
INFO [2019-11-25 13:35:20.67]: ▸ [35m    "alis"<blob>="Apple Worldwide Developer Relations Certification Authority"[0m
INFO [2019-11-25 13:35:20.67]: ▸ [35m    "cenc"<uint32>=0x00000003 [0m
INFO [2019-11-25 13:35:20.67]: ▸ [35m    "ctyp"<uint32>=0x00000001 [0m
INFO [2019-11-25 13:35:20.67]: ▸ [35m    "hpky"<blob>=0x88271709A9B618608BECEBBAF64759C55254A3B7  "\210'\027\011\251\266\030`\213\354\353\272\366GY\305RT\243\267"[0m
INFO [2019-11-25 13:35:20.67]: ▸ [35m    "issu"<blob>=0x3062310B300906035504061302555331133011060355040A130A4150504C4520494E432E31263024060355040B131D4150504C452043455254494649434154494F4E20415554484F52495459311630140603550403130D4150504C4520524F4F54204341  "0b1\0130\011\006\003U\004\006\023\002US1\0230\021\006\003U\004\012\023\012APPLE INC.1&0$\006\003U\004\013\023\035APPLE CERTIFICATION AUTHORITY1\0260\024\006\003U\004\003\023\015APPLE ROOT CA"[0m
INFO [2019-11-25 13:35:20.67]: ▸ [35m    "labl"<blob>="Apple Worldwide Developer Relations Certification Authority"[0m
INFO [2019-11-25 13:35:20.67]: ▸ [35m    "skid"<blob>=0x88271709A9B618608BECEBBAF64759C55254A3B7  "\210'\027\011\251\266\030`\213\354\353\272\366GY\305RT\243\267"[0m
INFO [2019-11-25 13:35:20.67]: ▸ [35m    "snbr"<blob>=0x01DEBCC4396DA010  "\001\336\274\3049m\240\020"[0m
INFO [2019-11-25 13:35:20.67]: ▸ [35m    "subj"<blob>=0x308196310B300906035504061302555331133011060355040A0C0A4170706C6520496E632E312C302A060355040B0C234170706C6520576F726C647769646520446576656C6F7065722052656C6174696F6E733144304206035504030C3B4170706C6520576F726C647769646520446576656C6F7065722052656C6174696F6E732043657274696669636174696F6E20417574686F72697479  "0\201\2261\0130\011\006\003U\004\006\023\002US1\0230\021\006\003U\004\012\014\012Apple Inc.1,0*\006\003U\004\013\014#Apple Worldwide Developer Relations1D0B\006\003U\004\003\014;Apple Worldwide Developer Relations Certification Authority"[0m
DEBUG [2019-11-25 13:35:20.72]: Certificate '7L2Z4FAXT5.cer' is already installed on this machine
INFO [2019-11-25 13:35:20.72]: [36m$ security import /var/folders/8v/h5plyjp53wl6xs6s8w2vwwd40000gn/T/d20191125-35023-j3ry2n/certs/distribution/7L2Z4FAXT5.p12 -k '/Users/astrib/Library/Keychains/login.keychain-db' -P '' -T /usr/bin/codesign -T /usr/bin/security[0m
INFO [2019-11-25 13:35:20.80]: ▸ [35m1 identity imported.[0m
INFO [2019-11-25 13:35:20.81]: [36m$ security set-key-partition-list -S apple-tool:,apple: -k '' /Users/astrib/Library/Keychains/login.keychain-db 1> /dev/null[0m
WARN [2019-11-25 13:35:20.98]: 
WARN [2019-11-25 13:35:20.98]: [33mCould not configure imported keychain item (certificate) to prevent UI permission popup when code signing
Check if you supplied the correct `keychain_password` for keychain: `/Users/astrib/Library/Keychains/login.keychain-db`
security: SecKeychainItemSetAccessWithPassword: The user name or passphrase you entered is not correct.[0m
WARN [2019-11-25 13:35:20.98]: 
WARN [2019-11-25 13:35:20.98]: [33mPlease look at the following docs to see how to set a keychain password:[0m
WARN [2019-11-25 13:35:20.98]: [33m - https://docs.fastlane.tools/actions/sync_code_signing[0m
WARN [2019-11-25 13:35:20.98]: [33m - https://docs.fastlane.tools/actions/get_certificates[0m

+-------------------+--------------------------------------------------+
|                        [32mInstalled Certificate[0m                         |
+-------------------+--------------------------------------------------+
| User ID           | 4KQC9K68AM                                       |
| Common Name       | iPhone Distribution: Maksym Savisko (4KQC9K68AM) |
| Organisation Unit | 4KQC9K68AM                                       |
| Organisation      | Maksym Savisko                                   |
| Country           | US                                               |
| Start Datetime    | 2019-11-09 15:59:32 UTC                          |
| End Datetime      | 2020-11-08 15:59:32 UTC                          |
+-------------------+--------------------------------------------------+

INFO [2019-11-25 13:35:20.98]: Installing provisioning profile...
WARN [2019-11-25 13:35:21.09]: [33mSetting environment variable 'sigh_com.masters-academy.wordmix_adhoc' to '060d8740-e5f0-4867-a2ba-fe71409e208c'[0m
WARN [2019-11-25 13:35:21.09]: [33mSetting environment variable 'sigh_com.masters-academy.wordmix_adhoc_team-id' to '4KQC9K68AM'[0m
WARN [2019-11-25 13:35:21.09]: [33mSetting environment variable 'sigh_com.masters-academy.wordmix_adhoc_profile-name' to 'MA Wordmix Adhoc'[0m
WARN [2019-11-25 13:35:21.09]: [33mSetting environment variable 'sigh_com.masters-academy.wordmix_adhoc_profile-path' to '/Users/astrib/Library/MobileDevice/Provisioning Profiles/060d8740-e5f0-4867-a2ba-fe71409e208c.mobileprovision'[0m

+---------------------+----------------------------+----------------------------+
|                        [32mInstalled Provisioning Profile[0m                         |
+---------------------+----------------------------+----------------------------+
| Parameter           | Environment Variable       | Value                      |
+---------------------+----------------------------+----------------------------+
| App Identifier      |                            | com.masters-academy.wordm  |
|                     |                            | ix                         |
| Type                |                            | adhoc                      |
| Platform            |                            | ios                        |
| Profile UUID        | sigh_com.masters-academy.  | 060d8740-e5f0-4867-a2ba-f  |
|                     | wordmix_adhoc              | e71409e208c                |
| Profile Name        | sigh_com.masters-academy.  | MA Wordmix Adhoc           |
|                     | wordmix_adhoc_profile-nam  |                            |
|                     | e                          |                            |
| Profile Path        | sigh_com.masters-academy.  | /Users/astrib/Library/Mob  |
|                     | wordmix_adhoc_profile-pat  | ileDevice/Provisioning     |
|                     | h                          | Profiles/060d8740-e5f0-48  |
|                     |                            | 67-a2ba-fe71409e208c.mobi  |
|                     |                            | leprovision                |
| Development Team ID | sigh_com.masters-academy.  | 4KQC9K68AM                 |
|                     | wordmix_adhoc_team-id      |                            |
+---------------------+----------------------------+----------------------------+

INFO [2019-11-25 13:35:21.11]: [32m[32mAll required keys, certificates and provisioning profiles are installed 🙌[0m
INFO [2019-11-25 13:35:21.11]: Setting Provisioning Profile type to 'ad-hoc'
INFO [2019-11-25 13:35:21.11]: [32m-----------------[0m
INFO [2019-11-25 13:35:21.11]: [32m--- Step: gym ---[0m
INFO [2019-11-25 13:35:21.11]: [32m-----------------[0m
DEBUG [2019-11-25 13:35:21.13]: Merging provisioning profile mappings
DEBUG [2019-11-25 13:35:21.13]: -------------------------------------
DEBUG [2019-11-25 13:35:21.13]: Primary provisioning profile mapping:
DEBUG [2019-11-25 13:35:21.13]: {}
DEBUG [2019-11-25 13:35:21.13]: Secondary provisioning profile mapping:
DEBUG [2019-11-25 13:35:21.13]: {:"com.masters-academy.wordmix"=>"MA Wordmix Adhoc"}
DEBUG [2019-11-25 13:35:21.13]: Resulting in the following mapping:
DEBUG [2019-11-25 13:35:21.13]: {:"com.masters-academy.wordmix"=>"MA Wordmix Adhoc"}
INFO [2019-11-25 13:35:21.20]: [36m$ xcodebuild -showBuildSettings -workspace ./WordMix.xcworkspace -scheme WordMix-Adhoc[0m
WARN [2019-11-25 13:35:24.20]: [33mCommand timed out after 3 seconds on try 1 of 4, trying again with a 6 second timeout...[0m
DEBUG [2019-11-25 13:35:26.56]: Parsing project file '/Users/astrib/wordmix/WordMix.xcodeproj' to find selected provisioning profiles
DEBUG [2019-11-25 13:35:26.56]: Finding provision profiles for 'Adhoc'
DEBUG [2019-11-25 13:35:26.65]: Merging provisioning profile mappings
DEBUG [2019-11-25 13:35:26.65]: -------------------------------------
DEBUG [2019-11-25 13:35:26.65]: Primary provisioning profile mapping:
DEBUG [2019-11-25 13:35:26.65]: {:"com.masters-academy.wordmix"=>"MA Wordmix Adhoc"}
DEBUG [2019-11-25 13:35:26.65]: Secondary provisioning profile mapping:
DEBUG [2019-11-25 13:35:26.65]: {:"com.masters-academy.wordmix"=>"MA Wordmix Adhoc"}
DEBUG [2019-11-25 13:35:26.65]: Resulting in the following mapping:
DEBUG [2019-11-25 13:35:26.65]: {:"com.masters-academy.wordmix"=>"MA Wordmix Adhoc"}
INFO [2019-11-25 13:35:26.65]: Detected provisioning profile mapping: {:"com.masters-academy.wordmix"=>"MA Wordmix Adhoc"}

+-------------------------------------------+-------------------------------------------+
|                                [32mSummary for gym 2.134.0[0m                                |
+-------------------------------------------+-------------------------------------------+
| scheme                                    | WordMix-Adhoc                             |
| export_method                             | ad-hoc                                    |
| export_options.provisioningProfiles.com.  | MA Wordmix Adhoc                          |
| masters-academy.wordmix                   |                                           |
| workspace                                 | ./WordMix.xcworkspace                     |
| destination                               | generic/platform=iOS                      |
| output_name                               | WordMix                                   |
| build_path                                | /Users/astrib/Library/Developer/Xcode/Ar  |
|                                           | chives/2019-11-25                         |
| clean                                     | false                                     |
| output_directory                          | .                                         |
| silent                                    | false                                     |
| skip_package_ipa                          | false                                     |
| result_bundle                             | false                                     |
| buildlog_path                             | ~/Library/Logs/gym                        |
| skip_profile_detection                    | false                                     |
| xcode_path                                | /Applications/Xcode.app                   |
+-------------------------------------------+-------------------------------------------+

+-------------------------------------------+----------------------+
|                     [32mGenerated Build Command[0m                      |
+-------------------------------------------+----------------------+
| Option                                    | Value                |
+-------------------------------------------+----------------------+
| set -o pipefail &&                        |                      |
| xcodebuild                                |                      |
| -workspace ./WordMix.xcworkspace          |                      |
| -scheme WordMix-Adhoc                     |                      |
| -destination                              | generic/platform=iOS |
| -archivePath                              |                      |
| /Users/astrib/Library/Developer/Xcode/Ar  |                      |
| chives/2019-11-25/WordMix\ 2019-11-25\    |                      |
| 13.35.26.xcarchive                        |                      |
| archive                                   |                      |
| | tee                                     |                      |
| /Users/astrib/Library/Logs/gym/WordMix-W  |                      |
| ordMix-Adhoc.log                          |                      |
| | xcpretty                                |                      |
+-------------------------------------------+----------------------+
INFO [2019-11-25 13:35:26.74]: [36m$ set -o pipefail && xcodebuild -workspace ./WordMix.xcworkspace -scheme WordMix-Adhoc -destination 'generic/platform=iOS' -archivePath /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive archive | tee /Users/astrib/Library/Logs/gym/WordMix-WordMix-Adhoc.log | xcpretty[0m
INFO [2019-11-25 13:35:28.61]: [35m[33m▸[0m [39;1mProcessing[0m Pods-WordMix-Info.plist[0m
INFO [2019-11-25 13:35:28.62]: [35m[33m▸[0m [39;1mCopying[0m Pods-WordMix-umbrella.h[0m
INFO [2019-11-25 13:35:28.62]: [35m[33m▸[0m [39;1mCompiling[0m Pods-WordMix-dummy.m[0m
INFO [2019-11-25 13:35:28.77]: [35m[33m▸[0m [39;1mCompiling[0m Pods-WordMix-dummy.m[0m
INFO [2019-11-25 13:35:28.77]: [35m[33m▸[0m [39;1mCompiling[0m Pods_WordMix_vers.c[0m
INFO [2019-11-25 13:35:28.77]: [35m[33m▸[0m [39;1mCompiling[0m Pods_WordMix_vers.c[0m
INFO [2019-11-25 13:35:28.79]: [35m[33m▸[0m [39;1mTouching[0m Pods_WordMix.framework (in target 'Pods-WordMix' from project 'Pods')[0m
INFO [2019-11-25 13:35:28.80]: [35m[33m▸[0m [39;1mRunning script[0m '[CP] Check Pods Manifest.lock'[0m
INFO [2019-11-25 13:35:31.66]: ▸ [35m[33m⚠️  [0m/Users/astrib/wordmix/WordMix/Vocabulary.swift:203:44: [33m'substring(from:)' is deprecated: Please use String slicing subscript with a 'partial range from' operator.[0m
INFO [2019-11-25 13:35:31.66]: ▸ [35m                        let substr = descr.substring(from: spaceIndex)[0m
INFO [2019-11-25 13:35:31.66]: ▸ [35m[36m                                           ^[0m
INFO [2019-11-25 13:35:31.66]: ▸ [35m[33m⚠️  [0m/Users/astrib/wordmix/WordMix/Vocabulary.swift:205:51: [33m'substring(to:)' is deprecated: Please use String slicing subscript with a 'partial range upto' operator.[0m
INFO [2019-11-25 13:35:31.66]: ▸ [35m                        let numberString = substr.substring(to: periodIndex)[0m
INFO [2019-11-25 13:35:31.66]: ▸ [35m[36m                                                  ^[0m
INFO [2019-11-25 13:35:31.66]: ▸ [35m[33m⚠️  [0m/Users/astrib/wordmix/WordMix/Vocabulary.swift:209:56: [33m'substring(to:)' is deprecated: Please use String slicing subscript with a 'partial range upto' operator.[0m
INFO [2019-11-25 13:35:31.66]: ▸ [35m                            let subString = fileString.substring(to: index)[0m
INFO [2019-11-25 13:35:31.66]: ▸ [35m[36m                                                       ^[0m
INFO [2019-11-25 13:35:32.35]: ▸ [35m[33m⚠️  [0m/Users/astrib/wordmix/WordMix/Vocabulary.swift:203:44: [33m'substring(from:)' is deprecated: Please use String slicing subscript with a 'partial range from' operator.[0m
INFO [2019-11-25 13:35:32.35]: ▸ [35m                        let substr = descr.substring(from: spaceIndex)[0m
INFO [2019-11-25 13:35:32.35]: ▸ [35m[36m                                           ^[0m
INFO [2019-11-25 13:35:32.35]: ▸ [35m[33m⚠️  [0m/Users/astrib/wordmix/WordMix/Vocabulary.swift:205:51: [33m'substring(to:)' is deprecated: Please use String slicing subscript with a 'partial range upto' operator.[0m
INFO [2019-11-25 13:35:32.35]: ▸ [35m                        let numberString = substr.substring(to: periodIndex)[0m
INFO [2019-11-25 13:35:32.35]: ▸ [35m[36m                                                  ^[0m
INFO [2019-11-25 13:35:32.35]: ▸ [35m[33m⚠️  [0m/Users/astrib/wordmix/WordMix/Vocabulary.swift:209:56: [33m'substring(to:)' is deprecated: Please use String slicing subscript with a 'partial range upto' operator.[0m
INFO [2019-11-25 13:35:32.35]: ▸ [35m                            let subString = fileString.substring(to: index)[0m
INFO [2019-11-25 13:35:32.35]: ▸ [35m[36m                                                       ^[0m
INFO [2019-11-25 13:35:32.35]: [35m[33m▸[0m [39;1mLinking[0m WordMix[0m
INFO [2019-11-25 13:35:32.46]: [35m[33m▸[0m [39;1mLinking[0m WordMix[0m
INFO [2019-11-25 13:35:32.62]: [35m[33m▸[0m [39;1mCopying[0m /Users/astrib/wordmix/WordMix/masha.json[0m
INFO [2019-11-25 13:35:32.62]: [35m[33m▸[0m [39;1mCopying[0m /Users/astrib/wordmix/WordMix/linear_algebra.json[0m
INFO [2019-11-25 13:35:32.62]: [35m[33m▸[0m [39;1mCopying[0m /Users/astrib/wordmix/WordMix/myth.json[0m
INFO [2019-11-25 13:35:32.62]: [35m[33m▸[0m [39;1mCopying[0m /Users/astrib/wordmix/WordMix/harry.json[0m
INFO [2019-11-25 13:35:32.62]: [35m[33m▸[0m [39;1mCopying[0m /Users/astrib/wordmix/WordMix/esp.json[0m
INFO [2019-11-25 13:35:32.62]: [35m[33m▸[0m [39;1mCopying[0m GoogleService-Info.plist[0m
INFO [2019-11-25 13:35:40.85]: [35m[33m▸[0m [39;1mCompiling[0m Main.storyboard[0m
INFO [2019-11-25 13:35:43.51]: [35m[33m▸[0m [39;1mCompiling[0m LaunchScreen.storyboard[0m
INFO [2019-11-25 13:35:43.51]: [35m[33m▸[0m [39;1mProcessing[0m Info.plist[0m
INFO [2019-11-25 13:35:43.53]: [35m[33m▸[0m [39;1mGenerating 'WordMix.app.dSYM'[0m
INFO [2019-11-25 13:35:46.65]: [35m[33m▸[0m [39;1mTouching[0m WordMix.app (in target 'WordMix' from project 'WordMix')[0m
INFO [2019-11-25 13:35:46.69]: [35m[33m▸[0m [39;1mArchive[0m Succeeded[0m
DEBUG [2019-11-25 13:35:46.96]: Stored the archive in: /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix 2019-11-25 13.35.26.xcarchive
WARN [2019-11-25 13:35:46.97]: [33mGenerated plist file with the following values:[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m-----------------------------------------[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m{[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m  "provisioningProfiles": {[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m    "com.masters-academy.wordmix": "MA Wordmix Adhoc"[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m  },[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m  "method": "ad-hoc",[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m  "signingStyle": "manual"[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m}[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m-----------------------------------------[0m
INFO [2019-11-25 13:35:46.97]: This results in the following plist file:
INFO [2019-11-25 13:35:46.97]: ▸ [35m-----------------------------------------[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m<?xml version="1.0" encoding="UTF-8"?>[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m<plist version="1.0">[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m<dict>[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m	<key>method</key>[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m	<string>ad-hoc</string>[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m	<key>provisioningProfiles</key>[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m	<dict>[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m		<key>com.masters-academy.wordmix</key>[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m		<string>MA Wordmix Adhoc</string>[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m	</dict>[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m	<key>signingStyle</key>[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m	<string>manual</string>[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m</dict>[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m</plist>[0m
INFO [2019-11-25 13:35:46.97]: ▸ [35m-----------------------------------------[0m
+-------------------------------------------+-------------------------------------------+
|                               [32mGenerated Package Command[0m                               |
+-------------------------------------------+-------------------------------------------+
| Option                                    | Value                                     |
+-------------------------------------------+-------------------------------------------+
| /usr/bin/xcrun                            |                                           |
| /Users/astrib/.rbenv/versions/2.6.2/lib/  |                                           |
| ruby/gems/2.6.0/gems/fastlane-2.134.0/gy  |                                           |
| m/lib/assets/wrap_xcodebuild/xcbuild-saf  |                                           |
| e.sh -exportArchive                       |                                           |
| -exportOptionsPlist                       | /var/folders/8v/h5plyjp53wl6xs6s8w2vwwd4  |
|                                           | 0000gn/T/gym_config20191125-35023-1haqx3  |
|                                           | k.plist                                   |
| -archivePath                              |                                           |
| /Users/astrib/Library/Developer/Xcode/Ar  |                                           |
| chives/2019-11-25/WordMix\ 2019-11-25\    |                                           |
| 13.35.26.xcarchive                        |                                           |
| -exportPath                               | /var/folders/8v/h5plyjp53wl6xs6s8w2vwwd4  |
|                                           | 0000gn/T/gym_output20191125-35023-oilett  |
+-------------------------------------------+-------------------------------------------+
INFO [2019-11-25 13:35:46.97]: [36m$ /usr/bin/xcrun /Users/astrib/.rbenv/versions/2.6.2/lib/ruby/gems/2.6.0/gems/fastlane-2.134.0/gym/lib/assets/wrap_xcodebuild/xcbuild-safe.sh -exportArchive -exportOptionsPlist '/var/folders/8v/h5plyjp53wl6xs6s8w2vwwd40000gn/T/gym_config20191125-35023-1haqx3k.plist' -archivePath /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive -exportPath '/var/folders/8v/h5plyjp53wl6xs6s8w2vwwd40000gn/T/gym_output20191125-35023-oilett' [0m
INFO [2019-11-25 13:35:46.99]: ▸ [35mrbenv detected, removing env variables[0m
INFO [2019-11-25 13:35:47.00]: ▸ [35mrbenv: shell integration not enabled. Run `rbenv init' for instructions.[0m
INFO [2019-11-25 13:35:47.00]: ▸ [35m+ xcodebuild -exportArchive -exportOptionsPlist /var/folders/8v/h5plyjp53wl6xs6s8w2vwwd40000gn/T/gym_config20191125-35023-1haqx3k.plist -archivePath '/Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix 2019-11-25 13.35.26.xcarchive' -exportPath /var/folders/8v/h5plyjp53wl6xs6s8w2vwwd40000gn/T/gym_output20191125-35023-oilett[0m
INFO [2019-11-25 13:35:47.43]: ▸ [35m2019-11-25 13:35:47.431 xcodebuild[37767:342084] [MT] IDEDistribution: -[IDEDistributionLogging _createLoggingBundleAtPath:]: Created bundle at path '/var/folders/8v/h5plyjp53wl6xs6s8w2vwwd40000gn/T/WordMix-Adhoc_2019-11-25_13-35-47.430.xcdistributionlogs'.[0m
INFO [2019-11-25 13:37:22.46]: ▸ [35mExported WordMix-Adhoc to: /var/folders/8v/h5plyjp53wl6xs6s8w2vwwd40000gn/T/gym_output20191125-35023-oilett[0m
INFO [2019-11-25 13:37:22.46]: ▸ [35m** EXPORT SUCCEEDED **[0m
INFO [2019-11-25 13:37:22.52]: Mapping dSYM(s) using generated BCSymbolMaps
INFO [2019-11-25 13:37:22.54]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/890497B4-B9B8-3320-8A18-D318EF0B20EA.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/890497B4-B9B8-3320-8A18-D318EF0B20EA.dSYM[0m
INFO [2019-11-25 13:37:22.58]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/5A324859-9BE2-3B19-A72A-9A43D221752D.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/5A324859-9BE2-3B19-A72A-9A43D221752D.dSYM[0m
INFO [2019-11-25 13:37:22.62]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/DBF0A588-5E52-327B-BA3F-A9A63944C95C.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/DBF0A588-5E52-327B-BA3F-A9A63944C95C.dSYM[0m
INFO [2019-11-25 13:37:22.65]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/8D7E8E2C-2966-36D9-B759-5C8637B25824.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/8D7E8E2C-2966-36D9-B759-5C8637B25824.dSYM[0m
INFO [2019-11-25 13:37:22.68]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/C0AFA6EC-A094-3E55-BE13-B5FFEE9EB1D4.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/C0AFA6EC-A094-3E55-BE13-B5FFEE9EB1D4.dSYM[0m
INFO [2019-11-25 13:37:22.88]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/E44E561A-6429-34C6-9617-DEA56D641B46.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/WordMix.app.dSYM[0m
INFO [2019-11-25 13:37:22.99]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/E0B95CC0-FE24-38B5-A31F-E66DBB1F66E5.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/WordMix.app.dSYM[0m
INFO [2019-11-25 13:37:23.08]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/9927228E-2E6F-3DF3-A06A-38A22CB0ED9B.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/9927228E-2E6F-3DF3-A06A-38A22CB0ED9B.dSYM[0m
INFO [2019-11-25 13:37:23.11]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/B103AA72-9708-3FA2-AD91-FBD568196A07.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/B103AA72-9708-3FA2-AD91-FBD568196A07.dSYM[0m
INFO [2019-11-25 13:37:23.18]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/ECA73BD6-773F-3597-AB82-DD181EF57349.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/ECA73BD6-773F-3597-AB82-DD181EF57349.dSYM[0m
INFO [2019-11-25 13:37:23.21]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/AD7A8A63-CE8A-39CE-9C78-0F31F5B1D938.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/AD7A8A63-CE8A-39CE-9C78-0F31F5B1D938.dSYM[0m
INFO [2019-11-25 13:37:23.24]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/72446470-46E3-37F0-A34B-1F2487802706.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/72446470-46E3-37F0-A34B-1F2487802706.dSYM[0m
INFO [2019-11-25 13:37:23.27]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/54D379F6-9273-31AE-9054-43F59C580494.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/54D379F6-9273-31AE-9054-43F59C580494.dSYM[0m
INFO [2019-11-25 13:37:23.30]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/FF391897-EE8B-3D9B-89F6-7EC1E23837F1.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/FF391897-EE8B-3D9B-89F6-7EC1E23837F1.dSYM[0m
INFO [2019-11-25 13:37:23.34]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/253D4D30-DD92-31BD-A225-FB658EB23574.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/253D4D30-DD92-31BD-A225-FB658EB23574.dSYM[0m
INFO [2019-11-25 13:37:23.37]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/F0C079A2-D0F8-3DE1-A8ED-4A0D8BCEEADC.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/F0C079A2-D0F8-3DE1-A8ED-4A0D8BCEEADC.dSYM[0m
INFO [2019-11-25 13:37:23.44]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/0FE53C66-9D51-3308-B0E9-1F0B14F0BCAA.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/0FE53C66-9D51-3308-B0E9-1F0B14F0BCAA.dSYM[0m
INFO [2019-11-25 13:37:23.47]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/538B1AA4-2F3D-35D6-9A4F-F6A28385CFB2.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/538B1AA4-2F3D-35D6-9A4F-F6A28385CFB2.dSYM[0m
INFO [2019-11-25 13:37:23.50]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/F11CE313-7606-338D-B000-9DDE945E79C3.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/F11CE313-7606-338D-B000-9DDE945E79C3.dSYM[0m
INFO [2019-11-25 13:37:23.53]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/568791B6-11EA-39AC-A010-55F90AA6A72D.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/568791B6-11EA-39AC-A010-55F90AA6A72D.dSYM[0m
INFO [2019-11-25 13:37:23.56]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/B39F5F53-F19B-305D-8B76-2D21B65D6D3D.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/B39F5F53-F19B-305D-8B76-2D21B65D6D3D.dSYM[0m
INFO [2019-11-25 13:37:23.59]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/4C2EB919-1158-3DF2-B3BA-E6232FE228BE.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/4C2EB919-1158-3DF2-B3BA-E6232FE228BE.dSYM[0m
INFO [2019-11-25 13:37:23.62]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/AC0C2AEB-C4BC-3C28-B2F5-F780F4FBB36F.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/AC0C2AEB-C4BC-3C28-B2F5-F780F4FBB36F.dSYM[0m
INFO [2019-11-25 13:37:23.65]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/59C640DA-0074-3C11-8FD9-FF79D22A7F7C.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/59C640DA-0074-3C11-8FD9-FF79D22A7F7C.dSYM[0m
INFO [2019-11-25 13:37:23.85]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/E2AE938A-1D73-3879-A91B-39400505AD05.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/E2AE938A-1D73-3879-A91B-39400505AD05.dSYM[0m
INFO [2019-11-25 13:37:23.88]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/88795B35-6D63-3BC3-822E-11B936AEA7C5.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/88795B35-6D63-3BC3-822E-11B936AEA7C5.dSYM[0m
INFO [2019-11-25 13:37:23.91]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/65D3E3D4-554E-3E85-A01F-7F38079FE6B9.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/65D3E3D4-554E-3E85-A01F-7F38079FE6B9.dSYM[0m
INFO [2019-11-25 13:37:23.94]: [36m$ dsymutil --symbol-map /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/BCSymbolMaps/8093006C-CB91-300C-A7FA-9505D7C2C263.bcsymbolmap /Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix\ 2019-11-25\ 13.35.26.xcarchive/dSYMs/8093006C-CB91-300C-A7FA-9505D7C2C263.dSYM[0m
INFO [2019-11-25 13:37:23.96]: Compressing 27 dSYM(s)
INFO [2019-11-25 13:37:23.96]: [36m$ cd '/Users/astrib/Library/Developer/Xcode/Archives/2019-11-25/WordMix 2019-11-25 13.35.26.xcarchive/dSYMs' && zip -r '/Users/astrib/wordmix/WordMix.app.dSYM.zip' *.dSYM[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 0FE53C66-9D51-3308-B0E9-1F0B14F0BCAA.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 0FE53C66-9D51-3308-B0E9-1F0B14F0BCAA.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 0FE53C66-9D51-3308-B0E9-1F0B14F0BCAA.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 0FE53C66-9D51-3308-B0E9-1F0B14F0BCAA.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 0FE53C66-9D51-3308-B0E9-1F0B14F0BCAA.dSYM/Contents/Resources/DWARF/libswiftDarwin.dylib (deflated 72%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 0FE53C66-9D51-3308-B0E9-1F0B14F0BCAA.dSYM/Contents/Resources/0FE53C66-9D51-3308-B0E9-1F0B14F0BCAA.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 0FE53C66-9D51-3308-B0E9-1F0B14F0BCAA.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 253D4D30-DD92-31BD-A225-FB658EB23574.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 253D4D30-DD92-31BD-A225-FB658EB23574.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 253D4D30-DD92-31BD-A225-FB658EB23574.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 253D4D30-DD92-31BD-A225-FB658EB23574.dSYM/Contents/Resources/253D4D30-DD92-31BD-A225-FB658EB23574.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 253D4D30-DD92-31BD-A225-FB658EB23574.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 253D4D30-DD92-31BD-A225-FB658EB23574.dSYM/Contents/Resources/DWARF/libswiftCoreImage.dylib (deflated 84%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 253D4D30-DD92-31BD-A225-FB658EB23574.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 4C2EB919-1158-3DF2-B3BA-E6232FE228BE.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 4C2EB919-1158-3DF2-B3BA-E6232FE228BE.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 4C2EB919-1158-3DF2-B3BA-E6232FE228BE.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 4C2EB919-1158-3DF2-B3BA-E6232FE228BE.dSYM/Contents/Resources/4C2EB919-1158-3DF2-B3BA-E6232FE228BE.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 4C2EB919-1158-3DF2-B3BA-E6232FE228BE.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 4C2EB919-1158-3DF2-B3BA-E6232FE228BE.dSYM/Contents/Resources/DWARF/WordMix (deflated 65%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 4C2EB919-1158-3DF2-B3BA-E6232FE228BE.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 538B1AA4-2F3D-35D6-9A4F-F6A28385CFB2.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 538B1AA4-2F3D-35D6-9A4F-F6A28385CFB2.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 538B1AA4-2F3D-35D6-9A4F-F6A28385CFB2.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 538B1AA4-2F3D-35D6-9A4F-F6A28385CFB2.dSYM/Contents/Resources/538B1AA4-2F3D-35D6-9A4F-F6A28385CFB2.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 538B1AA4-2F3D-35D6-9A4F-F6A28385CFB2.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 538B1AA4-2F3D-35D6-9A4F-F6A28385CFB2.dSYM/Contents/Resources/DWARF/libswiftCoreFoundation.dylib (deflated 84%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 538B1AA4-2F3D-35D6-9A4F-F6A28385CFB2.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 54D379F6-9273-31AE-9054-43F59C580494.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 54D379F6-9273-31AE-9054-43F59C580494.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 54D379F6-9273-31AE-9054-43F59C580494.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 54D379F6-9273-31AE-9054-43F59C580494.dSYM/Contents/Resources/54D379F6-9273-31AE-9054-43F59C580494.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 54D379F6-9273-31AE-9054-43F59C580494.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 54D379F6-9273-31AE-9054-43F59C580494.dSYM/Contents/Resources/DWARF/libswiftDispatch.dylib (deflated 73%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 54D379F6-9273-31AE-9054-43F59C580494.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 568791B6-11EA-39AC-A010-55F90AA6A72D.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 568791B6-11EA-39AC-A010-55F90AA6A72D.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 568791B6-11EA-39AC-A010-55F90AA6A72D.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 568791B6-11EA-39AC-A010-55F90AA6A72D.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 568791B6-11EA-39AC-A010-55F90AA6A72D.dSYM/Contents/Resources/DWARF/libswiftCoreImage.dylib (deflated 84%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 568791B6-11EA-39AC-A010-55F90AA6A72D.dSYM/Contents/Resources/568791B6-11EA-39AC-A010-55F90AA6A72D.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 568791B6-11EA-39AC-A010-55F90AA6A72D.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 59C640DA-0074-3C11-8FD9-FF79D22A7F7C.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 59C640DA-0074-3C11-8FD9-FF79D22A7F7C.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 59C640DA-0074-3C11-8FD9-FF79D22A7F7C.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 59C640DA-0074-3C11-8FD9-FF79D22A7F7C.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 59C640DA-0074-3C11-8FD9-FF79D22A7F7C.dSYM/Contents/Resources/DWARF/libswiftCore.dylib (deflated 68%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 59C640DA-0074-3C11-8FD9-FF79D22A7F7C.dSYM/Contents/Resources/59C640DA-0074-3C11-8FD9-FF79D22A7F7C.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 59C640DA-0074-3C11-8FD9-FF79D22A7F7C.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 5A324859-9BE2-3B19-A72A-9A43D221752D.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 5A324859-9BE2-3B19-A72A-9A43D221752D.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 5A324859-9BE2-3B19-A72A-9A43D221752D.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 5A324859-9BE2-3B19-A72A-9A43D221752D.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 5A324859-9BE2-3B19-A72A-9A43D221752D.dSYM/Contents/Resources/DWARF/libswiftQuartzCore.dylib (deflated 76%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 5A324859-9BE2-3B19-A72A-9A43D221752D.dSYM/Contents/Resources/5A324859-9BE2-3B19-A72A-9A43D221752D.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 5A324859-9BE2-3B19-A72A-9A43D221752D.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 65D3E3D4-554E-3E85-A01F-7F38079FE6B9.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 65D3E3D4-554E-3E85-A01F-7F38079FE6B9.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 65D3E3D4-554E-3E85-A01F-7F38079FE6B9.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 65D3E3D4-554E-3E85-A01F-7F38079FE6B9.dSYM/Contents/Resources/65D3E3D4-554E-3E85-A01F-7F38079FE6B9.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 65D3E3D4-554E-3E85-A01F-7F38079FE6B9.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 65D3E3D4-554E-3E85-A01F-7F38079FE6B9.dSYM/Contents/Resources/DWARF/WordMix (deflated 71%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 65D3E3D4-554E-3E85-A01F-7F38079FE6B9.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 72446470-46E3-37F0-A34B-1F2487802706.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 72446470-46E3-37F0-A34B-1F2487802706.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 72446470-46E3-37F0-A34B-1F2487802706.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 72446470-46E3-37F0-A34B-1F2487802706.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 72446470-46E3-37F0-A34B-1F2487802706.dSYM/Contents/Resources/DWARF/libswiftDarwin.dylib (deflated 67%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 72446470-46E3-37F0-A34B-1F2487802706.dSYM/Contents/Resources/72446470-46E3-37F0-A34B-1F2487802706.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 72446470-46E3-37F0-A34B-1F2487802706.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 8093006C-CB91-300C-A7FA-9505D7C2C263.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 8093006C-CB91-300C-A7FA-9505D7C2C263.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 8093006C-CB91-300C-A7FA-9505D7C2C263.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 8093006C-CB91-300C-A7FA-9505D7C2C263.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 8093006C-CB91-300C-A7FA-9505D7C2C263.dSYM/Contents/Resources/DWARF/libswiftMetal.dylib (deflated 77%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 8093006C-CB91-300C-A7FA-9505D7C2C263.dSYM/Contents/Resources/8093006C-CB91-300C-A7FA-9505D7C2C263.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 8093006C-CB91-300C-A7FA-9505D7C2C263.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 88795B35-6D63-3BC3-822E-11B936AEA7C5.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 88795B35-6D63-3BC3-822E-11B936AEA7C5.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 88795B35-6D63-3BC3-822E-11B936AEA7C5.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 88795B35-6D63-3BC3-822E-11B936AEA7C5.dSYM/Contents/Resources/88795B35-6D63-3BC3-822E-11B936AEA7C5.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 88795B35-6D63-3BC3-822E-11B936AEA7C5.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 88795B35-6D63-3BC3-822E-11B936AEA7C5.dSYM/Contents/Resources/DWARF/libswiftCoreGraphics.dylib (deflated 73%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 88795B35-6D63-3BC3-822E-11B936AEA7C5.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 890497B4-B9B8-3320-8A18-D318EF0B20EA.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 890497B4-B9B8-3320-8A18-D318EF0B20EA.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 890497B4-B9B8-3320-8A18-D318EF0B20EA.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 890497B4-B9B8-3320-8A18-D318EF0B20EA.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 890497B4-B9B8-3320-8A18-D318EF0B20EA.dSYM/Contents/Resources/DWARF/libswiftUIKit.dylib (deflated 71%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 890497B4-B9B8-3320-8A18-D318EF0B20EA.dSYM/Contents/Resources/890497B4-B9B8-3320-8A18-D318EF0B20EA.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 890497B4-B9B8-3320-8A18-D318EF0B20EA.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 8D7E8E2C-2966-36D9-B759-5C8637B25824.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 8D7E8E2C-2966-36D9-B759-5C8637B25824.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 8D7E8E2C-2966-36D9-B759-5C8637B25824.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 8D7E8E2C-2966-36D9-B759-5C8637B25824.dSYM/Contents/Resources/8D7E8E2C-2966-36D9-B759-5C8637B25824.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 8D7E8E2C-2966-36D9-B759-5C8637B25824.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 8D7E8E2C-2966-36D9-B759-5C8637B25824.dSYM/Contents/Resources/DWARF/libswiftos.dylib (deflated 66%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 8D7E8E2C-2966-36D9-B759-5C8637B25824.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 9927228E-2E6F-3DF3-A06A-38A22CB0ED9B.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 9927228E-2E6F-3DF3-A06A-38A22CB0ED9B.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 9927228E-2E6F-3DF3-A06A-38A22CB0ED9B.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 9927228E-2E6F-3DF3-A06A-38A22CB0ED9B.dSYM/Contents/Resources/9927228E-2E6F-3DF3-A06A-38A22CB0ED9B.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 9927228E-2E6F-3DF3-A06A-38A22CB0ED9B.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 9927228E-2E6F-3DF3-A06A-38A22CB0ED9B.dSYM/Contents/Resources/DWARF/libswiftObjectiveC.dylib (deflated 70%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: 9927228E-2E6F-3DF3-A06A-38A22CB0ED9B.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: AC0C2AEB-C4BC-3C28-B2F5-F780F4FBB36F.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: AC0C2AEB-C4BC-3C28-B2F5-F780F4FBB36F.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: AC0C2AEB-C4BC-3C28-B2F5-F780F4FBB36F.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: AC0C2AEB-C4BC-3C28-B2F5-F780F4FBB36F.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: AC0C2AEB-C4BC-3C28-B2F5-F780F4FBB36F.dSYM/Contents/Resources/DWARF/libswiftCoreGraphics.dylib (deflated 69%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: AC0C2AEB-C4BC-3C28-B2F5-F780F4FBB36F.dSYM/Contents/Resources/AC0C2AEB-C4BC-3C28-B2F5-F780F4FBB36F.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: AC0C2AEB-C4BC-3C28-B2F5-F780F4FBB36F.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: AD7A8A63-CE8A-39CE-9C78-0F31F5B1D938.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: AD7A8A63-CE8A-39CE-9C78-0F31F5B1D938.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: AD7A8A63-CE8A-39CE-9C78-0F31F5B1D938.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: AD7A8A63-CE8A-39CE-9C78-0F31F5B1D938.dSYM/Contents/Resources/AD7A8A63-CE8A-39CE-9C78-0F31F5B1D938.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: AD7A8A63-CE8A-39CE-9C78-0F31F5B1D938.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: AD7A8A63-CE8A-39CE-9C78-0F31F5B1D938.dSYM/Contents/Resources/DWARF/libswiftMetal.dylib (deflated 75%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: AD7A8A63-CE8A-39CE-9C78-0F31F5B1D938.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: B103AA72-9708-3FA2-AD91-FBD568196A07.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: B103AA72-9708-3FA2-AD91-FBD568196A07.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: B103AA72-9708-3FA2-AD91-FBD568196A07.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: B103AA72-9708-3FA2-AD91-FBD568196A07.dSYM/Contents/Resources/B103AA72-9708-3FA2-AD91-FBD568196A07.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: B103AA72-9708-3FA2-AD91-FBD568196A07.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: B103AA72-9708-3FA2-AD91-FBD568196A07.dSYM/Contents/Resources/DWARF/libswiftFoundation.dylib (deflated 76%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: B103AA72-9708-3FA2-AD91-FBD568196A07.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: B39F5F53-F19B-305D-8B76-2D21B65D6D3D.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: B39F5F53-F19B-305D-8B76-2D21B65D6D3D.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: B39F5F53-F19B-305D-8B76-2D21B65D6D3D.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: B39F5F53-F19B-305D-8B76-2D21B65D6D3D.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: B39F5F53-F19B-305D-8B76-2D21B65D6D3D.dSYM/Contents/Resources/DWARF/libswiftQuartzCore.dylib (deflated 77%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: B39F5F53-F19B-305D-8B76-2D21B65D6D3D.dSYM/Contents/Resources/B39F5F53-F19B-305D-8B76-2D21B65D6D3D.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: B39F5F53-F19B-305D-8B76-2D21B65D6D3D.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: C0AFA6EC-A094-3E55-BE13-B5FFEE9EB1D4.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: C0AFA6EC-A094-3E55-BE13-B5FFEE9EB1D4.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: C0AFA6EC-A094-3E55-BE13-B5FFEE9EB1D4.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: C0AFA6EC-A094-3E55-BE13-B5FFEE9EB1D4.dSYM/Contents/Resources/C0AFA6EC-A094-3E55-BE13-B5FFEE9EB1D4.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: C0AFA6EC-A094-3E55-BE13-B5FFEE9EB1D4.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: C0AFA6EC-A094-3E55-BE13-B5FFEE9EB1D4.dSYM/Contents/Resources/DWARF/libswiftCore.dylib (deflated 73%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: C0AFA6EC-A094-3E55-BE13-B5FFEE9EB1D4.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: DBF0A588-5E52-327B-BA3F-A9A63944C95C.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: DBF0A588-5E52-327B-BA3F-A9A63944C95C.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: DBF0A588-5E52-327B-BA3F-A9A63944C95C.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: DBF0A588-5E52-327B-BA3F-A9A63944C95C.dSYM/Contents/Resources/DBF0A588-5E52-327B-BA3F-A9A63944C95C.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: DBF0A588-5E52-327B-BA3F-A9A63944C95C.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: DBF0A588-5E52-327B-BA3F-A9A63944C95C.dSYM/Contents/Resources/DWARF/libswiftObjectiveC.dylib (deflated 72%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: DBF0A588-5E52-327B-BA3F-A9A63944C95C.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: E2AE938A-1D73-3879-A91B-39400505AD05.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: E2AE938A-1D73-3879-A91B-39400505AD05.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: E2AE938A-1D73-3879-A91B-39400505AD05.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: E2AE938A-1D73-3879-A91B-39400505AD05.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: E2AE938A-1D73-3879-A91B-39400505AD05.dSYM/Contents/Resources/DWARF/libswiftCoreFoundation.dylib (deflated 83%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: E2AE938A-1D73-3879-A91B-39400505AD05.dSYM/Contents/Resources/E2AE938A-1D73-3879-A91B-39400505AD05.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: E2AE938A-1D73-3879-A91B-39400505AD05.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: ECA73BD6-773F-3597-AB82-DD181EF57349.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: ECA73BD6-773F-3597-AB82-DD181EF57349.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: ECA73BD6-773F-3597-AB82-DD181EF57349.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: ECA73BD6-773F-3597-AB82-DD181EF57349.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: ECA73BD6-773F-3597-AB82-DD181EF57349.dSYM/Contents/Resources/DWARF/libswiftos.dylib (deflated 69%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: ECA73BD6-773F-3597-AB82-DD181EF57349.dSYM/Contents/Resources/ECA73BD6-773F-3597-AB82-DD181EF57349.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: ECA73BD6-773F-3597-AB82-DD181EF57349.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: F0C079A2-D0F8-3DE1-A8ED-4A0D8BCEEADC.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: F0C079A2-D0F8-3DE1-A8ED-4A0D8BCEEADC.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: F0C079A2-D0F8-3DE1-A8ED-4A0D8BCEEADC.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: F0C079A2-D0F8-3DE1-A8ED-4A0D8BCEEADC.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: F0C079A2-D0F8-3DE1-A8ED-4A0D8BCEEADC.dSYM/Contents/Resources/DWARF/libswiftFoundation.dylib (deflated 69%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: F0C079A2-D0F8-3DE1-A8ED-4A0D8BCEEADC.dSYM/Contents/Resources/F0C079A2-D0F8-3DE1-A8ED-4A0D8BCEEADC.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: F0C079A2-D0F8-3DE1-A8ED-4A0D8BCEEADC.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: F11CE313-7606-338D-B000-9DDE945E79C3.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: F11CE313-7606-338D-B000-9DDE945E79C3.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: F11CE313-7606-338D-B000-9DDE945E79C3.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: F11CE313-7606-338D-B000-9DDE945E79C3.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: F11CE313-7606-338D-B000-9DDE945E79C3.dSYM/Contents/Resources/DWARF/libswiftDispatch.dylib (deflated 69%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: F11CE313-7606-338D-B000-9DDE945E79C3.dSYM/Contents/Resources/F11CE313-7606-338D-B000-9DDE945E79C3.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: F11CE313-7606-338D-B000-9DDE945E79C3.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: FF391897-EE8B-3D9B-89F6-7EC1E23837F1.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: FF391897-EE8B-3D9B-89F6-7EC1E23837F1.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: FF391897-EE8B-3D9B-89F6-7EC1E23837F1.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: FF391897-EE8B-3D9B-89F6-7EC1E23837F1.dSYM/Contents/Resources/FF391897-EE8B-3D9B-89F6-7EC1E23837F1.plist (deflated 21%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: FF391897-EE8B-3D9B-89F6-7EC1E23837F1.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: FF391897-EE8B-3D9B-89F6-7EC1E23837F1.dSYM/Contents/Resources/DWARF/libswiftUIKit.dylib (deflated 68%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: FF391897-EE8B-3D9B-89F6-7EC1E23837F1.dSYM/Contents/Info.plist (deflated 52%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: WordMix.app.dSYM/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: WordMix.app.dSYM/Contents/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: WordMix.app.dSYM/Contents/Resources/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: WordMix.app.dSYM/Contents/Resources/DWARF/ (stored 0%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: WordMix.app.dSYM/Contents/Resources/DWARF/WordMix (deflated 63%)[0m
INFO [2019-11-25 13:37:24.80]: ▸ [35mupdating: WordMix.app.dSYM/Contents/Info.plist (deflated 52%)[0m

INFO [2019-11-25 13:37:24.80]: [32mSuccessfully exported and compressed dSYM file[0m
INFO [2019-11-25 13:37:24.80]: [32mSuccessfully exported and signed the ipa file:[0m
INFO [2019-11-25 13:37:24.80]: /Users/astrib/wordmix/WordMix.ipa
INFO [2019-11-25 13:37:24.81]: [32m---------------------------------------[0m
INFO [2019-11-25 13:37:24.81]: [32m--- Step: firebase_app_distribution ---[0m
INFO [2019-11-25 13:37:24.81]: [32m---------------------------------------[0m
INFO [2019-11-25 13:37:28.90]: ▸ [35m]0;Firebase CLI[1m[36mi [39m[22m getting app details...[0m
INFO [2019-11-25 13:37:31.49]: ▸ [35m[1m[36mi [39m[22m uploading distribution...[0m
INFO [2019-11-25 13:37:41.11]: ▸ [35m[1m[32m✔ [39m[22m uploaded distribution successfully[0m
INFO [2019-11-25 13:37:41.11]: ▸ [35m[1m[33m⚠ [39m[22m no release notes specified, skipping[0m
INFO [2019-11-25 13:37:41.11]: ▸ [35m[1m[36mi [39m[22m adding testers/groups...[0m
INFO [2019-11-25 13:37:42.55]: ▸ [35m[1m[32m✔ [39m[22m added testers/groups successfully[0m
INFO [2019-11-25 13:37:42.70]: [32mSuccessfully generated documentation at path '/Users/astrib/wordmix/fastlane/README.md'[0m

+------+---------------------------+-------------+
|                [32mfastlane summary[0m                |
+------+---------------------------+-------------+
| Step | Action                    | Time (in s) |
+------+---------------------------+-------------+
| 1    | default_platform          | 0           |
| 2    | Verifying fastlane        | 0           |
|      | version                   |             |
| 3    | default_platform          | 0           |
| 4    | match                     | 6           |
| 5    | gym                       | 123         |
| 6    | firebase_app_distribution | 17          |
+------+---------------------------+-------------+

DEBUG [2019-11-25 13:37:42.71]: All plugins are up to date
INFO [2019-11-25 13:37:42.71]: [32mfastlane.tools finished successfully 🎉[0m
DEBUG [2019-11-25 13:37:42.71]: All plugins are up to date

#######################################################################
# fastlane 2.137.0 is available. You are on 2.134.0.
# You should use the latest version.
# Please update using `bundle update fastlane`.
#######################################################################

[32m2.137.0 Improvements[0m
* [supply] error track or track_promote_to are rollout as that is no longer used by Google Play and causing errors (#15692) via Josh Holtz
* [supply] upload meta in same commit to fix issue with validate_only (#15691) via Josh Holtz
* [action] gradle: Add support for mapping.txt file (#15597) via NicoEkino
* [screengrab] address issue #15674 - make sure aapt is available before trying to clean status bar (#15684) via Hiroto Nakamura
* [screengrab] Remove unused clean status bar options (#15679) via Rick Clephas
* [action] added custom option to testfairy upload (#15670) via Vijay Sharma
* [supply] don't apply rollout when value 1 of when uploading and don't call promote or rollout methods when uploading (#15668) via Josh Holtz
* [ensure_bundle_exec] Fix wording in action error message and d… (#15596) via Iulian Onofrei
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
