package com.vungle.warren.model;

import com.vungle.warren.AdConfig;
import com.vungle.warren.model.PlacementDBAdapter;
import java.util.Iterator;

public class Placement {
    private static final String TAG = "Placement";
    public static final int TYPE_DEFAULT = 0;
    public static final int TYPE_DEPRECTAED_TEMPLATE = 2;
    public static final int TYPE_VUNGLE_BANNER = 1;
    int adRefreshDuration;
    protected AdConfig.AdSize adSize;
    int autoCachePriority;
    boolean autoCached;
    boolean headerBidding;
    String identifier;
    boolean incentivized;
    boolean isValid;
    @PlacementAdType
    int placementAdType = 0;
    long wakeupTime;

    public @interface PlacementAdType {
    }

    public Placement(String str) {
        this.identifier = str;
        this.autoCached = false;
        this.incentivized = false;
        this.headerBidding = false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Placement placement = (Placement) obj;
        if (this.autoCached != placement.autoCached || this.incentivized != placement.incentivized || this.headerBidding != placement.headerBidding || this.wakeupTime != placement.wakeupTime || this.isValid != placement.isValid || this.adRefreshDuration != placement.adRefreshDuration || getAdSize() != placement.getAdSize()) {
            return false;
        }
        String str = this.identifier;
        String str2 = placement.identifier;
        return str == null ? str2 == null : str.equals(str2);
    }

    public int getAdRefreshDuration() {
        int i = this.adRefreshDuration;
        if (i <= 0) {
            return 0;
        }
        return i;
    }

    public AdConfig.AdSize getAdSize() {
        AdConfig.AdSize adSize2 = this.adSize;
        return adSize2 == null ? AdConfig.AdSize.VUNGLE_DEFAULT : adSize2;
    }

    public int getAutoCachePriority() {
        return this.autoCachePriority;
    }

    public String getId() {
        return this.identifier;
    }

    @PlacementAdType
    public int getPlacementAdType() {
        return this.placementAdType;
    }

    public long getWakeupTime() {
        return this.wakeupTime;
    }

    public int hashCode() {
        String str = this.identifier;
        int hashCode = str != null ? str.hashCode() : 0;
        long j = this.wakeupTime;
        int i = this.adRefreshDuration;
        return getAdSize().hashCode() + (((((((((((hashCode * 31) + (this.autoCached ? 1 : 0)) * 31) + (this.incentivized ? 1 : 0)) * 31) + (this.headerBidding ? 1 : 0)) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + (i ^ (i >>> 32))) * 31);
    }

    public boolean isAutoCached() {
        if (AdConfig.AdSize.isBannerAdSize(this.adSize)) {
            return true;
        }
        return this.autoCached;
    }

    public boolean isHeaderBidding() {
        return this.headerBidding;
    }

    public boolean isIncentivized() {
        return this.incentivized;
    }

    public boolean isValid() {
        return this.isValid;
    }

    public void setAdSize(AdConfig.AdSize adSize2) {
        this.adSize = adSize2;
    }

    public void setValid(boolean z) {
        this.isValid = z;
    }

    public void setWakeupTime(long j) {
        this.wakeupTime = j;
    }

    public void snooze(long j) {
        this.wakeupTime = (j * 1000) + System.currentTimeMillis();
    }

    public String toString() {
        StringBuilder q = ic.q("Placement{identifier='");
        ic.v(q, this.identifier, '\'', ", autoCached=");
        q.append(this.autoCached);
        q.append(", incentivized=");
        q.append(this.incentivized);
        q.append(", headerBidding=");
        q.append(this.headerBidding);
        q.append(", wakeupTime=");
        q.append(this.wakeupTime);
        q.append(", refreshTime=");
        q.append(this.adRefreshDuration);
        q.append(", adSize=");
        q.append(getAdSize().getName());
        q.append(", autoCachePriority=");
        q.append(this.autoCachePriority);
        q.append('}');
        return q.toString();
    }

    Placement() {
    }

    public Placement(s60 s60) {
        if (s60.q("reference_id")) {
            this.identifier = s60.n("reference_id").h();
            this.autoCached = s60.q("is_auto_cached") && s60.n("is_auto_cached").a();
            if (!s60.q("cache_priority") || !this.autoCached) {
                this.autoCachePriority = Integer.MAX_VALUE;
            } else {
                try {
                    int d = s60.n("cache_priority").d();
                    this.autoCachePriority = d;
                    if (d < 1) {
                        this.autoCachePriority = Integer.MAX_VALUE;
                    }
                } catch (Exception unused) {
                    this.autoCachePriority = Integer.MAX_VALUE;
                }
            }
            this.incentivized = s60.q("is_incentivized") && s60.n("is_incentivized").a();
            this.adRefreshDuration = s60.q("ad_refresh_duration") ? s60.n("ad_refresh_duration").d() : 0;
            this.headerBidding = s60.q("header_bidding") && s60.n("header_bidding").a();
            if (JsonUtil.hasNonNull(s60, PlacementDBAdapter.PlacementColumns.COLUMN_SUPPORTED_TEMPLATE_TYPES)) {
                Iterator<p60> it = s60.o(PlacementDBAdapter.PlacementColumns.COLUMN_SUPPORTED_TEMPLATE_TYPES).iterator();
                if (it.hasNext()) {
                    p60 next = it.next();
                    next.h();
                    if (next.h().equals("banner")) {
                        this.placementAdType = 1;
                    } else if (next.h().equals("flexfeed") || next.h().equals("flexview")) {
                        this.placementAdType = 2;
                    } else {
                        this.placementAdType = 0;
                    }
                }
            }
        } else {
            throw new IllegalArgumentException("Missing placement reference ID, cannot use placement!");
        }
    }
}
