package com.vungle.warren.model;

import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.webkit.URLUtil;
import com.facebook.ads.AdError;
import com.vungle.warren.AdConfig;
import com.vungle.warren.model.AdvertisementDBAdapter;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class Advertisement {
    public static final int DONE = 3;
    public static final int ERROR = 4;
    private static final String FILE_SCHEME = "file://";
    public static final String KEY_POSTROLL = "postroll";
    public static final String KEY_TEMPLATE = "template";
    public static final String KEY_VIDEO = "video";
    public static final int LANDSCAPE = 1;
    public static final int NEW = 0;
    public static final int PORTRAIT = 0;
    public static final int READY = 1;
    static final String START_MUTED = "START_MUTED";
    private static final String TAG = "Advertisement";
    public static final int TYPE_VUNGLE_LOCAL = 0;
    public static final int TYPE_VUNGLE_MRAID = 1;
    private static final String UNKNOWN = "unknown";
    public static final int VIEWING = 2;
    AdConfig adConfig;
    String adMarketId;
    public long adRequestStartTime;
    String adToken;
    @AdType
    int adType;
    String appID;
    public long assetDownloadDuration;
    public long assetDownloadStartTime;
    String bidToken;
    Map<String, Pair<String, String>> cacheableAssets = new HashMap();
    String campaign;
    List<Checkpoint> checkpoints;
    String[] clickUrls;
    String[] closeUrls;
    int countdown;
    boolean ctaClickArea = true;
    String ctaDestinationUrl;
    boolean ctaOverlayEnabled;
    String ctaUrl;
    int delay;
    boolean enableOm;
    long expireTime;
    String identifier;
    String md5;
    Map<String, String> mraidFiles = new HashMap();
    String[] muteUrls;
    String omExtraVast;
    String placementId;
    String[] postRollClickUrls;
    String[] postRollViewUrls;
    String postrollBundleUrl;
    boolean requiresNonMarketInstall;
    int retryCount;
    int showCloseDelay;
    int showCloseIncentivized;
    int state = 0;
    String templateId;
    Map<String, String> templateSettings;
    String templateType;
    String templateUrl;
    long ttDownload;
    String[] unmuteUrls;
    String[] videoClickUrls;
    int videoHeight;
    String videoIdentifier;
    String videoUrl;
    int videoWidth;

    public @interface AdType {
    }

    public @interface CacheKey {
    }

    public static class Checkpoint implements Comparable<Checkpoint> {
        @c70("percentage")
        private byte percentage;
        @c70("urls")
        private String[] urls;

        public Checkpoint(s60 s60) {
            if (JsonUtil.hasNonNull(s60, "checkpoint")) {
                this.percentage = (byte) ((int) (s60.n("checkpoint").c() * 100.0f));
                if (JsonUtil.hasNonNull(s60, "urls")) {
                    m60 o = s60.o("urls");
                    this.urls = new String[o.size()];
                    for (int i = 0; i < o.size(); i++) {
                        if (o.k(i) == null || "null".equalsIgnoreCase(o.k(i).toString())) {
                            this.urls[i] = "";
                        } else {
                            this.urls[i] = o.k(i).h();
                        }
                    }
                    return;
                }
                throw new IllegalArgumentException("Checkpoint missing reporting URL!");
            }
            throw new IllegalArgumentException("Checkpoint missing percentage!");
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Checkpoint)) {
                return false;
            }
            Checkpoint checkpoint = (Checkpoint) obj;
            if (checkpoint.percentage != this.percentage || checkpoint.urls.length != this.urls.length) {
                return false;
            }
            int i = 0;
            while (true) {
                String[] strArr = this.urls;
                if (i >= strArr.length) {
                    return true;
                }
                if (!checkpoint.urls[i].equals(strArr[i])) {
                    return false;
                }
                i++;
            }
        }

        public byte getPercentage() {
            return this.percentage;
        }

        public String[] getUrls() {
            return (String[]) this.urls.clone();
        }

        public int hashCode() {
            String[] strArr = this.urls;
            return (((this.percentage * 31) + strArr.length) * 31) + Arrays.hashCode(strArr);
        }

        public int compareTo(Checkpoint checkpoint) {
            return Float.compare((float) this.percentage, (float) checkpoint.percentage);
        }

        public Checkpoint(m60 m60, byte b) {
            if (m60.size() != 0) {
                this.urls = new String[m60.size()];
                for (int i = 0; i < m60.size(); i++) {
                    this.urls[i] = m60.k(i).h();
                }
                this.percentage = b;
                return;
            }
            throw new IllegalArgumentException("Empty URLS!");
        }
    }

    public @interface Orientation {
    }

    public @interface State {
    }

    Advertisement() {
    }

    private boolean isValidUrl(String str) {
        return !TextUtils.isEmpty(str) && dh0.n(str) != null;
    }

    public void configure(AdConfig adConfig2) {
        if (adConfig2 == null) {
            this.adConfig = new AdConfig();
        } else {
            this.adConfig = adConfig2;
        }
    }

    public s60 createMRAIDArgs() {
        if (this.templateSettings != null) {
            HashMap hashMap = new HashMap(this.templateSettings);
            for (Map.Entry<String, Pair<String, String>> entry : this.cacheableAssets.entrySet()) {
                hashMap.put(entry.getKey(), entry.getValue().first);
            }
            if (!this.mraidFiles.isEmpty()) {
                hashMap.putAll(this.mraidFiles);
            }
            String str = "true";
            if (!str.equalsIgnoreCase((String) hashMap.get(START_MUTED))) {
                if ((getAdConfig().getSettings() & 1) == 0) {
                    str = "false";
                }
                hashMap.put(START_MUTED, str);
            }
            s60 s60 = new s60();
            for (Map.Entry entry2 : hashMap.entrySet()) {
                s60.l((String) entry2.getKey(), (String) entry2.getValue());
            }
            return s60;
        }
        throw new IllegalArgumentException("Advertisement does not have MRAID Arguments!");
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Advertisement)) {
            return false;
        }
        Advertisement advertisement = (Advertisement) obj;
        if (!(advertisement.adType == this.adType && advertisement.delay == this.delay && advertisement.showCloseDelay == this.showCloseDelay && advertisement.showCloseIncentivized == this.showCloseIncentivized && advertisement.countdown == this.countdown && advertisement.videoWidth == this.videoWidth && advertisement.videoHeight == this.videoHeight && advertisement.ctaOverlayEnabled == this.ctaOverlayEnabled && advertisement.ctaClickArea == this.ctaClickArea && advertisement.retryCount == this.retryCount && advertisement.enableOm == this.enableOm && advertisement.requiresNonMarketInstall == this.requiresNonMarketInstall && advertisement.state == this.state && (str = advertisement.identifier) != null && (str2 = this.identifier) != null && str.equals(str2) && advertisement.campaign.equals(this.campaign) && advertisement.videoUrl.equals(this.videoUrl) && advertisement.md5.equals(this.md5) && advertisement.postrollBundleUrl.equals(this.postrollBundleUrl) && advertisement.ctaDestinationUrl.equals(this.ctaDestinationUrl) && advertisement.ctaUrl.equals(this.ctaUrl) && advertisement.adToken.equals(this.adToken) && advertisement.videoIdentifier.equals(this.videoIdentifier))) {
            return false;
        }
        String str3 = advertisement.omExtraVast;
        if (str3 == null ? this.omExtraVast != null : !str3.equals(this.omExtraVast)) {
            return false;
        }
        if (!(advertisement.adMarketId.equals(this.adMarketId) && advertisement.bidToken.equals(this.bidToken) && advertisement.checkpoints.size() == this.checkpoints.size())) {
            return false;
        }
        for (int i = 0; i < this.checkpoints.size(); i++) {
            if (!advertisement.checkpoints.get(i).equals(this.checkpoints.get(i))) {
                return false;
            }
        }
        if (advertisement.muteUrls.length != this.muteUrls.length) {
            return false;
        }
        int i2 = 0;
        while (true) {
            String[] strArr = this.muteUrls;
            if (i2 < strArr.length) {
                if (!advertisement.muteUrls[i2].equals(strArr[i2])) {
                    return false;
                }
                i2++;
            } else if (advertisement.unmuteUrls.length != this.unmuteUrls.length) {
                return false;
            } else {
                int i3 = 0;
                while (true) {
                    String[] strArr2 = this.unmuteUrls;
                    if (i3 < strArr2.length) {
                        if (!advertisement.unmuteUrls[i3].equals(strArr2[i3])) {
                            return false;
                        }
                        i3++;
                    } else if (advertisement.closeUrls.length != this.closeUrls.length) {
                        return false;
                    } else {
                        int i4 = 0;
                        while (true) {
                            String[] strArr3 = this.closeUrls;
                            if (i4 < strArr3.length) {
                                if (!advertisement.closeUrls[i4].equals(strArr3[i4])) {
                                    return false;
                                }
                                i4++;
                            } else if (advertisement.postRollClickUrls.length != this.postRollClickUrls.length) {
                                return false;
                            } else {
                                int i5 = 0;
                                while (true) {
                                    String[] strArr4 = this.postRollClickUrls;
                                    if (i5 < strArr4.length) {
                                        if (!advertisement.postRollClickUrls[i5].equals(strArr4[i5])) {
                                            return false;
                                        }
                                        i5++;
                                    } else if (advertisement.postRollViewUrls.length != this.postRollViewUrls.length) {
                                        return false;
                                    } else {
                                        int i6 = 0;
                                        while (true) {
                                            String[] strArr5 = this.postRollViewUrls;
                                            if (i6 < strArr5.length) {
                                                if (!advertisement.postRollViewUrls[i6].equals(strArr5[i6])) {
                                                    return false;
                                                }
                                                i6++;
                                            } else if (advertisement.videoClickUrls.length != this.videoClickUrls.length) {
                                                return false;
                                            } else {
                                                int i7 = 0;
                                                while (true) {
                                                    String[] strArr6 = this.videoClickUrls;
                                                    if (i7 >= strArr6.length) {
                                                        return true;
                                                    }
                                                    if (!advertisement.videoClickUrls[i7].equals(strArr6[i7])) {
                                                        return false;
                                                    }
                                                    i7++;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public AdConfig getAdConfig() {
        return this.adConfig;
    }

    public String getAdMarketId() {
        return this.adMarketId;
    }

    public String getAdToken() {
        return this.adToken;
    }

    @AdType
    public int getAdType() {
        return this.adType;
    }

    public String getAdvertiserAppId() {
        String appID2 = getAppID();
        String appID3 = getAppID();
        if (appID3 != null && appID3.length() > 3) {
            try {
                JSONObject jSONObject = new JSONObject(appID3.substring(3));
                appID2 = jSONObject.isNull(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID) ? null : jSONObject.optString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, null);
            } catch (JSONException e) {
                Log.e(TAG, "JsonException : ", e);
            }
        }
        return TextUtils.isEmpty(appID2) ? "unknown" : appID2;
    }

    public String getAppID() {
        return this.appID;
    }

    public long getAssetDownloadDuration() {
        return this.assetDownloadDuration;
    }

    public String getBidToken() {
        return this.bidToken;
    }

    public String getCTAURL(boolean z) {
        int i = this.adType;
        if (i == 0) {
            return z ? this.ctaUrl : this.ctaDestinationUrl;
        }
        if (i == 1) {
            return this.ctaUrl;
        }
        StringBuilder q = ic.q("Unknown AdType ");
        q.append(this.adType);
        throw new IllegalArgumentException(q.toString());
    }

    public String getCampaign() {
        return this.campaign;
    }

    /* JADX WARNING: Removed duplicated region for block: B:8:0x001f A[ORIG_RETURN, RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:9:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String getCampaignId() {
        /*
            r3 = this;
            java.lang.String r0 = r3.getCampaign()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L_0x0018
            java.lang.String r1 = "\\|"
            java.lang.String[] r0 = r0.split(r1)
            int r1 = r0.length
            r2 = 1
            if (r1 < r2) goto L_0x0018
            r1 = 0
            r0 = r0[r1]
            goto L_0x0019
        L_0x0018:
            r0 = 0
        L_0x0019:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L_0x0021
            java.lang.String r0 = "unknown"
        L_0x0021:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.model.Advertisement.getCampaignId():java.lang.String");
    }

    public List<Checkpoint> getCheckpoints() {
        return this.checkpoints;
    }

    /* JADX WARNING: Removed duplicated region for block: B:8:0x001f A[ORIG_RETURN, RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:9:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String getCreativeId() {
        /*
            r3 = this;
            java.lang.String r0 = r3.getCampaign()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L_0x0018
            java.lang.String r1 = "\\|"
            java.lang.String[] r0 = r0.split(r1)
            int r1 = r0.length
            r2 = 2
            if (r1 < r2) goto L_0x0018
            r1 = 1
            r0 = r0[r1]
            goto L_0x0019
        L_0x0018:
            r0 = 0
        L_0x0019:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L_0x0021
            java.lang.String r0 = "unknown"
        L_0x0021:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.model.Advertisement.getCreativeId():java.lang.String");
    }

    public boolean getCtaClickArea() {
        return this.ctaClickArea;
    }

    public Map<String, String> getDownloadableUrls() {
        HashMap hashMap = new HashMap();
        int i = this.adType;
        if (i == 0) {
            hashMap.put(KEY_VIDEO, this.videoUrl);
            if (!TextUtils.isEmpty(this.postrollBundleUrl)) {
                hashMap.put(KEY_POSTROLL, this.postrollBundleUrl);
            }
        } else if (i == 1) {
            hashMap.put(KEY_TEMPLATE, this.templateUrl);
            for (Map.Entry<String, Pair<String, String>> entry : this.cacheableAssets.entrySet()) {
                String str = (String) entry.getValue().first;
                if (isValidUrl(str)) {
                    hashMap.put(URLUtil.guessFileName(str, null, null), str);
                }
            }
        } else {
            throw new IllegalStateException("Advertisement created without adType!");
        }
        return hashMap;
    }

    public long getExpireTime() {
        return this.expireTime * 1000;
    }

    public String getId() {
        String str = this.identifier;
        return str == null ? "" : str;
    }

    public boolean getOmEnabled() {
        return this.enableOm;
    }

    public String getOmExtraVast() {
        return this.omExtraVast;
    }

    @Orientation
    public int getOrientation() {
        return this.videoWidth > this.videoHeight ? 1 : 0;
    }

    public String getPlacementId() {
        return this.placementId;
    }

    public int getShowCloseDelay(boolean z) {
        int i;
        if (z) {
            i = this.showCloseIncentivized;
        } else {
            i = this.showCloseDelay;
        }
        return i * AdError.NETWORK_ERROR_CODE;
    }

    @State
    public int getState() {
        return this.state;
    }

    /* access modifiers changed from: package-private */
    public String getTemplateId() {
        return this.templateId;
    }

    public String getTemplateType() {
        return this.templateType;
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0042, code lost:
        if (r7.equals("postroll.view") == false) goto L_0x0085;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00eb, code lost:
        if (r7.equals(com.vungle.warren.analytics.AnalyticsEvent.Ad.postrollView) == false) goto L_0x012e;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String[] getTpatUrls(java.lang.String r7) {
        /*
        // Method dump skipped, instructions count: 476
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.model.Advertisement.getTpatUrls(java.lang.String):java.lang.String[]");
    }

    public long getTtDownload() {
        return this.ttDownload;
    }

    /* access modifiers changed from: package-private */
    public String getUrl() {
        return this.videoUrl;
    }

    public boolean hasPostroll() {
        return !TextUtils.isEmpty(this.postrollBundleUrl);
    }

    public int hashCode() {
        int w = ic.w(this.identifier, this.adType * 31, 31);
        String str = this.campaign;
        int w2 = (ic.w(this.videoIdentifier, ic.w(this.adToken, (ic.w(this.ctaUrl, ic.w(this.ctaDestinationUrl, (((ic.w(this.postrollBundleUrl, ic.w(this.md5, (((ic.w(this.videoUrl, (((((ic.w(str, (((((((((((((((this.checkpoints.hashCode() + w) * 31) + Arrays.hashCode(this.muteUrls)) * 31) + Arrays.hashCode(this.unmuteUrls)) * 31) + Arrays.hashCode(this.closeUrls)) * 31) + Arrays.hashCode(this.postRollClickUrls)) * 31) + Arrays.hashCode(this.postRollViewUrls)) * 31) + Arrays.hashCode(this.videoClickUrls)) * 31) + this.delay) * 31, 31) + this.showCloseDelay) * 31) + this.showCloseIncentivized) * 31) + this.countdown) * 31, 31) + this.videoWidth) * 31) + this.videoHeight) * 31, 31), 31) + (this.ctaOverlayEnabled ? 1 : 0)) * 31) + (this.ctaClickArea ? 1 : 0)) * 31, 31), 31) + this.retryCount) * 31, 31), 31) + (this.enableOm ? 1 : 0)) * 31;
        String str2 = this.omExtraVast;
        return ic.w(this.bidToken, ic.w(this.adMarketId, (((w2 + (str2 != null ? str2.hashCode() : 0)) * 31) + (this.requiresNonMarketInstall ? 1 : 0)) * 31, 31), 31) + this.state;
    }

    public boolean isCtaOverlayEnabled() {
        return this.ctaOverlayEnabled;
    }

    public boolean isRequiresNonMarketInstall() {
        return this.requiresNonMarketInstall;
    }

    public void setAdRequestStartTime(long j) {
        this.adRequestStartTime = j;
    }

    public void setAssetDownloadStartTime(long j) {
        this.assetDownloadStartTime = j;
    }

    public void setFinishedDownloadingTime(long j) {
        this.assetDownloadDuration = j - this.assetDownloadStartTime;
        this.ttDownload = j - this.adRequestStartTime;
    }

    public void setMraidAssetDir(File file) {
        for (Map.Entry<String, Pair<String, String>> entry : this.cacheableAssets.entrySet()) {
            String str = (String) entry.getValue().first;
            if (isValidUrl(str)) {
                File file2 = new File(file, URLUtil.guessFileName(str, null, null));
                if (file2.exists()) {
                    Map<String, String> map = this.mraidFiles;
                    String key = entry.getKey();
                    StringBuilder q = ic.q(FILE_SCHEME);
                    q.append(file2.getPath());
                    map.put(key, q.toString());
                }
            }
        }
    }

    public void setPlacementId(String str) {
        this.placementId = str;
    }

    public void setState(@State int i) {
        this.state = i;
    }

    public String toString() {
        StringBuilder q = ic.q("Advertisement{adType=");
        q.append(this.adType);
        q.append(", identifier='");
        ic.v(q, this.identifier, '\'', ", appID='");
        ic.v(q, this.appID, '\'', ", expireTime=");
        q.append(this.expireTime);
        q.append(", checkpoints=");
        q.append(this.checkpoints);
        q.append(", muteUrls=");
        q.append(Arrays.toString(this.muteUrls));
        q.append(", unmuteUrls=");
        q.append(Arrays.toString(this.unmuteUrls));
        q.append(", closeUrls=");
        q.append(Arrays.toString(this.closeUrls));
        q.append(", postRollClickUrls=");
        q.append(Arrays.toString(this.postRollClickUrls));
        q.append(", postRollViewUrls=");
        q.append(Arrays.toString(this.postRollViewUrls));
        q.append(", videoClickUrls=");
        q.append(Arrays.toString(this.videoClickUrls));
        q.append(", clickUrls=");
        q.append(Arrays.toString(this.clickUrls));
        q.append(", delay=");
        q.append(this.delay);
        q.append(", campaign='");
        ic.v(q, this.campaign, '\'', ", showCloseDelay=");
        q.append(this.showCloseDelay);
        q.append(", showCloseIncentivized=");
        q.append(this.showCloseIncentivized);
        q.append(", countdown=");
        q.append(this.countdown);
        q.append(", videoUrl='");
        ic.v(q, this.videoUrl, '\'', ", videoWidth=");
        q.append(this.videoWidth);
        q.append(", videoHeight=");
        q.append(this.videoHeight);
        q.append(", md5='");
        ic.v(q, this.md5, '\'', ", postrollBundleUrl='");
        ic.v(q, this.postrollBundleUrl, '\'', ", ctaOverlayEnabled=");
        q.append(this.ctaOverlayEnabled);
        q.append(", ctaClickArea=");
        q.append(this.ctaClickArea);
        q.append(", ctaDestinationUrl='");
        ic.v(q, this.ctaDestinationUrl, '\'', ", ctaUrl='");
        ic.v(q, this.ctaUrl, '\'', ", adConfig=");
        q.append(this.adConfig);
        q.append(", retryCount=");
        q.append(this.retryCount);
        q.append(", adToken='");
        ic.v(q, this.adToken, '\'', ", videoIdentifier='");
        ic.v(q, this.videoIdentifier, '\'', ", templateUrl='");
        ic.v(q, this.templateUrl, '\'', ", templateSettings=");
        q.append(this.templateSettings);
        q.append(", mraidFiles=");
        q.append(this.mraidFiles);
        q.append(", cacheableAssets=");
        q.append(this.cacheableAssets);
        q.append(", templateId='");
        ic.v(q, this.templateId, '\'', ", templateType='");
        ic.v(q, this.templateType, '\'', ", enableOm=");
        q.append(this.enableOm);
        q.append(", oMSDKExtraVast='");
        ic.v(q, this.omExtraVast, '\'', ", requiresNonMarketInstall=");
        q.append(this.requiresNonMarketInstall);
        q.append(", adMarketId='");
        ic.v(q, this.adMarketId, '\'', ", bidToken='");
        ic.v(q, this.bidToken, '\'', ", state=");
        q.append(this.state);
        q.append('\'');
        q.append(", assetDownloadStartTime='");
        q.append(this.assetDownloadStartTime);
        q.append('\'');
        q.append(", assetDownloadDuration='");
        q.append(this.assetDownloadDuration);
        q.append('\'');
        q.append(", adRequestStartTime='");
        q.append(this.adRequestStartTime);
        q.append('}');
        return q.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:203:0x04e9  */
    /* JADX WARNING: Removed duplicated region for block: B:206:0x0514  */
    /* JADX WARNING: Removed duplicated region for block: B:207:0x0521  */
    /* JADX WARNING: Removed duplicated region for block: B:210:0x052b  */
    /* JADX WARNING: Removed duplicated region for block: B:211:0x0538  */
    /* JADX WARNING: Removed duplicated region for block: B:214:0x0542  */
    /* JADX WARNING: Removed duplicated region for block: B:215:0x054f  */
    /* JADX WARNING: Removed duplicated region for block: B:218:0x0559  */
    /* JADX WARNING: Removed duplicated region for block: B:219:0x0566  */
    /* JADX WARNING: Removed duplicated region for block: B:222:0x0570  */
    /* JADX WARNING: Removed duplicated region for block: B:278:0x06dc  */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x0262  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public Advertisement(defpackage.s60 r15) {
        /*
        // Method dump skipped, instructions count: 1806
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.model.Advertisement.<init>(s60):void");
    }
}
