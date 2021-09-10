package defpackage;

import android.content.Context;
import java.io.File;

/* renamed from: kq  reason: default package */
public final /* synthetic */ class kq implements Runnable {
    public final /* synthetic */ Context b;

    public /* synthetic */ kq(Context context) {
        this.b = context;
    }

    public final void run() {
        try {
            File[] listFiles = new File(rq.g(this.b)).listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    if (file.isFile()) {
                        file.delete();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
