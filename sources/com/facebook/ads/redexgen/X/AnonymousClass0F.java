package com.facebook.ads.redexgen.X;

import java.io.File;
import java.util.concurrent.Callable;

/* renamed from: com.facebook.ads.redexgen.X.0F  reason: invalid class name */
public class AnonymousClass0F implements Callable<Void> {
    public final File A00;
    public final /* synthetic */ RS A01;

    public AnonymousClass0F(RS rs, File file) {
        this.A01 = rs;
        this.A00 = file;
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final Void call() throws Exception {
        this.A01.A08(this.A00);
        return null;
    }
}
