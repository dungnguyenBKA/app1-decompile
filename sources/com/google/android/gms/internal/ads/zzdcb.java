package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.vungle.warren.model.ReportDBAdapter;

public final class zzdcb implements zzdfi<zzdby> {
    private final Context context;
    private final zzdzv zzghl;

    public zzdcb(zzdzv zzdzv, Context context2) {
        this.zzghl = zzdzv;
        this.context = context2;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdby> zzasy() {
        return this.zzghl.zze(new zzdca(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdby zzatd() {
        double d;
        Intent registerReceiver = this.context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra(ReportDBAdapter.ReportColumns.COLUMN_REPORT_STATUS, -1);
            double intExtra2 = (double) registerReceiver.getIntExtra("level", -1);
            double intExtra3 = (double) registerReceiver.getIntExtra("scale", -1);
            Double.isNaN(intExtra2);
            Double.isNaN(intExtra3);
            d = intExtra2 / intExtra3;
            if (intExtra == 2 || intExtra == 5) {
                z = true;
            }
        } else {
            d = -1.0d;
        }
        return new zzdby(d, z);
    }
}
