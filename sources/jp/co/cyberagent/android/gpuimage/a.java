package jp.co.cyberagent.android.gpuimage;

/* access modifiers changed from: package-private */
public class a implements Runnable {
    final /* synthetic */ b b;

    a(b bVar) {
        this.b = bVar;
    }

    public void run() {
        synchronized (this.b.c) {
            this.b.c.a();
            this.b.c.notify();
        }
    }
}
