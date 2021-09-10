package defpackage;

import java.io.File;

/* renamed from: vp  reason: default package */
public final /* synthetic */ class vp implements Runnable {
    public final /* synthetic */ yp b;
    public final /* synthetic */ File c;
    public final /* synthetic */ File d;
    public final /* synthetic */ String e;

    public /* synthetic */ vp(yp ypVar, File file, File file2, String str) {
        this.b = ypVar;
        this.c = file;
        this.d = file2;
        this.e = str;
    }

    public final void run() {
        this.b.L(this.c, this.d, this.e);
    }
}
