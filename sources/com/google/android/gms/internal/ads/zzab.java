package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzao;
import java.util.Collections;
import java.util.Map;

public abstract class zzab<T> implements Comparable<zzab<T>> {
    private final Object mLock;
    private final zzao.zza zzao;
    private final int zzap;
    private final String zzaq;
    private final int zzar;
    private zzaj zzas;
    private Integer zzat;
    private zzaf zzau;
    private boolean zzav;
    private boolean zzaw;
    private boolean zzax;
    private boolean zzay;
    private boolean zzaz;
    private zzak zzba;
    private zzn zzbb;
    private zzad zzbc;

    public zzab(int i, String str, zzaj zzaj) {
        Uri parse;
        String host;
        this.zzao = zzao.zza.zzbv ? new zzao.zza() : null;
        this.mLock = new Object();
        this.zzav = true;
        int i2 = 0;
        this.zzaw = false;
        this.zzax = false;
        this.zzay = false;
        this.zzaz = false;
        this.zzbb = null;
        this.zzap = i;
        this.zzaq = str;
        this.zzas = zzaj;
        this.zzba = new zzr();
        if (!(TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (host = parse.getHost()) == null)) {
            i2 = host.hashCode();
        }
        this.zzar = i2;
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Object obj) {
        zzab zzab = (zzab) obj;
        zzac zzac = zzac.NORMAL;
        if (zzac == zzac) {
            return this.zzat.intValue() - zzab.zzat.intValue();
        }
        return 0;
    }

    public Map<String, String> getHeaders() {
        return Collections.emptyMap();
    }

    public final int getMethod() {
        return this.zzap;
    }

    public final String getUrl() {
        return this.zzaq;
    }

    public final boolean isCanceled() {
        synchronized (this.mLock) {
        }
        return false;
    }

    public String toString() {
        String valueOf = String.valueOf(Integer.toHexString(this.zzar));
        String concat = valueOf.length() != 0 ? "0x".concat(valueOf) : new String("0x");
        isCanceled();
        String str = this.zzaq;
        String valueOf2 = String.valueOf(zzac.NORMAL);
        String valueOf3 = String.valueOf(this.zzat);
        StringBuilder p = ic.p(valueOf3.length() + valueOf2.length() + ic.m(concat, ic.m(str, "[ ] ".length() + 3)), "[ ] ", str, " ", concat);
        p.append(" ");
        p.append(valueOf2);
        p.append(" ");
        p.append(valueOf3);
        return p.toString();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: com.google.android.gms.internal.ads.zzab<T> */
    /* JADX WARN: Multi-variable type inference failed */
    public final zzab<?> zza(zzaf zzaf) {
        this.zzau = zzaf;
        return this;
    }

    /* access modifiers changed from: protected */
    public abstract zzag<T> zza(zzz zzz);

    /* access modifiers changed from: protected */
    public abstract void zza(T t);

    public final void zzb(zzap zzap2) {
        zzaj zzaj;
        synchronized (this.mLock) {
            zzaj = this.zzas;
        }
        if (zzaj != null) {
            zzaj.zzd(zzap2);
        }
    }

    public final void zzc(String str) {
        if (zzao.zza.zzbv) {
            this.zzao.zza(str, Thread.currentThread().getId());
        }
    }

    public final int zzd() {
        return this.zzar;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: com.google.android.gms.internal.ads.zzab<T> */
    /* JADX WARN: Multi-variable type inference failed */
    public final zzab<?> zze(int i) {
        this.zzat = Integer.valueOf(i);
        return this;
    }

    public final zzn zzf() {
        return this.zzbb;
    }

    public byte[] zzg() {
        return null;
    }

    public final boolean zzh() {
        return this.zzav;
    }

    public final int zzi() {
        return this.zzba.zzb();
    }

    public final zzak zzj() {
        return this.zzba;
    }

    public final void zzk() {
        synchronized (this.mLock) {
            this.zzax = true;
        }
    }

    public final boolean zzl() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzax;
        }
        return z;
    }

    /* access modifiers changed from: package-private */
    public final void zzm() {
        zzad zzad;
        synchronized (this.mLock) {
            zzad = this.zzbc;
        }
        if (zzad != null) {
            zzad.zzc(this);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: com.google.android.gms.internal.ads.zzab<T> */
    /* JADX WARN: Multi-variable type inference failed */
    public final zzab<?> zza(zzn zzn) {
        this.zzbb = zzn;
        return this;
    }

    /* access modifiers changed from: package-private */
    public final void zzd(String str) {
        zzaf zzaf = this.zzau;
        if (zzaf != null) {
            zzaf.zze(this);
        }
        if (zzao.zza.zzbv) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new zzaa(this, str, id));
                return;
            }
            this.zzao.zza(str, id);
            this.zzao.zzd(toString());
        }
    }

    public final String zze() {
        String str = this.zzaq;
        int i = this.zzap;
        if (i == 0 || i == -1) {
            return str;
        }
        String num = Integer.toString(i);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + String.valueOf(num).length() + 1);
        sb.append(num);
        sb.append('-');
        sb.append(str);
        return sb.toString();
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzad zzad) {
        synchronized (this.mLock) {
            this.zzbc = zzad;
        }
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzag<?> zzag) {
        zzad zzad;
        synchronized (this.mLock) {
            zzad = this.zzbc;
        }
        if (zzad != null) {
            zzad.zzb(this, zzag);
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzd(int i) {
        zzaf zzaf = this.zzau;
        if (zzaf != null) {
            zzaf.zzb(this, i);
        }
    }
}
