package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.util.g;
import java.io.File;

public final class zzdux {
    private static final Object zzhur = new Object();
    private final Context context;
    private final SharedPreferences zzcme;
    private final String zzhuo;
    private final zzdug zzhup;
    private boolean zzhuq;

    public zzdux(Context context2, zzgp zzgp, zzdug zzdug, boolean z) {
        this(context2, zzgp, zzdug);
        this.zzhuq = z;
    }

    private final String zzays() {
        String valueOf = String.valueOf(this.zzhuo);
        return valueOf.length() != 0 ? "FBAMTD".concat(valueOf) : new String("FBAMTD");
    }

    private final String zzayt() {
        String valueOf = String.valueOf(this.zzhuo);
        return valueOf.length() != 0 ? "LATMTD".concat(valueOf) : new String("LATMTD");
    }

    private static String zzb(zzgr zzgr) {
        return g.a(((zzgv) ((zzelb) zzgv.zzdl().zzav(zzgr.zzdc().zzdg()).zzaw(zzgr.zzdc().zzdh()).zzdk(zzgr.zzdc().zzdj()).zzdl(zzgr.zzdc().zzdk()).zzdj(zzgr.zzdc().zzdi()).zzbiw())).zzbfz().toByteArray());
    }

    private final zzgv zzej(int i) {
        String str;
        zzeko zzeko;
        if (i == zzdva.zzhut) {
            str = this.zzcme.getString(zzayt(), null);
        } else {
            str = i == zzdva.zzhuu ? this.zzcme.getString(zzays(), null) : null;
        }
        if (str == null) {
            return null;
        }
        try {
            zzejr zzt = zzejr.zzt(g.c(str));
            if (this.zzhuq) {
                zzeko = zzeko.zzbhw();
            } else {
                zzeko = zzeko.zzbhx();
            }
            return zzgv.zzb(zzt, zzeko);
        } catch (zzelo unused) {
            return null;
        } catch (NullPointerException unused2) {
            zza(2029, System.currentTimeMillis());
            return null;
        }
    }

    private final File zzhj(String str) {
        return new File(new File(this.context.getDir("pccache", 0), this.zzhuo), str);
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b1 A[DONT_GENERATE] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00b3  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zza(com.google.android.gms.internal.ads.zzgr r18, com.google.android.gms.internal.ads.zzduy r19) {
        /*
        // Method dump skipped, instructions count: 399
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdux.zza(com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzduy):boolean");
    }

    public final boolean zzek(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zzhur) {
            zzgv zzej = zzej(i);
            if (zzej == null) {
                zza(4025, currentTimeMillis);
                return false;
            }
            File zzhj = zzhj(zzej.zzdg());
            if (!new File(zzhj, "pcam.jar").exists()) {
                zza(4026, currentTimeMillis);
                return false;
            } else if (!new File(zzhj, "pcbc").exists()) {
                zza(4027, currentTimeMillis);
                return false;
            } else {
                zza(5019, currentTimeMillis);
                return true;
            }
        }
    }

    public final zzdup zzp(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zzhur) {
            zzgv zzej = zzej(i);
            if (zzej == null) {
                zza(4022, currentTimeMillis);
                return null;
            }
            File zzhj = zzhj(zzej.zzdg());
            File file = new File(zzhj, "pcam.jar");
            if (!file.exists()) {
                file = new File(zzhj, "pcam");
            }
            File file2 = new File(zzhj, "pcbc");
            File file3 = new File(zzhj, "pcopt");
            zza(5016, currentTimeMillis);
            return new zzdup(zzej, file, file2, file3);
        }
    }

    private zzdux(Context context2, zzgp zzgp, zzdug zzdug) {
        this.zzhuq = false;
        this.context = context2;
        this.zzhuo = Integer.toString(zzgp.zzv());
        this.zzcme = context2.getSharedPreferences("pcvmspf", 0);
        this.zzhup = zzdug;
    }

    public final boolean zza(zzgr zzgr) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zzhur) {
            if (!zzdur.zza(new File(zzhj(zzgr.zzdc().zzdg()), "pcbc"), zzgr.zzde().toByteArray())) {
                zza(4020, currentTimeMillis);
                return false;
            }
            String zzb = zzb(zzgr);
            SharedPreferences.Editor edit = this.zzcme.edit();
            edit.putString(zzayt(), zzb);
            boolean commit = edit.commit();
            if (commit) {
                zza(5015, currentTimeMillis);
            } else {
                zza(4021, currentTimeMillis);
            }
            return commit;
        }
    }

    private final void zza(int i, long j) {
        zzdug zzdug = this.zzhup;
        if (zzdug != null) {
            zzdug.zza(i, j);
        }
    }

    private final void zza(int i, long j, String str) {
        zzdug zzdug = this.zzhup;
        if (zzdug != null) {
            zzdug.zza(i, j, str);
        }
    }
}
