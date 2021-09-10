package androidx.work.impl.utils;

import androidx.work.WorkerParameters;
import androidx.work.impl.i;

public class h implements Runnable {
    private i b;
    private String c;
    private WorkerParameters.a d;

    public h(i iVar, String str, WorkerParameters.a aVar) {
        this.b = iVar;
        this.c = str;
        this.d = aVar;
    }

    public void run() {
        this.b.g().f(this.c, this.d);
    }
}
