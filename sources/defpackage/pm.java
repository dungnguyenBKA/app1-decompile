package defpackage;

import java.net.HttpURLConnection;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: pm  reason: default package */
public abstract class pm<T> implements Runnable {
    private int b = 30000;
    private int c = 60000;
    private b<T> d;
    private String e;
    private a f;
    private int g = -1;
    protected AtomicBoolean h;
    protected AtomicBoolean i;
    protected String j;

    /* renamed from: pm$a */
    public enum a {
        GET,
        POST,
        DELETE;

        public String toString() {
            return super.toString().toUpperCase(Locale.ENGLISH);
        }
    }

    /* renamed from: pm$b */
    public interface b<T> {
        void b(T t);

        void c(int i, Exception exc);
    }

    public pm(String str, b<T> bVar) {
        this.j = str;
        this.d = bVar;
        this.e = null;
        this.f = a.GET;
        this.i = new AtomicBoolean(false);
        this.h = new AtomicBoolean(false);
    }

    /* access modifiers changed from: protected */
    public abstract void a();

    /* access modifiers changed from: protected */
    public abstract void b();

    /* access modifiers changed from: protected */
    public abstract T c(HttpURLConnection httpURLConnection);

    /* JADX WARNING: Code restructure failed: missing block: B:37:0x0092, code lost:
        if (r5 != 0) goto L_0x00a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00a1, code lost:
        if (r5 != null) goto L_0x00a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:?, code lost:
        r5.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00a7, code lost:
        r5 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00a8, code lost:
        r5.printStackTrace();
     */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x006d  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x007a A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00ae A[SYNTHETIC, Splitter:B:52:0x00ae] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        // Method dump skipped, instructions count: 273
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pm.run():void");
    }
}
