package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import com.vungle.warren.error.VungleException;
import java.util.Arrays;
import java.util.List;

@TargetApi(VungleException.NO_SPACE_TO_INIT)
public final class zzbds extends zzbdd implements zzbcu {
    private String zzekh;
    private boolean zzeqe;
    private zzbck zzeqm;
    private Exception zzeqn;
    private boolean zzeqo;

    public zzbds(zzbbo zzbbo, zzbbl zzbbl) {
        super(zzbbo);
        zzbck zzbck = new zzbck(zzbbo.getContext(), zzbbl, this.zzepn.get());
        this.zzeqm = zzbck;
        zzbck.zza(this);
    }

    private final void zzfj(String str) {
        synchronized (this) {
            this.zzeqe = true;
            notify();
            release();
        }
        String str2 = this.zzekh;
        if (str2 != null) {
            String zzfh = zzfh(str2);
            Exception exc = this.zzeqn;
            if (exc != null) {
                zza(this.zzekh, zzfh, "badUrl", zzb(str, exc));
            } else {
                zza(this.zzekh, zzfh, "externalAbort", "Programmatic precache abort.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void abort() {
        zzfj(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void release() {
        zzbck zzbck = this.zzeqm;
        if (zzbck != null) {
            zzbck.zza((zzbcu) null);
            this.zzeqm.release();
        }
        super.release();
    }

    @Override // com.google.android.gms.internal.ads.zzbcu
    public final void zza(String str, Exception exc) {
        String str2 = (String) zzwr.zzqr().zzd(zzabp.zzcmu);
        if (str2 != null) {
            List asList = Arrays.asList(str2.split(","));
            if (asList.contains("all") || asList.contains(exc.getClass().getCanonicalName())) {
                return;
            }
        }
        this.zzeqn = exc;
        zzazk.zzd("Precache error", exc);
        zzfj(str);
    }

    public final zzbck zzaco() {
        synchronized (this) {
            this.zzeqo = true;
            notify();
        }
        this.zzeqm.zza((zzbcu) null);
        zzbck zzbck = this.zzeqm;
        this.zzeqm = null;
        return zzbck;
    }

    @Override // com.google.android.gms.internal.ads.zzbcu
    public final void zzb(boolean z, long j) {
        zzbbo zzbbo = this.zzepn.get();
        if (zzbbo != null) {
            zzazp.zzeig.execute(new zzbdr(zzbbo, z, j));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void zzdk(int i) {
        this.zzeqm.zzacl().zzds(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void zzdl(int i) {
        this.zzeqm.zzacl().zzdt(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void zzdm(int i) {
        this.zzeqm.zzacl().zzdm(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void zzdn(int i) {
        this.zzeqm.zzacl().zzdn(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbcu
    public final void zzdq(int i) {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x009d, code lost:
        r0 = r15.zzeqn;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x009f, code lost:
        if (r0 == null) goto L_0x00a4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:?, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00ad, code lost:
        throw new java.io.IOException("Abort requested before buffering finished. ");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00ae, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00af, code lost:
        r17 = "badUrl";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x0150, code lost:
        r5 = r45;
        r6 = r46;
        r7 = r44;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:?, code lost:
        r5.zzc(r6, r7, r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:0x01d4, code lost:
        r0 = th;
     */
    @Override // com.google.android.gms.internal.ads.zzbdd
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zze(java.lang.String r46, java.lang.String[] r47) {
        /*
        // Method dump skipped, instructions count: 539
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbds.zze(java.lang.String, java.lang.String[]):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final boolean zzfg(String str) {
        return zze(str, new String[]{str});
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzbdd
    public final String zzfh(String str) {
        String valueOf = String.valueOf(super.zzfh(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    @Override // com.google.android.gms.internal.ads.zzbcu
    public final void zzn(int i, int i2) {
    }

    private static String zzb(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder p = ic.p(ic.m(message, ic.m(canonicalName, ic.m(str, 2))), str, "/", canonicalName, ":");
        p.append(message);
        return p.toString();
    }
}
