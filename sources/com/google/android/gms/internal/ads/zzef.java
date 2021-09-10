package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzcb;
import com.google.android.gms.internal.ads.zzcf;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public final class zzef extends zzea {
    private zzef(Context context, String str, boolean z, int i) {
        super(context, str, z, i);
    }

    public static zzef zzb(String str, Context context, boolean z) {
        return zzb(str, context, false, zzcv.zznj);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzea
    public final List<Callable<Void>> zza(zzfc zzfc, Context context, zzcf.zza.zzb zzb, zzcb.zza zza) {
        if (zzfc.zzcg() == null || !this.zzxf) {
            return super.zza(zzfc, context, zzb, zza);
        }
        int zzbu = zzfc.zzbu();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.zza(zzfc, context, zzb, zza));
        arrayList.add(new zzfw(zzfc, "STRTQE1n2Nae56fJRHDsAlh+RkDZLMqz8liSxR9TDmqE0af2eosWM09BrF9F7xVl", "is62fUaYcSmzgiuoZcKcHzaXthoDXTG3NdfDayg76F0=", zzb, zzbu, 24));
        return arrayList;
    }

    public static zzef zzb(String str, Context context, boolean z, int i) {
        zzea.zza(context, z);
        zzea.zza(str, context, z, i);
        return new zzef(context, str, z, i);
    }
}
