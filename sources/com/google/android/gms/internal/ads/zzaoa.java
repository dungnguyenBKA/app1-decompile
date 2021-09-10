package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.mediation.zza;
import com.google.android.gms.ads.reward.mediation.InitializableMediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzaoa extends zzani {
    private final Object zzdnl;
    private zzaof zzdnm;
    private zzavf zzdnn;
    private zv zzdno;
    private MediationRewardedAd zzdnp;

    public zzaoa(MediationAdapter mediationAdapter) {
        this.zzdnl = mediationAdapter;
    }

    private final Bundle zzd(zzvl zzvl) {
        Bundle bundle;
        Bundle bundle2 = zzvl.zzchu;
        if (bundle2 == null || (bundle = bundle2.getBundle(this.zzdnl.getClass().getName())) == null) {
            return new Bundle();
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void destroy() {
        Object obj = this.zzdnl;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onDestroy();
            } catch (Throwable th) {
                throw ic.x("", th);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final Bundle getInterstitialAdapterInfo() {
        Object obj = this.zzdnl;
        if (obj instanceof zzbga) {
            return ((zzbga) obj).getInterstitialAdapterInfo();
        }
        String canonicalName = zzbga.class.getCanonicalName();
        String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName2).length() + String.valueOf(canonicalName).length() + 22);
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzazk.zzex(sb.toString());
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzzc getVideoController() {
        Object obj = this.zzdnl;
        if (!(obj instanceof zza)) {
            return null;
        }
        try {
            return ((zza) obj).getVideoController();
        } catch (Throwable th) {
            zzazk.zzc("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final boolean isInitialized() {
        Object obj = this.zzdnl;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzazk.zzdy("Check if adapter is initialized.");
            try {
                return ((MediationRewardedVideoAdAdapter) this.zzdnl).isInitialized();
            } catch (Throwable th) {
                throw ic.x("", th);
            }
        } else if (obj instanceof Adapter) {
            return this.zzdnn != null;
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder p = ic.p(ic.m(canonicalName3, ic.m(canonicalName2, ic.m(canonicalName, 26))), canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            p.append(canonicalName3);
            zzazk.zzex(p.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void pause() {
        Object obj = this.zzdnl;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onPause();
            } catch (Throwable th) {
                throw ic.x("", th);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void resume() {
        Object obj = this.zzdnl;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onResume();
            } catch (Throwable th) {
                throw ic.x("", th);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void setImmersiveMode(boolean z) {
        Object obj = this.zzdnl;
        if (!(obj instanceof OnImmersiveModeUpdatedListener)) {
            String canonicalName = OnImmersiveModeUpdatedListener.class.getCanonicalName();
            String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName2).length() + String.valueOf(canonicalName).length() + 22);
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzazk.zzdy(sb.toString());
            return;
        }
        try {
            ((OnImmersiveModeUpdatedListener) obj).onImmersiveModeUpdated(z);
        } catch (Throwable th) {
            zzazk.zzc("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void showInterstitial() {
        if (this.zzdnl instanceof MediationInterstitialAdapter) {
            zzazk.zzdy("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.zzdnl).showInterstitial();
            } catch (Throwable th) {
                throw ic.x("", th);
            }
        } else {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(ic.m(canonicalName2, ic.m(canonicalName, 22)));
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void showVideo() {
        Object obj = this.zzdnl;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzazk.zzdy("Show rewarded video ad from adapter.");
            try {
                ((MediationRewardedVideoAdAdapter) this.zzdnl).showVideo();
            } catch (Throwable th) {
                throw ic.x("", th);
            }
        } else if (obj instanceof Adapter) {
            MediationRewardedAd mediationRewardedAd = this.zzdnp;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) aw.P(this.zzdno));
            } else {
                zzazk.zzev("Can not show null mediated rewarded ad.");
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder p = ic.p(ic.m(canonicalName3, ic.m(canonicalName2, ic.m(canonicalName, 26))), canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            p.append(canonicalName3);
            zzazk.zzex(p.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvs zzvs, zzvl zzvl, String str, zzank zzank) {
        zza(zvVar, zzvs, zzvl, str, null, zzank);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzb(zv zvVar, zzvl zzvl, String str, zzank zzank) {
        if (this.zzdnl instanceof Adapter) {
            zzazk.zzdy("Requesting rewarded ad from adapter.");
            try {
                ((Adapter) this.zzdnl).loadRewardedAd(new MediationRewardedAdConfiguration((Context) aw.P(zvVar), "", zza(str, zzvl, (String) null), zzd(zzvl), zzc(zzvl), zzvl.zznb, zzvl.zzado, zzvl.zzadp, zza(str, zzvl), ""), zza(zzank));
            } catch (Exception e) {
                zzazk.zzc("", e);
                throw new RemoteException();
            }
        } else {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName2).length() + String.valueOf(canonicalName).length() + 22);
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzc(zv zvVar, zzvl zzvl, String str, zzank zzank) {
        if (this.zzdnl instanceof Adapter) {
            zzazk.zzdy("Requesting rewarded interstitial ad from adapter.");
            try {
                ((Adapter) this.zzdnl).loadRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) aw.P(zvVar), "", zza(str, zzvl, (String) null), zzd(zzvl), zzc(zzvl), zzvl.zznb, zzvl.zzado, zzvl.zzadp, zza(str, zzvl), ""), zza(zzank));
            } catch (Exception e) {
                zzazk.zzc("", e);
                throw new RemoteException();
            }
        } else {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName2).length() + String.valueOf(canonicalName).length() + 22);
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzs(zv zvVar) {
        Context context = (Context) aw.P(zvVar);
        Object obj = this.zzdnl;
        if (obj instanceof OnContextChangedListener) {
            ((OnContextChangedListener) obj).onContextChanged(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzt(zv zvVar) {
        if (this.zzdnl instanceof Adapter) {
            zzazk.zzdy("Show rewarded ad from adapter.");
            MediationRewardedAd mediationRewardedAd = this.zzdnp;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) aw.P(zvVar));
            } else {
                zzazk.zzev("Can not show null mediation rewarded ad.");
                throw new RemoteException();
            }
        } else {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName2).length() + String.valueOf(canonicalName).length() + 22);
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zv zzuu() {
        Object obj = this.zzdnl;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return aw.Q(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                throw ic.x("", th);
            }
        } else {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(ic.m(canonicalName2, ic.m(canonicalName, 22)));
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzanr zzuv() {
        NativeAdMapper zzvi = this.zzdnm.zzvi();
        if (zzvi instanceof NativeAppInstallAdMapper) {
            return new zzaoh((NativeAppInstallAdMapper) zzvi);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzans zzuw() {
        NativeAdMapper zzvi = this.zzdnm.zzvi();
        if (zzvi instanceof NativeContentAdMapper) {
            return new zzaog((NativeContentAdMapper) zzvi);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final Bundle zzux() {
        Object obj = this.zzdnl;
        if (obj instanceof zzbfz) {
            return ((zzbfz) obj).zzux();
        }
        String canonicalName = zzbfz.class.getCanonicalName();
        String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName2).length() + String.valueOf(canonicalName).length() + 22);
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzazk.zzex(sb.toString());
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final Bundle zzuy() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final boolean zzuz() {
        return this.zzdnl instanceof InitializableMediationRewardedVideoAdAdapter;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzafn zzva() {
        NativeCustomTemplateAd zzvk = this.zzdnm.zzvk();
        if (zzvk instanceof zzafo) {
            return ((zzafo) zzvk).zztv();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzanx zzvb() {
        UnifiedNativeAdMapper zzvj = this.zzdnm.zzvj();
        if (zzvj != null) {
            return new zzaoz(zzvj);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzapy zzvc() {
        Object obj = this.zzdnl;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzapy.zza(((Adapter) obj).getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzapy zzvd() {
        Object obj = this.zzdnl;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzapy.zza(((Adapter) obj).getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvs zzvs, zzvl zzvl, String str, String str2, zzank zzank) {
        Date date;
        AdSize zza;
        if (this.zzdnl instanceof MediationBannerAdapter) {
            zzazk.zzdy("Requesting banner ad from adapter.");
            try {
                MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.zzdnl;
                Bundle bundle = null;
                HashSet hashSet = zzvl.zzchp != null ? new HashSet(zzvl.zzchp) : null;
                if (zzvl.zzchn == -1) {
                    date = null;
                } else {
                    date = new Date(zzvl.zzchn);
                }
                zzaob zzaob = new zzaob(date, zzvl.zzcho, hashSet, zzvl.zznb, zzc(zzvl), zzvl.zzado, zzvl.zzchz, zzvl.zzadp, zza(str, zzvl));
                Bundle bundle2 = zzvl.zzchu;
                if (bundle2 != null) {
                    bundle = bundle2.getBundle(mediationBannerAdapter.getClass().getName());
                }
                if (zzvs.zzcin) {
                    zza = com.google.android.gms.ads.zza.zza(zzvs.width, zzvs.height);
                } else {
                    zza = com.google.android.gms.ads.zza.zza(zzvs.width, zzvs.height, zzvs.zzacy);
                }
                mediationBannerAdapter.requestBannerAd((Context) aw.P(zvVar), new zzaof(zzank), zza(str, zzvl, str2), zza, zzaob, bundle);
            } catch (Throwable th) {
                throw ic.x("", th);
            }
        } else {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(ic.m(canonicalName2, ic.m(canonicalName, 22)));
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
    }

    public zzaoa(Adapter adapter) {
        this.zzdnl = adapter;
    }

    private static boolean zzc(zzvl zzvl) {
        if (zzvl.zzchq) {
            return true;
        }
        zzwr.zzqn();
        return zzaza.zzzw();
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvl zzvl, String str, zzank zzank) {
        zza(zvVar, zzvl, str, (String) null, zzank);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvl zzvl, String str, String str2, zzank zzank) {
        Date date;
        if (this.zzdnl instanceof MediationInterstitialAdapter) {
            zzazk.zzdy("Requesting interstitial ad from adapter.");
            try {
                MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) this.zzdnl;
                Bundle bundle = null;
                HashSet hashSet = zzvl.zzchp != null ? new HashSet(zzvl.zzchp) : null;
                if (zzvl.zzchn == -1) {
                    date = null;
                } else {
                    date = new Date(zzvl.zzchn);
                }
                zzaob zzaob = new zzaob(date, zzvl.zzcho, hashSet, zzvl.zznb, zzc(zzvl), zzvl.zzado, zzvl.zzchz, zzvl.zzadp, zza(str, zzvl));
                Bundle bundle2 = zzvl.zzchu;
                if (bundle2 != null) {
                    bundle = bundle2.getBundle(mediationInterstitialAdapter.getClass().getName());
                }
                mediationInterstitialAdapter.requestInterstitialAd((Context) aw.P(zvVar), new zzaof(zzank), zza(str, zzvl, str2), zzaob, bundle);
            } catch (Throwable th) {
                throw ic.x("", th);
            }
        } else {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(ic.m(canonicalName2, ic.m(canonicalName, 22)));
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvl zzvl, String str, String str2, zzank zzank, zzaeh zzaeh, List<String> list) {
        Date date;
        Object obj = this.zzdnl;
        if (obj instanceof MediationNativeAdapter) {
            try {
                MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj;
                Bundle bundle = null;
                HashSet hashSet = zzvl.zzchp != null ? new HashSet(zzvl.zzchp) : null;
                if (zzvl.zzchn == -1) {
                    date = null;
                } else {
                    date = new Date(zzvl.zzchn);
                }
                zzaoj zzaoj = new zzaoj(date, zzvl.zzcho, hashSet, zzvl.zznb, zzc(zzvl), zzvl.zzado, zzaeh, list, zzvl.zzchz, zzvl.zzadp, zza(str, zzvl));
                Bundle bundle2 = zzvl.zzchu;
                if (bundle2 != null) {
                    bundle = bundle2.getBundle(mediationNativeAdapter.getClass().getName());
                }
                this.zzdnm = new zzaof(zzank);
                mediationNativeAdapter.requestNativeAd((Context) aw.P(zvVar), this.zzdnm, zza(str, zzvl, str2), zzaoj, bundle);
            } catch (Throwable th) {
                throw ic.x("", th);
            }
        } else {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(ic.m(canonicalName2, ic.m(canonicalName, 22)));
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvl zzvl, String str, zzavf zzavf, String str2) {
        Bundle bundle;
        zzaob zzaob;
        Date date;
        Object obj = this.zzdnl;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzazk.zzdy("Initialize rewarded video adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzdnl;
                Bundle bundle2 = null;
                Bundle zza = zza(str2, zzvl, (String) null);
                if (zzvl != null) {
                    HashSet hashSet = zzvl.zzchp != null ? new HashSet(zzvl.zzchp) : null;
                    if (zzvl.zzchn == -1) {
                        date = null;
                    } else {
                        date = new Date(zzvl.zzchn);
                    }
                    zzaob zzaob2 = new zzaob(date, zzvl.zzcho, hashSet, zzvl.zznb, zzc(zzvl), zzvl.zzado, zzvl.zzchz, zzvl.zzadp, zza(str2, zzvl));
                    Bundle bundle3 = zzvl.zzchu;
                    if (bundle3 != null) {
                        bundle2 = bundle3.getBundle(mediationRewardedVideoAdAdapter.getClass().getName());
                    }
                    bundle = bundle2;
                    zzaob = zzaob2;
                } else {
                    zzaob = null;
                    bundle = null;
                }
                mediationRewardedVideoAdAdapter.initialize((Context) aw.P(zvVar), zzaob, str, new zzavg(zzavf), zza, bundle);
            } catch (Throwable th) {
                throw ic.x("", th);
            }
        } else if (obj instanceof Adapter) {
            this.zzdno = zvVar;
            this.zzdnn = zzavf;
            zzavf.zzaf(aw.Q(obj));
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder p = ic.p(ic.m(canonicalName3, ic.m(canonicalName2, ic.m(canonicalName, 26))), canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            p.append(canonicalName3);
            zzazk.zzex(p.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzavf zzavf, List<String> list) {
        if (this.zzdnl instanceof InitializableMediationRewardedVideoAdAdapter) {
            zzazk.zzdy("Initialize rewarded video adapter.");
            try {
                InitializableMediationRewardedVideoAdAdapter initializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter) this.zzdnl;
                ArrayList arrayList = new ArrayList();
                for (String str : list) {
                    arrayList.add(zza(str, (zzvl) null, (String) null));
                }
                initializableMediationRewardedVideoAdAdapter.initialize((Context) aw.P(zvVar), new zzavg(zzavf), arrayList);
            } catch (Throwable th) {
                zzazk.zzd("Could not initialize rewarded video adapter.", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = InitializableMediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName2).length() + String.valueOf(canonicalName).length() + 22);
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzazk.zzex(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zzvl zzvl, String str) {
        zza(zzvl, str, (String) null);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zzvl zzvl, String str, String str2) {
        Date date;
        Object obj = this.zzdnl;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzazk.zzdy("Requesting rewarded video ad from adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzdnl;
                Bundle bundle = null;
                HashSet hashSet = zzvl.zzchp != null ? new HashSet(zzvl.zzchp) : null;
                if (zzvl.zzchn == -1) {
                    date = null;
                } else {
                    date = new Date(zzvl.zzchn);
                }
                zzaob zzaob = new zzaob(date, zzvl.zzcho, hashSet, zzvl.zznb, zzc(zzvl), zzvl.zzado, zzvl.zzchz, zzvl.zzadp, zza(str, zzvl));
                Bundle bundle2 = zzvl.zzchu;
                if (bundle2 != null) {
                    bundle = bundle2.getBundle(mediationRewardedVideoAdAdapter.getClass().getName());
                }
                mediationRewardedVideoAdAdapter.loadAd(zzaob, zza(str, zzvl, str2), bundle);
            } catch (Throwable th) {
                throw ic.x("", th);
            }
        } else if (obj instanceof Adapter) {
            zzb(this.zzdno, zzvl, str, new zzaoe((Adapter) obj, this.zzdnn));
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zzdnl.getClass().getCanonicalName();
            StringBuilder p = ic.p(ic.m(canonicalName3, ic.m(canonicalName2, ic.m(canonicalName, 26))), canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            p.append(canonicalName3);
            zzazk.zzex(p.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzajj zzajj, List<zzajr> list) {
        AdFormat adFormat;
        if (this.zzdnl instanceof Adapter) {
            zzaod zzaod = new zzaod(this, zzajj);
            ArrayList arrayList = new ArrayList();
            for (zzajr zzajr : list) {
                String str = zzajr.zzdiy;
                str.hashCode();
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
                            c = 1;
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
                            c = 3;
                            break;
                        }
                        break;
                    case 1911491517:
                        if (str.equals("rewarded_interstitial")) {
                            c = 4;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        adFormat = AdFormat.BANNER;
                        break;
                    case 1:
                        adFormat = AdFormat.NATIVE;
                        break;
                    case 2:
                        adFormat = AdFormat.REWARDED;
                        break;
                    case 3:
                        adFormat = AdFormat.INTERSTITIAL;
                        break;
                    case 4:
                        adFormat = AdFormat.REWARDED_INTERSTITIAL;
                        break;
                    default:
                        adFormat = null;
                        break;
                }
                if (adFormat != null) {
                    arrayList.add(new MediationConfiguration(adFormat, zzajr.extras));
                }
            }
            ((Adapter) this.zzdnl).initialize((Context) aw.P(zvVar), zzaod, arrayList);
            return;
        }
        throw new RemoteException();
    }

    private final MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> zza(zzank zzank) {
        return new zzaoc(this, zzank);
    }

    private final Bundle zza(String str, zzvl zzvl, String str2) {
        String valueOf = String.valueOf(str);
        zzazk.zzdy(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    bundle2.putString(next, jSONObject.getString(next));
                }
                bundle = bundle2;
            }
            if (this.zzdnl instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzvl != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzvl.zzado);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            throw ic.x("", th);
        }
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
