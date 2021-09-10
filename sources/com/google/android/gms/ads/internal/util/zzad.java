package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.PointF;
import android.os.Handler;
import android.text.TextUtils;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzazk;
import java.util.ArrayList;
import org.apache.http.protocol.HTTP;

public final class zzad {
    private final Context a;
    private String b;
    private String c;
    private String d;
    private String e;
    private int f;
    private int g;
    private PointF h;
    private PointF i;
    private Handler j;
    private Runnable k;

    public zzad(Context context) {
        this.f = 0;
        this.k = new c(this);
        this.a = context;
        this.g = ViewConfiguration.get(context).getScaledTouchSlop();
        zzr.zzlf().zzzp();
        this.j = zzr.zzlf().getHandler();
    }

    private final boolean c(float f2, float f3, float f4, float f5) {
        return Math.abs(this.h.x - f2) < ((float) this.g) && Math.abs(this.h.y - f3) < ((float) this.g) && Math.abs(this.i.x - f4) < ((float) this.g) && Math.abs(this.i.y - f5) < ((float) this.g);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x006e, code lost:
        if (android.text.TextUtils.isEmpty(r2) == false) goto L_0x0073;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ void a(int r2, int r3, int r4, int r5) {
        /*
        // Method dump skipped, instructions count: 191
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzad.a(int, int, int, int):void");
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void b(String str) {
        zzr.zzkr();
        zzj.zza(this.a, Intent.createChooser(new Intent("android.intent.action.SEND").setType(HTTP.PLAIN_TEXT_TYPE).putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void d() {
        zzr.zzlb().zza(this.a, this.c, this.d, this.e);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void e() {
        zzr.zzlb().zze(this.a, this.c, this.d);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void f() {
        this.f = 4;
        showDialog();
    }

    public final void setAdUnitId(String str) {
        this.c = str;
    }

    public final void showDialog() {
        try {
            if (!(this.a instanceof Activity)) {
                zzazk.zzew("Can not create dialog without Activity Context");
                return;
            }
            String str = !TextUtils.isEmpty(zzr.zzlb().zzzl()) ? "Creative Preview (Enabled)" : "Creative Preview";
            String str2 = zzr.zzlb().zzzm() ? "Troubleshooting (Enabled)" : "Troubleshooting";
            ArrayList arrayList = new ArrayList();
            arrayList.add("Ad Information");
            arrayList.add(str);
            arrayList.add(str2);
            AlertDialog.Builder builder = new AlertDialog.Builder(this.a, zzr.zzkt().zzzf());
            builder.setTitle("Select a Debug Mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new b(this, arrayList.size() - 1, arrayList.size() - 1, arrayList.size() - 1));
            builder.create().show();
        } catch (WindowManager.BadTokenException e2) {
            zzd.zza("", e2);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.b);
        sb.append(",DebugSignal: ");
        sb.append(this.e);
        sb.append(",AFMA Version: ");
        sb.append(this.d);
        sb.append(",Ad Unit ID: ");
        return ic.l(sb, this.c, "}");
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x0097  */
    /* JADX WARNING: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzd(android.view.MotionEvent r11) {
        /*
        // Method dump skipped, instructions count: 161
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzad.zzd(android.view.MotionEvent):void");
    }

    public final void zzem(String str) {
        this.b = str;
    }

    public final void zzen(String str) {
        this.e = str;
    }

    public final void zzu(String str) {
        this.d = str;
    }

    public zzad(Context context, String str) {
        this(context);
        this.b = str;
    }
}
