package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;

public final class zzvq {
    public static final zzvq zzcif = new zzvq();

    protected zzvq() {
    }

    public static zzvl zza(Context context, zzzk zzzk) {
        List list;
        Context context2;
        zzve zzve;
        String str;
        Date birthday = zzzk.getBirthday();
        long time = birthday != null ? birthday.getTime() : -1;
        String contentUrl = zzzk.getContentUrl();
        int gender = zzzk.getGender();
        Set<String> keywords = zzzk.getKeywords();
        if (!keywords.isEmpty()) {
            list = Collections.unmodifiableList(new ArrayList(keywords));
            context2 = context;
        } else {
            context2 = context;
            list = null;
        }
        boolean isTestDevice = zzzk.isTestDevice(context2);
        Location location = zzzk.getLocation();
        Bundle networkExtrasBundle = zzzk.getNetworkExtrasBundle(AdMobAdapter.class);
        if (zzzk.zzro() != null) {
            zzve = new zzve(zzzk.zzro().getAdString(), zzwr.zzqv().containsKey(zzzk.zzro().getQueryInfo()) ? zzwr.zzqv().get(zzzk.zzro().getQueryInfo()) : "");
        } else {
            zzve = null;
        }
        boolean manualImpressionsEnabled = zzzk.getManualImpressionsEnabled();
        String publisherProvidedId = zzzk.getPublisherProvidedId();
        SearchAdRequest zzrj = zzzk.zzrj();
        zzaaq zzaaq = zzrj != null ? new zzaaq(zzrj) : null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            zzwr.zzqn();
            str = zzaza.zza(Thread.currentThread().getStackTrace(), packageName);
        } else {
            str = null;
        }
        boolean isDesignedForFamilies = zzzk.isDesignedForFamilies();
        RequestConfiguration requestConfiguration = zzzn.zzrs().getRequestConfiguration();
        return new zzvl(8, time, networkExtrasBundle, gender, list, isTestDevice, Math.max(zzzk.zzrm(), requestConfiguration.getTagForChildDirectedTreatment()), manualImpressionsEnabled, publisherProvidedId, zzaaq, location, contentUrl, zzzk.zzrl(), zzzk.getCustomTargeting(), Collections.unmodifiableList(new ArrayList(zzzk.zzrn())), zzzk.zzri(), str, isDesignedForFamilies, zzve, Math.max(zzzk.zzrp(), requestConfiguration.getTagForUnderAgeOfConsent()), (String) Collections.max(Arrays.asList(zzzk.getMaxAdContentRating(), requestConfiguration.getMaxAdContentRating()), zzvp.zzcie), zzzk.zzrh(), zzzk.zzrq());
    }

    public static zzava zza(Context context, zzzk zzzk, String str) {
        return new zzava(zza(context, zzzk), str);
    }
}
