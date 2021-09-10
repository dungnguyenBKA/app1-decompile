package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzzj;
import com.google.android.gms.internal.ads.zzzk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Date;
import java.util.List;
import java.util.Set;

@Deprecated
public final class PublisherAdRequest {
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int GENDER_FEMALE = 2;
    public static final int GENDER_MALE = 1;
    public static final int GENDER_UNKNOWN = 0;
    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_G = "G";
    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_MA = "MA";
    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_PG = "PG";
    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_T = "T";
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;
    private final zzzk a;

    public static final class Builder {
        private final zzzj a = new zzzj();

        public final Builder addCategoryExclusion(String str) {
            this.a.zzcl(str);
            return this;
        }

        public final Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.a.zzb(cls, bundle);
            return this;
        }

        public final Builder addCustomTargeting(String str, String str2) {
            this.a.zzd(str, str2);
            return this;
        }

        public final Builder addKeyword(String str) {
            this.a.zzcf(str);
            return this;
        }

        public final Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.a.zza(networkExtras);
            return this;
        }

        public final Builder addNetworkExtrasBundle(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
            this.a.zza(cls, bundle);
            return this;
        }

        @Deprecated
        public final Builder addTestDevice(String str) {
            this.a.zzcg(str);
            return this;
        }

        public final PublisherAdRequest build() {
            return new PublisherAdRequest(this, null);
        }

        public final Builder setAdInfo(AdInfo adInfo) {
            this.a.zza(adInfo);
            return this;
        }

        @Deprecated
        public final Builder setBirthday(Date date) {
            this.a.zza(date);
            return this;
        }

        public final Builder setContentUrl(String str) {
            n.i(str, "Content URL must be non-null.");
            n.f(str, "Content URL must be non-empty.");
            boolean z = str.length() <= 512;
            Object[] objArr = {Integer.valueOf((int) AdRequest.MAX_CONTENT_URL_LENGTH), Integer.valueOf(str.length())};
            if (z) {
                this.a.zzci(str);
                return this;
            }
            throw new IllegalArgumentException(String.format("Content URL must not exceed %d in length.  Provided length was %d.", objArr));
        }

        @Deprecated
        public final Builder setGender(int i) {
            this.a.zzcw(i);
            return this;
        }

        public final Builder setHttpTimeoutMillis(int i) {
            this.a.zzcy(i);
            return this;
        }

        @Deprecated
        public final Builder setIsDesignedForFamilies(boolean z) {
            this.a.zzaa(z);
            return this;
        }

        public final Builder setLocation(Location location) {
            this.a.zza(location);
            return this;
        }

        @Deprecated
        public final Builder setManualImpressionsEnabled(boolean z) {
            this.a.setManualImpressionsEnabled(z);
            return this;
        }

        @Deprecated
        public final Builder setMaxAdContentRating(String str) {
            this.a.zzcm(str);
            return this;
        }

        public final Builder setNeighboringContentUrls(List<String> list) {
            if (list == null) {
                zzazk.zzex("neighboring content URLs list should not be null");
                return this;
            }
            this.a.zzc(list);
            return this;
        }

        public final Builder setPublisherProvidedId(String str) {
            this.a.zzcj(str);
            return this;
        }

        public final Builder setRequestAgent(String str) {
            this.a.zzck(str);
            return this;
        }

        @Deprecated
        public final Builder setTagForUnderAgeOfConsent(int i) {
            this.a.zzcx(i);
            return this;
        }

        @Deprecated
        public final Builder tagForChildDirectedTreatment(boolean z) {
            this.a.zzz(z);
            return this;
        }

        public final Builder addCustomTargeting(String str, List<String> list) {
            if (list != null) {
                this.a.zzd(str, TextUtils.join(",", list));
            }
            return this;
        }
    }

    @Deprecated
    @Retention(RetentionPolicy.SOURCE)
    public @interface MaxAdContentRating {
    }

    @Deprecated
    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForUnderAgeOfConsent {
    }

    PublisherAdRequest(Builder builder, a aVar) {
        this.a = new zzzk(builder.a);
    }

    @Deprecated
    public static void updateCorrelator() {
    }

    @Deprecated
    public final Date getBirthday() {
        return this.a.getBirthday();
    }

    public final String getContentUrl() {
        return this.a.getContentUrl();
    }

    public final <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.a.getCustomEventExtrasBundle(cls);
    }

    public final Bundle getCustomTargeting() {
        return this.a.getCustomTargeting();
    }

    @Deprecated
    public final int getGender() {
        return this.a.getGender();
    }

    public final Set<String> getKeywords() {
        return this.a.getKeywords();
    }

    public final Location getLocation() {
        return this.a.getLocation();
    }

    public final boolean getManualImpressionsEnabled() {
        return this.a.getManualImpressionsEnabled();
    }

    public final List<String> getNeighboringContentUrls() {
        return this.a.zzrh();
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.a.getNetworkExtras(cls);
    }

    public final <T extends MediationExtrasReceiver> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.a.getNetworkExtrasBundle(cls);
    }

    public final String getPublisherProvidedId() {
        return this.a.getPublisherProvidedId();
    }

    public final boolean isTestDevice(Context context) {
        return this.a.isTestDevice(context);
    }

    public final zzzk zzds() {
        return this.a;
    }
}
