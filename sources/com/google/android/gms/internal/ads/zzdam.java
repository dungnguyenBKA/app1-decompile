package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;

public final class zzdam implements zzdfi<zzdan> {
    private final Context context;
    private final zzdnp zzfwy;
    private final zzdzv zzhah;
    private final View zzhai;

    public zzdam(zzdzv zzdzv, Context context2, zzdnp zzdnp, ViewGroup viewGroup) {
        this.zzhah = zzdzv;
        this.context = context2;
        this.zzfwy = zzdnp;
        this.zzhai = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdan> zzasy() {
        return this.zzhah.zze(new zzdap(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdan zzasz() {
        Context context2 = this.context;
        zzvs zzvs = this.zzfwy.zzbpo;
        ArrayList arrayList = new ArrayList();
        View view = this.zzhai;
        while (view != null) {
            ViewParent parent = view.getParent();
            if (parent == null) {
                break;
            }
            int i = -1;
            if (parent instanceof ViewGroup) {
                i = ((ViewGroup) parent).indexOfChild(view);
            }
            Bundle bundle = new Bundle();
            bundle.putString("type", parent.getClass().getName());
            bundle.putInt("index_of_child", i);
            arrayList.add(bundle);
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return new zzdan(context2, zzvs, arrayList);
    }
}
