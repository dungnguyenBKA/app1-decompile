package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class zzdwk {
    private final int limit;
    private final zzdvu zzhvz;
    private final boolean zzhwa;
    private final zzdwr zzhwb;

    private zzdwk(zzdwr zzdwr) {
        this(zzdwr, false, zzdvy.zzhvt, Integer.MAX_VALUE);
    }

    public static zzdwk zza(zzdvu zzdvu) {
        zzdwl.checkNotNull(zzdvu);
        return new zzdwk(new zzdwn(zzdvu));
    }

    /* access modifiers changed from: private */
    public final Iterator<String> zzb(CharSequence charSequence) {
        return this.zzhwb.zzb(this, charSequence);
    }

    public final List<String> zzc(CharSequence charSequence) {
        zzdwl.checkNotNull(charSequence);
        Iterator<String> zzb = zzb(charSequence);
        ArrayList arrayList = new ArrayList();
        while (zzb.hasNext()) {
            arrayList.add(zzb.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    private zzdwk(zzdwr zzdwr, boolean z, zzdvu zzdvu, int i) {
        this.zzhwb = zzdwr;
        this.zzhwa = false;
        this.zzhvz = zzdvu;
        this.limit = Integer.MAX_VALUE;
    }

    public final Iterable<String> zza(CharSequence charSequence) {
        zzdwl.checkNotNull(charSequence);
        return new zzdwp(this, charSequence);
    }
}
