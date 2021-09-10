package defpackage;

import java.io.FileOutputStream;

/* access modifiers changed from: package-private */
/* renamed from: fm  reason: default package */
public class fm implements Runnable {
    final /* synthetic */ em b;

    fm(em emVar) {
        this.b = emVar;
    }

    public void run() {
        try {
            this.b.a.close();
            this.b.a = new FileOutputStream(this.b.b, false);
        } catch (Exception e) {
            this.b.b = null;
            e.printStackTrace();
        }
    }
}
