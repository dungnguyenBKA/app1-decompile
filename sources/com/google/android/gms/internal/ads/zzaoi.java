package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.zza;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public final class zzaoi<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> extends zzani {
    private final MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> zzdoc;
    private final NETWORK_EXTRAS zzdod;

    public zzaoi(MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter, NETWORK_EXTRAS network_extras) {
        this.zzdoc = mediationAdapter;
        this.zzdod = network_extras;
    }

    private static boolean zzc(zzvl zzvl) {
        if (zzvl.zzchq) {
            return true;
        }
        zzwr.zzqn();
        return zzaza.zzzw();
    }

    private final SERVER_PARAMETERS zzdk(String str) {
        HashMap hashMap;
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                hashMap = new HashMap(jSONObject.length());
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.getString(next));
                }
            } catch (Throwable th) {
                throw ic.x("", th);
            }
        } else {
            hashMap = new HashMap(0);
        }
        Class<SERVER_PARAMETERS> serverParametersType = this.zzdoc.getServerParametersType();
        if (serverParametersType == null) {
            return null;
        }
        SERVER_PARAMETERS newInstance = serverParametersType.newInstance();
        newInstance.load(hashMap);
        return newInstance;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void destroy() {
        try {
            this.zzdoc.destroy();
        } catch (Throwable th) {
            throw ic.x("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final Bundle getInterstitialAdapterInfo() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzzc getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final boolean isInitialized() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void pause() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void resume() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void showInterstitial() {
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.zzdoc;
        if (!(mediationAdapter instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            zzazk.zzex(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzazk.zzdy("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.zzdoc).showInterstitial();
        } catch (Throwable th) {
            throw ic.x("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void showVideo() {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zzvl zzvl, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zzvl zzvl, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzajj zzajj, List<zzajr> list) {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzavf zzavf, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvl zzvl, String str, zzavf zzavf, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvl zzvl, String str, String str2, zzank zzank, zzaeh zzaeh, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvs zzvs, zzvl zzvl, String str, zzank zzank) {
        zza(zvVar, zzvs, zzvl, str, null, zzank);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzb(zv zvVar, zzvl zzvl, String str, zzank zzank) {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzc(zv zvVar, zzvl zzvl, String str, zzank zzank) {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzs(zv zvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzt(zv zvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zv zzuu() {
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.zzdoc;
        if (!(mediationAdapter instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            zzazk.zzex(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return aw.Q(((MediationBannerAdapter) mediationAdapter).getBannerView());
        } catch (Throwable th) {
            throw ic.x("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzanr zzuv() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzans zzuw() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final Bundle zzux() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final Bundle zzuy() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final boolean zzuz() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzafn zzva() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzanx zzvb() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzapy zzvc() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzapy zzvd() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvs zzvs, zzvl zzvl, String str, String str2, zzank zzank) {
        AdSize adSize;
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.zzdoc;
        if (!(mediationAdapter instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            zzazk.zzex(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        zzazk.zzdy("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.zzdoc;
            zzaol zzaol = new zzaol(zzank);
            Activity activity = (Activity) aw.P(zvVar);
            SERVER_PARAMETERS zzdk = zzdk(str);
            int i = 0;
            AdSize[] adSizeArr = {AdSize.SMART_BANNER, AdSize.BANNER, AdSize.IAB_MRECT, AdSize.IAB_BANNER, AdSize.IAB_LEADERBOARD, AdSize.IAB_WIDE_SKYSCRAPER};
            while (true) {
                if (i < 6) {
                    if (adSizeArr[i].getWidth() == zzvs.width && adSizeArr[i].getHeight() == zzvs.height) {
                        adSize = adSizeArr[i];
                        break;
                    }
                    i++;
                } else {
                    adSize = new AdSize(zza.zza(zzvs.width, zzvs.height, zzvs.zzacy));
                    break;
                }
            }
            mediationBannerAdapter.requestBannerAd(zzaol, activity, zzdk, adSize, zzaox.zza(zzvl, zzc(zzvl)), this.zzdod);
        } catch (Throwable th) {
            throw ic.x("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvl zzvl, String str, zzank zzank) {
        zza(zvVar, zzvl, str, (String) null, zzank);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvl zzvl, String str, String str2, zzank zzank) {
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.zzdoc;
        if (!(mediationAdapter instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            zzazk.zzex(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzazk.zzdy("Requesting interstitial ad from adapter.");
        try {
            ((MediationInterstitialAdapter) this.zzdoc).requestInterstitialAd(new zzaol(zzank), (Activity) aw.P(zvVar), zzdk(str), zzaox.zza(zzvl, zzc(zzvl)), this.zzdod);
        } catch (Throwable th) {
            throw ic.x("", th);
        }
    }
}
