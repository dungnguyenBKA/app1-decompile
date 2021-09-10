package com.vungle.warren.model;

import android.text.TextUtils;
import com.vungle.warren.AdConfig;
import com.vungle.warren.SessionData;
import com.vungle.warren.model.AdvertisementDBAdapter;
import com.vungle.warren.model.ReportDBAdapter;
import com.vungle.warren.model.VisionDataDBAdapter;
import com.vungle.warren.ui.JavascriptBridge;
import java.util.ArrayList;
import java.util.List;

public class Report {
    public static final int FAILED = 3;
    public static final int NEW = 0;
    public static final int READY = 1;
    public static final int SENDING = 2;
    long adDuration;
    String adSize;
    long adStartTime;
    String adToken;
    String adType;
    String advertisementID;
    String appId;
    public long assetDownloadDuration;
    String campaign;
    final List<String> clickedThrough;
    final List<String> errors;
    boolean headerBidding;
    boolean incentivized;
    public long initTimeStamp;
    int ordinal;
    String placementId;
    int status;
    String templateId;
    long ttDownload;
    String url;
    final List<UserAction> userActions;
    String userID;
    long videoLength;
    int videoViewed;
    volatile boolean wasCTAClicked;

    public @interface Status {
    }

    public static class UserAction {
        @c70("action")
        private String action;
        @c70(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP)
        private long timestamp;
        @c70("value")
        private String value;

        public UserAction(String str, String str2, long j) {
            this.action = str;
            this.value = str2;
            this.timestamp = j;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            UserAction userAction = (UserAction) obj;
            return userAction.action.equals(this.action) && userAction.value.equals(this.value) && userAction.timestamp == this.timestamp;
        }

        public int hashCode() {
            int w = ic.w(this.value, this.action.hashCode() * 31, 31);
            long j = this.timestamp;
            return w + ((int) (j ^ (j >>> 32)));
        }

        public s60 toJson() {
            s60 s60 = new s60();
            s60.l("action", this.action);
            String str = this.value;
            if (str != null && !str.isEmpty()) {
                s60.l("value", this.value);
            }
            s60.k("timestamp_millis", Long.valueOf(this.timestamp));
            return s60;
        }
    }

    Report() {
        this.status = 0;
        this.userActions = new ArrayList();
        this.clickedThrough = new ArrayList();
        this.errors = new ArrayList();
    }

    public synchronized boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            if (getClass() == obj.getClass()) {
                Report report = (Report) obj;
                if (!report.placementId.equals(this.placementId)) {
                    return false;
                }
                if (!report.adToken.equals(this.adToken)) {
                    return false;
                }
                if (!report.appId.equals(this.appId)) {
                    return false;
                }
                if (report.incentivized != this.incentivized) {
                    return false;
                }
                if (report.headerBidding != this.headerBidding) {
                    return false;
                }
                if (report.adStartTime != this.adStartTime) {
                    return false;
                }
                if (!report.url.equals(this.url)) {
                    return false;
                }
                if (report.videoLength != this.videoLength) {
                    return false;
                }
                if (report.adDuration != this.adDuration) {
                    return false;
                }
                if (report.ttDownload != this.ttDownload) {
                    return false;
                }
                if (!report.campaign.equals(this.campaign)) {
                    return false;
                }
                if (!report.adType.equals(this.adType)) {
                    return false;
                }
                if (!report.templateId.equals(this.templateId)) {
                    return false;
                }
                if (report.wasCTAClicked != this.wasCTAClicked) {
                    return false;
                }
                if (!report.userID.equals(this.userID)) {
                    return false;
                }
                if (report.initTimeStamp != this.initTimeStamp) {
                    return false;
                }
                if (report.assetDownloadDuration != this.assetDownloadDuration) {
                    return false;
                }
                if (report.clickedThrough.size() != this.clickedThrough.size()) {
                    return false;
                }
                for (int i = 0; i < this.clickedThrough.size(); i++) {
                    if (!report.clickedThrough.get(i).equals(this.clickedThrough.get(i))) {
                        return false;
                    }
                }
                if (report.errors.size() != this.errors.size()) {
                    return false;
                }
                for (int i2 = 0; i2 < this.errors.size(); i2++) {
                    if (!report.errors.get(i2).equals(this.errors.get(i2))) {
                        return false;
                    }
                }
                if (report.userActions.size() != this.userActions.size()) {
                    return false;
                }
                for (int i3 = 0; i3 < this.userActions.size(); i3++) {
                    if (!report.userActions.get(i3).equals(this.userActions.get(i3))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public long getAdDuration() {
        return this.adDuration;
    }

    public long getAdStartTime() {
        return this.adStartTime;
    }

    public String getAdvertisementID() {
        return this.advertisementID;
    }

    public String getId() {
        return this.placementId + "_" + this.adStartTime;
    }

    public String getPlacementId() {
        return this.placementId;
    }

    @Status
    public int getStatus() {
        return this.status;
    }

    public String getUserID() {
        return this.userID;
    }

    public synchronized int hashCode() {
        int i;
        int hashCode;
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        i = 1;
        hashCode = ((((((this.placementId.hashCode() * 31) + this.adToken.hashCode()) * 31) + this.appId.hashCode()) * 31) + (this.incentivized ? 1 : 0)) * 31;
        if (!this.headerBidding) {
            i = 0;
        }
        j = this.adStartTime;
        j2 = this.videoLength;
        j3 = this.adDuration;
        j4 = this.ttDownload;
        j5 = this.initTimeStamp;
        j6 = this.assetDownloadDuration;
        return ((((((((((((((((((((((((((((((hashCode + i) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + this.url.hashCode()) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + ((int) (j5 ^ (j5 >>> 32)))) * 31) + ((int) (j6 ^ (j6 >>> 32)))) * 31) + this.campaign.hashCode()) * 31) + this.userActions.hashCode()) * 31) + this.clickedThrough.hashCode()) * 31) + this.errors.hashCode()) * 31) + this.adType.hashCode()) * 31) + this.templateId.hashCode()) * 31) + this.userID.hashCode()) * 31) + (this.wasCTAClicked ? 1 : 0);
    }

    public boolean isCTAClicked() {
        return this.wasCTAClicked;
    }

    public synchronized void recordAction(String str, String str2, long j) {
        this.userActions.add(new UserAction(str, str2, j));
        this.clickedThrough.add(str);
        if (str.equals(JavascriptBridge.MraidHandler.DOWNLOAD_ACTION)) {
            this.wasCTAClicked = true;
        }
    }

    public synchronized void recordError(String str) {
        this.errors.add(str);
    }

    public void recordProgress(int i) {
        this.videoViewed = i;
    }

    public void setAdDuration(long j) {
        this.adDuration = j;
    }

    public void setStatus(@Status int i) {
        this.status = i;
    }

    public void setTtDownload(long j) {
        this.ttDownload = j;
    }

    public void setVideoLength(long j) {
        this.videoLength = j;
    }

    public synchronized s60 toReportBody() {
        s60 s60;
        s60 = new s60();
        s60.l("placement_reference_id", this.placementId);
        s60.l(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_AD_TOKEN, this.adToken);
        s60.l(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, this.appId);
        s60.k("incentivized", Integer.valueOf(this.incentivized ? 1 : 0));
        s60.j("header_bidding", Boolean.valueOf(this.headerBidding));
        s60.k(ReportDBAdapter.ReportColumns.COLUMN_AD_START_TIME, Long.valueOf(this.adStartTime));
        if (!TextUtils.isEmpty(this.url)) {
            s60.l(ReportDBAdapter.ReportColumns.COLUMN_URL, this.url);
        }
        s60.k("adDuration", Long.valueOf(this.adDuration));
        s60.k("ttDownload", Long.valueOf(this.ttDownload));
        s60.l("campaign", this.campaign);
        s60.l("adType", this.adType);
        s60.l("templateId", this.templateId);
        s60.k(ReportDBAdapter.ReportColumns.COLUMN_INIT_TIMESTAMP, Long.valueOf(this.initTimeStamp));
        s60.k("asset_download_duration", Long.valueOf(this.assetDownloadDuration));
        if (!TextUtils.isEmpty(this.adSize)) {
            s60.l("ad_size", this.adSize);
        }
        m60 m60 = new m60();
        s60 s602 = new s60();
        s602.k("startTime", Long.valueOf(this.adStartTime));
        int i = this.videoViewed;
        if (i > 0) {
            s602.k(ReportDBAdapter.ReportColumns.COLUMN_VIDEO_VIEWED, Integer.valueOf(i));
        }
        long j = this.videoLength;
        if (j > 0) {
            s602.k("videoLength", Long.valueOf(j));
        }
        m60 m602 = new m60();
        for (UserAction userAction : this.userActions) {
            m602.i(userAction.toJson());
        }
        s602.i("userActions", m602);
        m60.i(s602);
        s60.i("plays", m60);
        m60 m603 = new m60();
        for (String str : this.errors) {
            m603.j(str);
        }
        s60.i(ReportDBAdapter.ReportColumns.COLUMN_ERRORS, m603);
        m60 m604 = new m60();
        for (String str2 : this.clickedThrough) {
            m604.j(str2);
        }
        s60.i("clickedThrough", m604);
        if (this.incentivized && !TextUtils.isEmpty(this.userID)) {
            s60.l("user", this.userID);
        }
        int i2 = this.ordinal;
        if (i2 > 0) {
            s60.k("ordinal_view", Integer.valueOf(i2));
        }
        return s60;
    }

    public Report(Advertisement advertisement, Placement placement, long j, SessionData sessionData) {
        this(advertisement, placement, j, null, sessionData);
    }

    public Report(Advertisement advertisement, Placement placement, long j, String str, SessionData sessionData) {
        this.status = 0;
        this.userActions = new ArrayList();
        this.clickedThrough = new ArrayList();
        this.errors = new ArrayList();
        this.placementId = placement.getId();
        this.adToken = advertisement.getAdToken();
        this.advertisementID = advertisement.getId();
        this.appId = advertisement.getAppID();
        this.incentivized = placement.isIncentivized();
        this.headerBidding = placement.isHeaderBidding();
        this.adStartTime = j;
        this.url = advertisement.getUrl();
        this.ttDownload = -1;
        this.campaign = advertisement.getCampaign();
        this.initTimeStamp = sessionData != null ? sessionData.getInitTimeStamp() : 0;
        this.assetDownloadDuration = advertisement.getAssetDownloadDuration();
        int adType2 = advertisement.getAdType();
        if (adType2 == 0) {
            this.adType = "vungle_local";
        } else if (adType2 == 1) {
            this.adType = "vungle_mraid";
        } else {
            throw new IllegalArgumentException("Unknown ad type, cannot process!");
        }
        this.templateId = advertisement.getTemplateId();
        if (str == null) {
            this.userID = "";
        } else {
            this.userID = str;
        }
        this.ordinal = advertisement.getAdConfig().getOrdinal();
        AdConfig.AdSize adSize2 = advertisement.getAdConfig().getAdSize();
        if (AdConfig.AdSize.isBannerAdSize(adSize2)) {
            this.adSize = adSize2.getName();
        }
    }
}
