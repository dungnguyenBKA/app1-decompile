package com.facebook.ads.redexgen.X;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* renamed from: com.facebook.ads.redexgen.X.99  reason: invalid class name */
public class AnonymousClass99 implements Callable<Boolean> {
    public final /* synthetic */ SharedPreferences A00;
    public final /* synthetic */ AnonymousClass8D A01;
    public final /* synthetic */ String A02;

    public AnonymousClass99(AnonymousClass8D r1, SharedPreferences sharedPreferences, String str) {
        this.A01 = r1;
        this.A00 = sharedPreferences;
        this.A02 = str;
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final Boolean call() throws Exception {
        AnonymousClass8D r1 = this.A01;
        String unused = C0953Xv.A03 = C0953Xv.A02(r1, r1.getPackageName());
        this.A00.edit().putString(this.A02, C0953Xv.A03).apply();
        C0953Xv.A08.set(2);
        return true;
    }
}
