package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import javax.annotation.concurrent.GuardedBy;

public final class zzayn {
    private final Object lock = new Object();
    private final d zzbqg;
    private final String zzdup;
    @GuardedBy("lock")
    private boolean zzdvy = false;
    @GuardedBy("lock")
    private long zzdwc = -1;
    private final zzayy zzebw;
    @GuardedBy("lock")
    private final LinkedList<zzaym> zzebx;
    private final String zzeby;
    @GuardedBy("lock")
    private long zzebz = -1;
    @GuardedBy("lock")
    private long zzeca = -1;
    @GuardedBy("lock")
    private long zzecb = 0;
    @GuardedBy("lock")
    private long zzecc = -1;
    @GuardedBy("lock")
    private long zzecd = -1;

    zzayn(d dVar, zzayy zzayy, String str, String str2) {
        this.zzbqg = dVar;
        this.zzebw = zzayy;
        this.zzeby = str;
        this.zzdup = str2;
        this.zzebx = new LinkedList<>();
    }

    public final Bundle toBundle() {
        Bundle bundle;
        synchronized (this.lock) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.zzeby);
            bundle.putString("slotid", this.zzdup);
            bundle.putBoolean("ismediation", false);
            bundle.putLong("treq", this.zzecc);
            bundle.putLong("tresponse", this.zzecd);
            bundle.putLong("timp", this.zzebz);
            bundle.putLong("tload", this.zzeca);
            bundle.putLong("pcc", this.zzecb);
            bundle.putLong("tfetch", this.zzdwc);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<zzaym> it = this.zzebx.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toBundle());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }

    public final void zzao(boolean z) {
        synchronized (this.lock) {
            if (this.zzecd != -1) {
                this.zzeca = this.zzbqg.b();
            }
        }
    }

    public final void zze(zzvl zzvl) {
        synchronized (this.lock) {
            long b = this.zzbqg.b();
            this.zzecc = b;
            this.zzebw.zza(zzvl, b);
        }
    }

    public final void zzey(long j) {
        synchronized (this.lock) {
            this.zzecd = j;
            if (j != -1) {
                this.zzebw.zzb(this);
            }
        }
    }

    public final void zzxi() {
        synchronized (this.lock) {
            if (this.zzecd != -1 && this.zzebz == -1) {
                this.zzebz = this.zzbqg.b();
                this.zzebw.zzb(this);
            }
            this.zzebw.zzxi();
        }
    }

    public final void zzxj() {
        synchronized (this.lock) {
            if (this.zzecd != -1) {
                zzaym zzaym = new zzaym(this);
                zzaym.zzxh();
                this.zzebx.add(zzaym);
                this.zzecb++;
                this.zzebw.zzxj();
                this.zzebw.zzb(this);
            }
        }
    }

    public final void zzxk() {
        synchronized (this.lock) {
            if (this.zzecd != -1 && !this.zzebx.isEmpty()) {
                zzaym last = this.zzebx.getLast();
                if (last.zzxf() == -1) {
                    last.zzxg();
                    this.zzebw.zzb(this);
                }
            }
        }
    }

    public final String zzxl() {
        return this.zzeby;
    }
}
