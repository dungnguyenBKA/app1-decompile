package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class zzzk {
    private final int zzado;
    private final int zzadp;
    private final String zzadq;
    private final boolean zzbni;
    private final int zzcho;
    private final String zzchr;
    private final String zzcht;
    private final Bundle zzchv;
    private final String zzchx;
    private final boolean zzchz;
    private final List<String> zzcib;
    private final int zzcic;
    private final Bundle zzcka;
    private final AdInfo zzcke;
    private final Map<Class<? extends NetworkExtras>, NetworkExtras> zzckf;
    private final SearchAdRequest zzckg;
    private final Set<String> zzckh;
    private final Set<String> zzcki;
    private final Date zzmx;
    private final Set<String> zzmz;
    private final Location zznb;

    public zzzk(zzzj zzzj) {
        this(zzzj, null);
    }

    @Deprecated
    public final Date getBirthday() {
        return this.zzmx;
    }

    public final String getContentUrl() {
        return this.zzcht;
    }

    public final Bundle getCustomEventExtrasBundle(Class<? extends CustomEvent> cls) {
        Bundle bundle = this.zzcka.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    public final Bundle getCustomTargeting() {
        return this.zzchv;
    }

    @Deprecated
    public final int getGender() {
        return this.zzcho;
    }

    public final Set<String> getKeywords() {
        return this.zzmz;
    }

    public final Location getLocation() {
        return this.zznb;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzbni;
    }

    public final String getMaxAdContentRating() {
        return this.zzadq;
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.zzckf.get(cls);
    }

    public final Bundle getNetworkExtrasBundle(Class<? extends MediationExtrasReceiver> cls) {
        return this.zzcka.getBundle(cls.getName());
    }

    public final String getPublisherProvidedId() {
        return this.zzchr;
    }

    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.zzchz;
    }

    public final boolean isTestDevice(Context context) {
        RequestConfiguration requestConfiguration = zzzn.zzrs().getRequestConfiguration();
        zzwr.zzqn();
        String zzbm = zzaza.zzbm(context);
        return this.zzckh.contains(zzbm) || requestConfiguration.getTestDeviceIds().contains(zzbm);
    }

    public final List<String> zzrh() {
        return new ArrayList(this.zzcib);
    }

    public final String zzri() {
        return this.zzchx;
    }

    public final SearchAdRequest zzrj() {
        return this.zzckg;
    }

    public final Map<Class<? extends NetworkExtras>, NetworkExtras> zzrk() {
        return this.zzckf;
    }

    public final Bundle zzrl() {
        return this.zzcka;
    }

    public final int zzrm() {
        return this.zzado;
    }

    public final Set<String> zzrn() {
        return this.zzcki;
    }

    public final AdInfo zzro() {
        return this.zzcke;
    }

    public final int zzrp() {
        return this.zzadp;
    }

    public final int zzrq() {
        return this.zzcic;
    }

    public zzzk(zzzj zzzj, SearchAdRequest searchAdRequest) {
        this.zzmx = zzzj.zzmx;
        this.zzcht = zzzj.zzcht;
        this.zzcib = zzzj.zzcib;
        this.zzcho = zzzj.zzcho;
        this.zzmz = Collections.unmodifiableSet(zzzj.zzcjz);
        this.zznb = zzzj.zznb;
        this.zzbni = zzzj.zzbni;
        this.zzcka = zzzj.zzcka;
        this.zzckf = Collections.unmodifiableMap(zzzj.zzckb);
        this.zzchr = zzzj.zzchr;
        this.zzchx = zzzj.zzchx;
        this.zzckg = searchAdRequest;
        this.zzado = zzzj.zzado;
        this.zzckh = Collections.unmodifiableSet(zzzj.zzckc);
        this.zzchv = zzzj.zzchv;
        this.zzcki = Collections.unmodifiableSet(zzzj.zzckd);
        this.zzchz = zzzj.zzchz;
        this.zzcke = zzzj.zzcke;
        this.zzadp = zzzj.zzadp;
        this.zzadq = zzzj.zzadq;
        this.zzcic = zzzj.zzcic;
    }
}
