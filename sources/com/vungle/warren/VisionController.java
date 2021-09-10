package com.vungle.warren;

import android.annotation.TargetApi;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.Cookie;
import com.vungle.warren.model.VisionData;
import com.vungle.warren.model.VisionDataDBAdapter;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.utility.NetworkProvider;
import com.vungle.warren.vision.VisionAggregationData;
import com.vungle.warren.vision.VisionAggregationInfo;
import com.vungle.warren.vision.VisionConfig;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* access modifiers changed from: package-private */
public class VisionController {
    static final String ADVERTISER_DETAILS = "advertiser_details";
    static final String AGGREGATE = "aggregate";
    static final String CAMPAIGN_DETAILS = "campaign_details";
    static final String CREATIVE_DETAILS = "creative_details";
    static final String DATA_SCIENCE_CACHE = "data_science_cache";
    static final String FILTER_ID = "_id";
    static final String LAST_TIME_VIEWED = "last_time_viewed";
    static final String LAST_VIEWED_ADVERTISER_ID = "last_viewed_advertiser_id";
    static final String LAST_VIEWED_CAMPAIGN_ID = "last_viewed_campaign_id";
    static final String LAST_VIEWED_CREATIVE_ID = "last_viewed_creative_id";
    static final String TOTAL_VIEW_COUNT = "total_view_count";
    static final String VIEW_COUNT = "view_count";
    static final String VISION = "vision";
    static final String VISION_COOKIE = "visionCookie";
    static final String WINDOW = "window";
    private VisionConfig config = new VisionConfig();
    private final NetworkProvider networkProvider;
    private final Repository repository;

    VisionController(Repository repository2, NetworkProvider networkProvider2) {
        this.repository = repository2;
        this.networkProvider = networkProvider2;
    }

    private String getDataScienceCache() {
        Cookie cookie = (Cookie) this.repository.load(VISION_COOKIE, Cookie.class).get();
        if (cookie == null) {
            return null;
        }
        return cookie.getString(DATA_SCIENCE_CACHE);
    }

    /* access modifiers changed from: package-private */
    public void clearData() {
        this.repository.trimVisionData(0);
    }

    /* access modifiers changed from: package-private */
    public String getFilterName(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1329100269:
                if (str.equals(CAMPAIGN_DETAILS)) {
                    c = 0;
                    break;
                }
                break;
            case 1272113586:
                if (str.equals(CREATIVE_DETAILS)) {
                    c = 1;
                    break;
                }
                break;
            case 1845893934:
                if (str.equals(ADVERTISER_DETAILS)) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return "campaign";
            case 1:
                return VisionDataDBAdapter.VisionDataColumns.COLUMN_CREATIVE;
            case 2:
                return VisionDataDBAdapter.VisionDataColumns.COLUMN_ADVERTISER;
            default:
                return null;
        }
    }

    @TargetApi(VungleException.SERVER_ERROR)
    public s60 getPayload() {
        int i;
        int i2;
        VisionController visionController = this;
        s60 s60 = new s60();
        String dataScienceCache = getDataScienceCache();
        if (dataScienceCache != null) {
            s60.l(DATA_SCIENCE_CACHE, dataScienceCache);
        }
        if (visionController.config.viewLimit != null) {
            int currentNetworkType = visionController.networkProvider.getCurrentNetworkType();
            if (currentNetworkType != 0) {
                if (currentNetworkType != 1) {
                    if (currentNetworkType != 4) {
                        if (currentNetworkType != 9) {
                            if (currentNetworkType != 17) {
                                if (currentNetworkType != 6) {
                                    if (currentNetworkType != 7) {
                                        i = visionController.config.viewLimit.device;
                                    }
                                }
                            }
                        }
                    }
                }
                VisionConfig.Limits limits = visionController.config.viewLimit;
                i2 = limits.wifi;
                if (i2 <= 0) {
                    i = limits.device;
                }
                i = i2;
            }
            VisionConfig.Limits limits2 = visionController.config.viewLimit;
            i2 = limits2.mobile;
            if (i2 <= 0) {
                i = limits2.device;
            }
            i = i2;
        } else {
            i = 0;
        }
        long currentTimeMillis = System.currentTimeMillis();
        m60 m60 = new m60();
        s60.i(AGGREGATE, m60);
        int[] iArr = visionController.config.aggregationTimeWindows;
        if (iArr != null) {
            int length = iArr.length;
            int i3 = 0;
            while (i3 < length) {
                int i4 = iArr[i3];
                long millis = currentTimeMillis - TimeUnit.DAYS.toMillis((long) i4);
                VisionAggregationInfo visionAggregationInfo = visionController.repository.getVisionAggregationInfo(millis).get();
                s60 s602 = new s60();
                s602.k(WINDOW, Integer.valueOf(i4));
                s602.l(LAST_VIEWED_CREATIVE_ID, visionAggregationInfo != null ? visionAggregationInfo.lastCreative : null);
                s602.k(TOTAL_VIEW_COUNT, Integer.valueOf(visionAggregationInfo != null ? visionAggregationInfo.totalCount : 0));
                String[] strArr = visionController.config.aggregationFilters;
                if (strArr != null) {
                    int length2 = strArr.length;
                    int i5 = 0;
                    while (i5 < length2) {
                        String str = strArr[i5];
                        m60 m602 = new m60();
                        s602.i(str, m602);
                        String filterName = visionController.getFilterName(str);
                        List<VisionAggregationData> list = visionController.repository.getVisionAggregationData(millis, i, filterName).get();
                        if (list != null) {
                            for (VisionAggregationData visionAggregationData : list) {
                                s60 s603 = new s60();
                                s603.l(ic.i(filterName, FILTER_ID), visionAggregationData.id);
                                s603.k(VIEW_COUNT, Integer.valueOf(visionAggregationData.viewCount));
                                s603.k(LAST_TIME_VIEWED, Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(visionAggregationData.lastTimeStamp)));
                                m602.i(s603);
                                i = i;
                                iArr = iArr;
                                filterName = filterName;
                                length = length;
                            }
                        }
                        i5++;
                        visionController = this;
                        currentTimeMillis = currentTimeMillis;
                        i = i;
                        iArr = iArr;
                        length = length;
                    }
                }
                m60.i(s602);
                i3++;
                visionController = this;
                currentTimeMillis = currentTimeMillis;
                i = i;
                iArr = iArr;
                length = length;
            }
        }
        return s60;
    }

    /* access modifiers changed from: package-private */
    public VisionConfig getVisionConfig() {
        return this.config;
    }

    /* access modifiers changed from: package-private */
    public boolean isEnabled() {
        return this.config.enabled;
    }

    /* access modifiers changed from: package-private */
    public void reportData(String str, String str2, String str3) {
        this.repository.save(new VisionData(System.currentTimeMillis(), str, str2, str3));
        Repository repository2 = this.repository;
        VisionConfig.Limits limits = this.config.viewLimit;
        repository2.trimVisionData(limits != null ? limits.device : 0);
    }

    /* access modifiers changed from: package-private */
    public void setConfig(VisionConfig visionConfig) {
        this.config = visionConfig;
        if (visionConfig.enabled) {
            Repository repository2 = this.repository;
            VisionConfig.Limits limits = visionConfig.viewLimit;
            repository2.trimVisionData(limits != null ? limits.device : 0);
        }
    }

    /* access modifiers changed from: package-private */
    public void setDataScienceCache(String str) {
        Cookie cookie = new Cookie(VISION_COOKIE);
        if (str != null) {
            cookie.putValue(DATA_SCIENCE_CACHE, str);
        }
        this.repository.save(cookie);
    }
}
