package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.ads.mediation.zza;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzapt extends zzapn {
    private MediationRewardedAd zzdnp;
    private final RtbAdapter zzdoo;
    private MediationInterstitialAd zzdop;
    private String zzdoq = "";

    public zzapt(RtbAdapter rtbAdapter) {
        this.zzdoo = rtbAdapter;
    }

    private static boolean zzc(zzvl zzvl) {
        if (zzvl.zzchq) {
            return true;
        }
        zzwr.zzqn();
        return zzaza.zzzw();
    }

    private final Bundle zzd(zzvl zzvl) {
        Bundle bundle;
        Bundle bundle2 = zzvl.zzchu;
        if (bundle2 == null || (bundle = bundle2.getBundle(this.zzdoo.getClass().getName())) == null) {
            return new Bundle();
        }
        return bundle;
    }

    private static Bundle zzdp(String str) {
        String valueOf = String.valueOf(str);
        zzazk.zzex(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str == null) {
                return bundle;
            }
            JSONObject jSONObject = new JSONObject(str);
            Bundle bundle2 = new Bundle();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                bundle2.putString(next, jSONObject.getString(next));
            }
            return bundle2;
        } catch (JSONException e) {
            zzazk.zzc("", e);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final zzzc getVideoController() {
        RtbAdapter rtbAdapter = this.zzdoo;
        if (!(rtbAdapter instanceof zza)) {
            return null;
        }
        try {
            return ((zza) rtbAdapter).getVideoController();
        } catch (Throwable th) {
            zzazk.zzc("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(String str, String str2, zzvl zzvl, zv zvVar, zzaoy zzaoy, zzank zzank, zzvs zzvs) {
        try {
            this.zzdoo.loadBannerAd(new MediationBannerAdConfiguration((Context) aw.P(zvVar), str, zzdp(str2), zzd(zzvl), zzc(zzvl), zzvl.zznb, zzvl.zzado, zzvl.zzadp, zza(str2, zzvl), com.google.android.gms.ads.zza.zza(zzvs.width, zzvs.height, zzvs.zzacy), this.zzdoq), new zzaps(this, zzaoy, zzank));
        } catch (Throwable th) {
            throw ic.x("Adapter failed to render banner ad.", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(String[] strArr, Bundle[] bundleArr) {
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final boolean zzaa(zv zvVar) {
        MediationRewardedAd mediationRewardedAd = this.zzdnp;
        if (mediationRewardedAd == null) {
            return false;
        }
        try {
            mediationRewardedAd.showAd((Context) aw.P(zvVar));
            return true;
        } catch (Throwable th) {
            zzazk.zzc("", th);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zzb(String str, String str2, zzvl zzvl, zv zvVar, zzapj zzapj, zzank zzank) {
        try {
            this.zzdoo.loadRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) aw.P(zvVar), str, zzdp(str2), zzd(zzvl), zzc(zzvl), zzvl.zznb, zzvl.zzado, zzvl.zzadp, zza(str2, zzvl), this.zzdoq), zza(zzapj, zzank));
        } catch (Throwable th) {
            throw ic.x("Adapter failed to render rewarded interstitial ad.", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zzdm(String str) {
        this.zzdoq = str;
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final zzapy zzvc() {
        return zzapy.zza(this.zzdoo.getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final zzapy zzvd() {
        return zzapy.zza(this.zzdoo.getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zzy(zv zvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final boolean zzz(zv zvVar) {
        MediationInterstitialAd mediationInterstitialAd = this.zzdop;
        if (mediationInterstitialAd == null) {
            return false;
        }
        try {
            mediationInterstitialAd.showAd((Context) aw.P(zvVar));
            return true;
        } catch (Throwable th) {
            zzazk.zzc("", th);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(String str, String str2, zzvl zzvl, zv zvVar, zzapd zzapd, zzank zzank) {
        try {
            this.zzdoo.loadInterstitialAd(new MediationInterstitialAdConfiguration((Context) aw.P(zvVar), str, zzdp(str2), zzd(zzvl), zzc(zzvl), zzvl.zznb, zzvl.zzado, zzvl.zzadp, zza(str2, zzvl), this.zzdoq), new zzapv(this, zzapd, zzank));
        } catch (Throwable th) {
            throw ic.x("Adapter failed to render interstitial ad.", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(String str, String str2, zzvl zzvl, zv zvVar, zzapj zzapj, zzank zzank) {
        try {
            this.zzdoo.loadRewardedAd(new MediationRewardedAdConfiguration((Context) aw.P(zvVar), str, zzdp(str2), zzd(zzvl), zzc(zzvl), zzvl.zznb, zzvl.zzado, zzvl.zzadp, zza(str2, zzvl), this.zzdoq), zza(zzapj, zzank));
        } catch (Throwable th) {
            throw ic.x("Adapter failed to render rewarded ad.", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(String str, String str2, zzvl zzvl, zv zvVar, zzape zzape, zzank zzank) {
        try {
            this.zzdoo.loadNativeAd(new MediationNativeAdConfiguration((Context) aw.P(zvVar), str, zzdp(str2), zzd(zzvl), zzc(zzvl), zzvl.zznb, zzvl.zzado, zzvl.zzadp, zza(str2, zzvl), this.zzdoq), new zzapu(this, zzape, zzank));
        } catch (Throwable th) {
            throw ic.x("Adapter failed to render rewarded ad.", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(zv zvVar, String str, Bundle bundle, Bundle bundle2, zzvs zzvs, zzapp zzapp) {
        AdFormat adFormat;
        try {
            zzapx zzapx = new zzapx(this, zzapp);
            RtbAdapter rtbAdapter = this.zzdoo;
            char c = 65535;
            switch (str.hashCode()) {
                case -1396342996:
                    if (str.equals("banner")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1052618729:
                    if (str.equals("native")) {
                        c = 4;
                        break;
                    }
                    break;
                case -239580146:
                    if (str.equals("rewarded")) {
                        c = 2;
                        break;
                    }
                    break;
                case 604727084:
                    if (str.equals("interstitial")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1911491517:
                    if (str.equals("rewarded_interstitial")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                adFormat = AdFormat.BANNER;
            } else if (c == 1) {
                adFormat = AdFormat.INTERSTITIAL;
            } else if (c == 2) {
                adFormat = AdFormat.REWARDED;
            } else if (c == 3) {
                adFormat = AdFormat.REWARDED_INTERSTITIAL;
            } else if (c == 4) {
                adFormat = AdFormat.NATIVE;
            } else {
                throw new IllegalArgumentException("Internal Error");
            }
            MediationConfiguration mediationConfiguration = new MediationConfiguration(adFormat, bundle2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(mediationConfiguration);
            rtbAdapter.collectSignals(new RtbSignalData((Context) aw.P(zvVar), arrayList, bundle, com.google.android.gms.ads.zza.zza(zzvs.width, zzvs.height, zzvs.zzacy)), zzapx);
        } catch (Throwable th) {
            throw ic.x("Error generating signals for RTB", th);
        }
    }

    private final MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> zza(zzapj zzapj, zzank zzank) {
        return new zzapw(this, zzapj, zzank);
    }

    private static String zza(String str, zzvl zzvl) {
        String str2 = zzvl.zzadq;
        try {
            return new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException unused) {
            return str2;
        }
    }
}
