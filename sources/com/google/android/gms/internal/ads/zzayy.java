package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.d;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public final class zzayy implements zzrm {
    private final Object lock = new Object();
    private final zzf zzedg;
    private final zzayx zzedm;
    private final zzayv zzedn;
    private final HashSet<zzayn> zzedo = new HashSet<>();
    private final HashSet<zzayw> zzedp = new HashSet<>();
    private boolean zzedq = false;

    public zzayy(String str, zzf zzf) {
        this.zzedn = new zzayv(str, zzf);
        this.zzedg = zzf;
        this.zzedm = new zzayx();
    }

    public final Bundle zza(Context context, zzayu zzayu) {
        HashSet<zzayn> hashSet = new HashSet<>();
        synchronized (this.lock) {
            hashSet.addAll(this.zzedo);
            this.zzedo.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", this.zzedn.zzn(context, this.zzedm.zzyd()));
        Bundle bundle2 = new Bundle();
        Iterator<zzayw> it = this.zzedp.iterator();
        if (!it.hasNext()) {
            bundle.putBundle("slots", bundle2);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<zzayn> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().toBundle());
            }
            bundle.putParcelableArrayList("ads", arrayList);
            zzayu.zza(hashSet);
            return bundle;
        }
        it.next();
        throw new NoSuchMethodError();
    }

    public final void zzb(zzayn zzayn) {
        synchronized (this.lock) {
            this.zzedo.add(zzayn);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrm
    public final void zzp(boolean z) {
        long a = zzr.zzky().a();
        if (z) {
            if (a - this.zzedg.zzyo() > ((Long) zzwr.zzqr().zzd(zzabp.zzcpm)).longValue()) {
                this.zzedn.zzedd = -1;
            } else {
                this.zzedn.zzedd = this.zzedg.zzyp();
            }
            this.zzedq = true;
            return;
        }
        this.zzedg.zzez(a);
        this.zzedg.zzde(this.zzedn.zzedd);
    }

    public final void zzxi() {
        synchronized (this.lock) {
            this.zzedn.zzxi();
        }
    }

    public final void zzxj() {
        synchronized (this.lock) {
            this.zzedn.zzxj();
        }
    }

    public final boolean zzyf() {
        return this.zzedq;
    }

    public final void zzb(HashSet<zzayn> hashSet) {
        synchronized (this.lock) {
            this.zzedo.addAll(hashSet);
        }
    }

    public final void zza(zzvl zzvl, long j) {
        synchronized (this.lock) {
            this.zzedn.zza(zzvl, j);
        }
    }

    public final zzayn zza(d dVar, String str) {
        return new zzayn(dVar, this, this.zzedm.zzyc(), str);
    }
}
