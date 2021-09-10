package com.google.ads.consent;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.b;
import com.vungle.warren.VungleApiClient;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

public class ConsentInformation {
    private static final String CONSENT_DATA_KEY = "consent_string";
    private static final String MOBILE_ADS_SERVER_URL = "https://adservice.google.com/getconfig/pubvendors";
    private static final String PREFERENCES_FILE_KEY = "mobileads_consent";
    private static final String TAG = "ConsentInformation";
    private static ConsentInformation instance;
    private final Context context;
    private DebugGeography debugGeography = DebugGeography.DEBUG_GEOGRAPHY_DISABLED;
    private String hashedDeviceId = getHashedDeviceId();
    private List<String> testDevices = new ArrayList();

    /* access modifiers changed from: private */
    public static class AdNetworkLookupResponse {
        @c70("company_ids")
        private List<String> companyIds;
        @c70("ad_network_id")
        private String id;
        @c70("is_npa")
        private boolean isNPA;
        @c70("lookup_failed")
        private boolean lookupFailed;
        @c70("not_found")
        private boolean notFound;

        private AdNetworkLookupResponse() {
        }
    }

    /* access modifiers changed from: private */
    public static class ConsentInfoUpdateResponse {
        String responseInfo;
        boolean success;

        ConsentInfoUpdateResponse(boolean z, String str) {
            this.success = z;
            this.responseInfo = str;
        }
    }

    /* access modifiers changed from: private */
    public static class ConsentInfoUpdateTask extends AsyncTask<Void, Void, ConsentInfoUpdateResponse> {
        private static final String UPDATE_SUCCESS = "Consent update successful.";
        private final ConsentInformation consentInformation;
        private final ConsentInfoUpdateListener listener;
        private final List<String> publisherIds;
        private final String url;

        ConsentInfoUpdateTask(String str, ConsentInformation consentInformation2, List<String> list, ConsentInfoUpdateListener consentInfoUpdateListener) {
            this.url = str;
            this.listener = consentInfoUpdateListener;
            this.publisherIds = list;
            this.consentInformation = consentInformation2;
        }

        private ConsentInfoUpdateResponse makeConsentLookupRequest(String str) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                if (httpURLConnection.getResponseCode() != 200) {
                    return new ConsentInfoUpdateResponse(false, httpURLConnection.getResponseMessage());
                }
                String readStream = readStream(httpURLConnection.getInputStream());
                httpURLConnection.disconnect();
                this.consentInformation.updateConsentData(readStream, this.publisherIds);
                return new ConsentInfoUpdateResponse(true, UPDATE_SUCCESS);
            } catch (Exception e) {
                return new ConsentInfoUpdateResponse(false, e.getLocalizedMessage());
            }
        }

        private String readStream(InputStream inputStream) {
            byte[] bArr = new byte[1024];
            StringBuilder sb = new StringBuilder();
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            while (true) {
                try {
                    int read = bufferedInputStream.read(bArr);
                    if (read != -1) {
                        sb.append(new String(bArr, 0, read));
                    } else {
                        try {
                            break;
                        } catch (IOException e) {
                            Log.e(ConsentInformation.TAG, e.getLocalizedMessage());
                        }
                    }
                } catch (IOException e2) {
                    Log.e(ConsentInformation.TAG, e2.getLocalizedMessage());
                    try {
                        bufferedInputStream.close();
                    } catch (IOException e3) {
                        Log.e(ConsentInformation.TAG, e3.getLocalizedMessage());
                    }
                    return null;
                } catch (Throwable th) {
                    try {
                        bufferedInputStream.close();
                    } catch (IOException e4) {
                        Log.e(ConsentInformation.TAG, e4.getLocalizedMessage());
                    }
                    throw th;
                }
            }
            bufferedInputStream.close();
            return sb.toString();
        }

        public ConsentInfoUpdateResponse doInBackground(Void... voidArr) {
            String join = TextUtils.join(",", this.publisherIds);
            ConsentData loadConsentData = this.consentInformation.loadConsentData();
            Uri.Builder appendQueryParameter = Uri.parse(this.url).buildUpon().appendQueryParameter("pubs", join).appendQueryParameter("es", "2").appendQueryParameter("plat", loadConsentData.getSDKPlatformString()).appendQueryParameter("v", loadConsentData.getSDKVersionString());
            if (this.consentInformation.isTestDevice() && this.consentInformation.getDebugGeography() != DebugGeography.DEBUG_GEOGRAPHY_DISABLED) {
                appendQueryParameter = appendQueryParameter.appendQueryParameter("debug_geo", this.consentInformation.getDebugGeography().getCode().toString());
            }
            return makeConsentLookupRequest(appendQueryParameter.build().toString());
        }

        /* access modifiers changed from: protected */
        public void onPostExecute(ConsentInfoUpdateResponse consentInfoUpdateResponse) {
            if (consentInfoUpdateResponse.success) {
                this.listener.onConsentInfoUpdated(this.consentInformation.getConsentStatus());
            } else {
                this.listener.onFailedToUpdateConsentInfo(consentInfoUpdateResponse.responseInfo);
            }
        }
    }

    /* access modifiers changed from: protected */
    public static class ServerResponse {
        @c70("ad_network_ids")
        List<AdNetworkLookupResponse> adNetworkLookupResponses;
        List<AdProvider> companies;
        @c70("is_request_in_eea_or_unknown")
        Boolean isRequestLocationInEeaOrUnknown;

        protected ServerResponse() {
        }
    }

    private ConsentInformation(Context context2) {
        this.context = context2.getApplicationContext();
    }

    public static synchronized ConsentInformation getInstance(Context context2) {
        ConsentInformation consentInformation;
        synchronized (ConsentInformation.class) {
            if (instance == null) {
                instance = new ConsentInformation(context2);
            }
            consentInformation = instance;
        }
        return consentInformation;
    }

    private HashSet<AdProvider> getNonPersonalizedAdProviders(List<AdProvider> list, HashSet<String> hashSet) {
        ArrayList arrayList = new ArrayList();
        for (AdProvider adProvider : list) {
            if (hashSet.contains(adProvider.getId())) {
                arrayList.add(adProvider);
            }
        }
        return new HashSet<>(arrayList);
    }

    private boolean isEmulator() {
        String str = Build.FINGERPRINT;
        if (!str.startsWith("generic") && !str.startsWith(VungleApiClient.ConnectionTypeDetail.UNKNOWN)) {
            String str2 = Build.MODEL;
            return str2.contains("google_sdk") || str2.contains("Emulator") || str2.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion") || (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT);
        }
    }

    private String md5(String str) {
        for (int i = 0; i < 3; i++) {
            try {
                MessageDigest instance2 = MessageDigest.getInstance("MD5");
                instance2.update(str.getBytes());
                return String.format("%032X", new BigInteger(1, instance2.digest()));
            } catch (NoSuchAlgorithmException unused) {
            } catch (ArithmeticException unused2) {
                return null;
            }
        }
        return null;
    }

    private void saveConsentData(ConsentData consentData) {
        SharedPreferences.Editor edit = this.context.getSharedPreferences(PREFERENCES_FILE_KEY, 0).edit();
        edit.putString(CONSENT_DATA_KEY, new j60().h(consentData));
        edit.apply();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private synchronized void updateConsentData(String str, List<String> list) {
        boolean z;
        HashSet<AdProvider> hashSet;
        ServerResponse serverResponse = (ServerResponse) b.P0(ServerResponse.class).cast(new j60().d(str, ServerResponse.class));
        validatePublisherIds(serverResponse);
        HashSet<String> hashSet2 = new HashSet<>();
        List<AdNetworkLookupResponse> list2 = serverResponse.adNetworkLookupResponses;
        boolean z2 = true;
        if (list2 != null) {
            z = false;
            for (AdNetworkLookupResponse adNetworkLookupResponse : list2) {
                if (adNetworkLookupResponse.isNPA) {
                    List list3 = adNetworkLookupResponse.companyIds;
                    if (list3 != null) {
                        hashSet2.addAll(list3);
                    }
                    z = true;
                }
            }
        } else {
            z = false;
        }
        List<AdProvider> list4 = serverResponse.companies;
        if (list4 == null) {
            hashSet = new HashSet<>();
        } else if (z) {
            hashSet = getNonPersonalizedAdProviders(list4, hashSet2);
        } else {
            hashSet = new HashSet<>(serverResponse.companies);
        }
        ConsentData loadConsentData = loadConsentData();
        if (loadConsentData.hasNonPersonalizedPublisherId() == z) {
            z2 = false;
        }
        loadConsentData.setHasNonPersonalizedPublisherId(z);
        loadConsentData.setRawResponse(str);
        loadConsentData.setPublisherIds(new HashSet<>(list));
        loadConsentData.setAdProviders(hashSet);
        loadConsentData.setRequestLocationInEeaOrUnknown(serverResponse.isRequestLocationInEeaOrUnknown.booleanValue());
        if (!serverResponse.isRequestLocationInEeaOrUnknown.booleanValue()) {
            saveConsentData(loadConsentData);
            return;
        }
        if (!loadConsentData.getConsentedAdProviders().containsAll(loadConsentData.getAdProviders()) || z2) {
            loadConsentData.setConsentSource("sdk");
            loadConsentData.setConsentStatus(ConsentStatus.UNKNOWN);
            loadConsentData.setConsentedAdProviders(new HashSet<>());
        }
        saveConsentData(loadConsentData);
    }

    private void validatePublisherIds(ServerResponse serverResponse) {
        Boolean bool = serverResponse.isRequestLocationInEeaOrUnknown;
        if (bool == null) {
            throw new Exception("Could not parse Event FE preflight response.");
        } else if (serverResponse.companies == null && bool.booleanValue()) {
            throw new Exception("Could not parse Event FE preflight response.");
        } else if (serverResponse.isRequestLocationInEeaOrUnknown.booleanValue()) {
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet();
            for (AdNetworkLookupResponse adNetworkLookupResponse : serverResponse.adNetworkLookupResponses) {
                if (adNetworkLookupResponse.lookupFailed) {
                    hashSet.add(adNetworkLookupResponse.id);
                }
                if (adNetworkLookupResponse.notFound) {
                    hashSet2.add(adNetworkLookupResponse.id);
                }
            }
            if (!hashSet.isEmpty() || !hashSet2.isEmpty()) {
                StringBuilder sb = new StringBuilder("Response error.");
                if (!hashSet.isEmpty()) {
                    sb.append(String.format(" Lookup failure for: %s.", TextUtils.join(",", hashSet)));
                }
                if (!hashSet2.isEmpty()) {
                    sb.append(String.format(" Publisher Ids not found: %s", TextUtils.join(",", hashSet2)));
                }
                throw new Exception(sb.toString());
            }
        }
    }

    public void addTestDevice(String str) {
        this.testDevices.add(str);
    }

    public synchronized List<AdProvider> getAdProviders() {
        return new ArrayList(loadConsentData().getAdProviders());
    }

    public synchronized ConsentStatus getConsentStatus() {
        return loadConsentData().getConsentStatus();
    }

    public DebugGeography getDebugGeography() {
        return this.debugGeography;
    }

    /* access modifiers changed from: protected */
    public String getHashedDeviceId() {
        String str;
        ContentResolver contentResolver = this.context.getContentResolver();
        if (contentResolver == null) {
            str = null;
        } else {
            str = Settings.Secure.getString(contentResolver, "android_id");
        }
        if (str == null || isEmulator()) {
            str = "emulator";
        }
        return md5(str);
    }

    public boolean isRequestLocationInEeaOrUnknown() {
        return loadConsentData().isRequestLocationInEeaOrUnknown();
    }

    public synchronized boolean isTaggedForUnderAgeOfConsent() {
        return loadConsentData().isTaggedForUnderAgeOfConsent();
    }

    public boolean isTestDevice() {
        return isEmulator() || this.testDevices.contains(this.hashedDeviceId);
    }

    /* access modifiers changed from: protected */
    public ConsentData loadConsentData() {
        String string = this.context.getSharedPreferences(PREFERENCES_FILE_KEY, 0).getString(CONSENT_DATA_KEY, "");
        if (TextUtils.isEmpty(string)) {
            return new ConsentData();
        }
        return (ConsentData) new j60().c(string, ConsentData.class);
    }

    public void requestConsentInfoUpdate(String[] strArr, ConsentInfoUpdateListener consentInfoUpdateListener) {
        requestConsentInfoUpdate(strArr, MOBILE_ADS_SERVER_URL, consentInfoUpdateListener);
    }

    public synchronized void reset() {
        SharedPreferences.Editor edit = this.context.getSharedPreferences(PREFERENCES_FILE_KEY, 0).edit();
        edit.clear();
        edit.apply();
        this.testDevices = new ArrayList();
    }

    public void setConsentStatus(ConsentStatus consentStatus) {
        setConsentStatus(consentStatus, "programmatic");
    }

    public void setDebugGeography(DebugGeography debugGeography2) {
        this.debugGeography = debugGeography2;
    }

    /* access modifiers changed from: protected */
    public void setHashedDeviceId(String str) {
        this.hashedDeviceId = str;
    }

    public synchronized void setTagForUnderAgeOfConsent(boolean z) {
        ConsentData loadConsentData = loadConsentData();
        loadConsentData.tagForUnderAgeOfConsent(z);
        saveConsentData(loadConsentData);
    }

    /* access modifiers changed from: protected */
    public void requestConsentInfoUpdate(String[] strArr, String str, ConsentInfoUpdateListener consentInfoUpdateListener) {
        if (isTestDevice()) {
            Log.i(TAG, "This request is sent from a test device.");
        } else {
            String hashedDeviceId2 = getHashedDeviceId();
            StringBuilder sb = new StringBuilder(String.valueOf(hashedDeviceId2).length() + 93);
            sb.append("Use ConsentInformation.getInstance(context).addTestDevice(\"");
            sb.append(hashedDeviceId2);
            sb.append("\") to get test ads on this device.");
            Log.i(TAG, sb.toString());
        }
        new ConsentInfoUpdateTask(str, this, Arrays.asList(strArr), consentInfoUpdateListener).execute(new Void[0]);
    }

    /* access modifiers changed from: protected */
    public synchronized void setConsentStatus(ConsentStatus consentStatus, String str) {
        ConsentData loadConsentData = loadConsentData();
        if (consentStatus == ConsentStatus.UNKNOWN) {
            loadConsentData.setConsentedAdProviders(new HashSet<>());
        } else {
            loadConsentData.setConsentedAdProviders(loadConsentData.getAdProviders());
        }
        loadConsentData.setConsentSource(str);
        loadConsentData.setConsentStatus(consentStatus);
        saveConsentData(loadConsentData);
    }
}
