package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.List;

public final class zzdan implements zzdfj<Bundle> {
    private final Context context;
    private final zzvs zzbpo;
    private final List<Parcelable> zzhaj;

    public zzdan(Context context2, zzvs zzvs, List<Parcelable> list) {
        this.context = context2;
        this.zzbpo = zzvs;
        this.zzhaj = list;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (zzadk.zzdec.get().booleanValue()) {
            Bundle bundle3 = new Bundle();
            zzr.zzkr();
            bundle3.putString("activity", zzj.zzap(this.context));
            Bundle bundle4 = new Bundle();
            bundle4.putInt("width", this.zzbpo.width);
            bundle4.putInt("height", this.zzbpo.height);
            bundle3.putBundle("size", bundle4);
            if (this.zzhaj.size() > 0) {
                List<Parcelable> list = this.zzhaj;
                bundle3.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
            }
            bundle2.putBundle("view_hierarchy", bundle3);
        }
    }
}
