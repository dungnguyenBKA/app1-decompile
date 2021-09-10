package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import java.util.HashMap;

public class zzwc {
    private final zzvj zzcix;
    private final zzvk zzciy;
    private final zzzz zzciz;
    private final zzagv zzcja;
    private final zzauy zzcjb;
    private final zzawc zzcjc;
    private final zzarp zzcjd;
    private final zzagu zzcje;

    public zzwc(zzvj zzvj, zzvk zzvk, zzzz zzzz, zzagv zzagv, zzauy zzauy, zzawc zzawc, zzarp zzarp, zzagu zzagu) {
        this.zzcix = zzvj;
        this.zzciy = zzvk;
        this.zzciz = zzzz;
        this.zzcja = zzagv;
        this.zzcjb = zzauy;
        this.zzcjc = zzawc;
        this.zzcjd = zzarp;
        this.zzcje = zzagu;
    }

    /* access modifiers changed from: private */
    public static void zza(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        zzwr.zzqn().zza(context, zzwr.zzqt().zzbrp, "gmob-apps", bundle, true);
    }

    public final zzxl zzb(Context context, zzvs zzvs, String str, zzane zzane) {
        return (zzxl) new zzwm(this, context, zzvs, str, zzane).zzd(context, false);
    }

    public final zzavm zzc(Context context, String str, zzane zzane) {
        return (zzavm) new zzwe(this, context, str, zzane).zzd(context, false);
    }

    public final zzxi zzb(Context context, String str, zzane zzane) {
        return (zzxi) new zzwl(this, context, str, zzane).zzd(context, false);
    }

    public final zzxl zza(Context context, zzvs zzvs, String str, zzane zzane) {
        return (zzxl) new zzwk(this, context, zzvs, str, zzane).zzd(context, false);
    }

    public final zzaro zzb(Activity activity) {
        zzwd zzwd = new zzwd(this, activity);
        Intent intent = activity.getIntent();
        boolean z = false;
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            zzazk.zzev("useClientJar flag not found in activity intent extras.");
        } else {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        return (zzaro) zzwd.zzd(activity, z);
    }

    public final zzaev zza(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return (zzaev) new zzwn(this, frameLayout, frameLayout2, context).zzd(context, false);
    }

    public final zzaey zza(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        return (zzaey) new zzwq(this, view, hashMap, hashMap2).zzd(view.getContext(), false);
    }

    public final zzarf zzb(Context context, zzane zzane) {
        return (zzarf) new zzwi(this, context, zzane).zzd(context, false);
    }

    public final zzaxy zza(Context context, zzane zzane) {
        return (zzaxy) new zzwg(this, context, zzane).zzd(context, false);
    }
}
