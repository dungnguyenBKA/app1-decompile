package com.google.android.gms.ads.admanager;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.internal.ads.zzzk;
import java.util.List;

public final class AdManagerAdRequest extends AdRequest {

    public static final class Builder extends AdRequest.Builder {
        public final Builder addCategoryExclusion(String str) {
            this.a.zzcl(str);
            return this;
        }

        public final Builder addCustomTargeting(String str, String str2) {
            this.a.zzd(str, str2);
            return this;
        }

        @Override // com.google.android.gms.ads.AdRequest.Builder
        public final AdManagerAdRequest build() {
            return new AdManagerAdRequest(this, null);
        }

        @Override // com.google.android.gms.ads.AdRequest.Builder
        public final Builder setAdInfo(AdInfo adInfo) {
            this.a.zza(adInfo);
            return this;
        }

        public final Builder setPublisherProvidedId(String str) {
            this.a.zzcj(str);
            return this;
        }

        public final Builder addCustomTargeting(String str, List<String> list) {
            if (list != null) {
                this.a.zzd(str, TextUtils.join(",", list));
            }
            return this;
        }
    }

    AdManagerAdRequest(Builder builder, a aVar) {
        super(builder);
    }

    @Override // com.google.android.gms.ads.AdRequest
    public final Bundle getCustomTargeting() {
        return this.a.getCustomTargeting();
    }

    public final String getPublisherProvidedId() {
        return this.a.getPublisherProvidedId();
    }

    @Override // com.google.android.gms.ads.AdRequest
    public final zzzk zzds() {
        return this.a;
    }
}
