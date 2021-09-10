package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdInfo;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

public final class zzzj {
    private int zzado = -1;
    private int zzadp = -1;
    private String zzadq;
    private boolean zzbni = false;
    private int zzcho = -1;
    private String zzchr;
    private String zzcht;
    private final Bundle zzchv = new Bundle();
    private String zzchx;
    private boolean zzchz;
    private final List<String> zzcib = new ArrayList();
    private int zzcic = 60000;
    private final HashSet<String> zzcjz = new HashSet<>();
    private final Bundle zzcka = new Bundle();
    private final HashMap<Class<? extends NetworkExtras>, NetworkExtras> zzckb = new HashMap<>();
    private final HashSet<String> zzckc = new HashSet<>();
    private final HashSet<String> zzckd = new HashSet<>();
    private AdInfo zzcke;
    private Date zzmx;
    private Location zznb;

    public final void setManualImpressionsEnabled(boolean z) {
        this.zzbni = z;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v1, resolved type: java.util.HashMap<java.lang.Class<? extends com.google.android.gms.ads.mediation.NetworkExtras>, com.google.android.gms.ads.mediation.NetworkExtras> */
    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public final void zza(NetworkExtras networkExtras) {
        if (networkExtras instanceof AdMobExtras) {
            zza(AdMobAdapter.class, ((AdMobExtras) networkExtras).getExtras());
        } else {
            this.zzckb.put(networkExtras.getClass(), networkExtras);
        }
    }

    @Deprecated
    public final void zzaa(boolean z) {
        this.zzchz = z;
    }

    public final void zzb(Class<? extends CustomEvent> cls, Bundle bundle) {
        if (this.zzcka.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null) {
            this.zzcka.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
        }
        this.zzcka.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter").putBundle(cls.getName(), bundle);
    }

    public final void zzc(List<String> list) {
        this.zzcib.clear();
        for (String str : list) {
            if (TextUtils.isEmpty(str)) {
                zzazk.zzex("neighboring content URL should not be null or empty");
            } else {
                this.zzcib.add(str);
            }
        }
    }

    public final void zzcf(String str) {
        this.zzcjz.add(str);
    }

    public final void zzcg(String str) {
        this.zzckc.add(str);
    }

    public final void zzch(String str) {
        this.zzckc.remove(str);
    }

    public final void zzci(String str) {
        this.zzcht = str;
    }

    public final void zzcj(String str) {
        this.zzchr = str;
    }

    public final void zzck(String str) {
        this.zzchx = str;
    }

    public final void zzcl(String str) {
        this.zzckd.add(str);
    }

    @Deprecated
    public final void zzcm(String str) {
        if ("G".equals(str) || "PG".equals(str) || "T".equals(str) || "MA".equals(str)) {
            this.zzadq = str;
        }
    }

    @Deprecated
    public final void zzcw(int i) {
        this.zzcho = i;
    }

    @Deprecated
    public final void zzcx(int i) {
        if (i == -1 || i == 0 || i == 1) {
            this.zzadp = i;
        }
    }

    public final void zzcy(int i) {
        this.zzcic = i;
    }

    public final void zzd(String str, String str2) {
        this.zzchv.putString(str, str2);
    }

    @Deprecated
    public final void zzz(boolean z) {
        this.zzado = z ? 1 : 0;
    }

    public final void zza(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
        this.zzcka.putBundle(cls.getName(), bundle);
    }

    @Deprecated
    public final void zza(Date date) {
        this.zzmx = date;
    }

    public final void zza(Location location) {
        this.zznb = location;
    }

    public final void zza(AdInfo adInfo) {
        this.zzcke = adInfo;
    }
}
