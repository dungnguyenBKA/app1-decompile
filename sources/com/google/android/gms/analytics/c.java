package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.util.d;
import com.google.android.gms.internal.gtm.zzbe;
import com.google.android.gms.internal.gtm.zzbi;
import com.google.android.gms.internal.gtm.zzbv;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;

/* JADX WARN: Incorrect class signature, class is equals to this class: Lcom/google/android/gms/analytics/c<Lcom/google/android/gms/analytics/c;>; */
public class c {
    private final q a;
    protected final i b;
    private final List<j> c = new ArrayList();
    private final zzbv d;
    private boolean e;

    public c(zzbv zzbv) {
        q zzd = zzbv.zzd();
        d zzr = zzbv.zzr();
        Objects.requireNonNull(zzd, "null reference");
        this.a = zzd;
        i iVar = new i(this, zzr);
        iVar.h();
        this.b = iVar;
        this.d = zzbv;
    }

    public final i a() {
        i iVar = new i(this.b);
        iVar.g(this.d.zzh().zza());
        iVar.g(this.d.zzk().zza());
        for (j jVar : this.c) {
            jVar.zza();
        }
        return iVar;
    }

    /* access modifiers changed from: package-private */
    public final zzbv b() {
        return this.d;
    }

    public final void c(String str) {
        n.e(str);
        Uri o = d.o(str);
        ListIterator<s> listIterator = this.b.f().listIterator();
        while (listIterator.hasNext()) {
            if (o.equals(listIterator.next().zzb())) {
                listIterator.remove();
            }
        }
        this.b.f().add(new d(this.d, str));
    }

    public final void d(boolean z) {
        this.e = z;
    }

    /* access modifiers changed from: protected */
    public final void e(i iVar) {
        zzbe zzbe = (zzbe) iVar.b(zzbe.class);
        if (TextUtils.isEmpty(zzbe.zze())) {
            zzbe.zzj(this.d.zzi().zzb());
        }
        if (this.e && TextUtils.isEmpty(zzbe.zzd())) {
            zzbi zze = this.d.zze();
            zzbe.zzi(zze.zza());
            zzbe.zzh(zze.zzb());
        }
    }

    /* access modifiers changed from: protected */
    public final q f() {
        return this.a;
    }
}
