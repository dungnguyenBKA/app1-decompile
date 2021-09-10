package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
import javax.annotation.concurrent.GuardedBy;

public final class zzdop implements zzayu, zzbrr {
    private final Context context;
    private final zzayy zzebw;
    @GuardedBy("this")
    private final HashSet<zzayn> zzhmj = new HashSet<>();

    public zzdop(Context context2, zzayy zzayy) {
        this.context = context2;
        this.zzebw = zzayy;
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final synchronized void zza(HashSet<zzayn> hashSet) {
        this.zzhmj.clear();
        this.zzhmj.addAll(hashSet);
    }

    public final Bundle zzavn() {
        return this.zzebw.zza(this.context, this);
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final synchronized void zzc(zzvg zzvg) {
        if (zzvg.errorCode != 3) {
            this.zzebw.zzb(this.zzhmj);
        }
    }
}
