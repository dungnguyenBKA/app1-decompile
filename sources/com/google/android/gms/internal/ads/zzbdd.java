package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public abstract class zzbdd {
    protected Context mContext;
    protected String zzegw;
    protected WeakReference<zzbbo> zzepn;

    public zzbdd(zzbbo zzbbo) {
        this.mContext = zzbbo.getContext();
        this.zzegw = zzr.zzkr().zzq(this.mContext, zzbbo.zzabj().zzbrp);
        this.zzepn = new WeakReference<>(zzbbo);
    }

    /* access modifiers changed from: private */
    public static String zzfi(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1947652542:
                if (str.equals("interrupted")) {
                    c = 0;
                    break;
                }
                break;
            case -1396664534:
                if (str.equals("badUrl")) {
                    c = 1;
                    break;
                }
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    c = 2;
                    break;
                }
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    c = 3;
                    break;
                }
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    c = 4;
                    break;
                }
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    c = 5;
                    break;
                }
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    c = 6;
                    break;
                }
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    c = 7;
                    break;
                }
                break;
            case 3387234:
                if (str.equals("noop")) {
                    c = '\b';
                    break;
                }
                break;
            case 96784904:
                if (str.equals("error")) {
                    c = '\t';
                    break;
                }
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    c = '\n';
                    break;
                }
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    c = 11;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 2:
            case 4:
            case 5:
            case '\b':
            case '\t':
            default:
                return "internal";
            case 1:
            case 3:
                return "network";
            case 6:
            case 7:
                return "policy";
            case '\n':
            case 11:
                return "io";
        }
    }

    public abstract void abort();

    public void release() {
    }

    public final void zza(String str, String str2, long j, long j2, boolean z, long j3, long j4, long j5, int i, int i2) {
        zzaza.zzaac.post(new zzbdf(this, str, str2, j, j2, j3, j4, j5, z, i, i2));
    }

    public final void zzc(String str, String str2, long j) {
        zzaza.zzaac.post(new zzbdk(this, str, str2, j));
    }

    /* access modifiers changed from: protected */
    public void zzdk(int i) {
    }

    /* access modifiers changed from: protected */
    public void zzdl(int i) {
    }

    /* access modifiers changed from: protected */
    public void zzdm(int i) {
    }

    /* access modifiers changed from: protected */
    public void zzdn(int i) {
    }

    public boolean zze(String str, String[] strArr) {
        return zzfg(str);
    }

    public abstract boolean zzfg(String str);

    /* access modifiers changed from: protected */
    public String zzfh(String str) {
        return zzaza.zzeq(str);
    }

    public final void zza(String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        zzaza.zzaac.post(new zzbdi(this, str, str2, i, i2, j, j2, z, i3, i4));
    }

    /* access modifiers changed from: protected */
    public final void zza(String str, String str2, int i) {
        zzaza.zzaac.post(new zzbdh(this, str, str2, i));
    }

    public final void zza(String str, String str2, String str3, String str4) {
        zzaza.zzaac.post(new zzbdj(this, str, str2, str3, str4));
    }

    /* access modifiers changed from: private */
    public final void zza(String str, Map<String, String> map) {
        zzbbo zzbbo = this.zzepn.get();
        if (zzbbo != null) {
            zzbbo.zza(str, map);
        }
    }
}
