package defpackage;

import defpackage.pm;
import java.net.HttpURLConnection;

/* renamed from: om  reason: default package */
public class om extends pm<String> {
    private a k;
    private String l;
    private int m;

    /* renamed from: om$a */
    public interface a extends pm.b<String> {
        void a(int i);
    }

    public om(String str, String str2, a aVar) {
        super(str, aVar);
        this.l = str2;
        this.k = aVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:43:0x00a6 A[SYNTHETIC, Splitter:B:43:0x00a6] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String d(long r17, java.io.InputStream r19) {
        /*
        // Method dump skipped, instructions count: 203
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.om.d(long, java.io.InputStream):java.lang.String");
    }

    private void e(int i) {
        if (i != this.m) {
            this.m = i;
            a aVar = this.k;
            if (aVar != null) {
                aVar.a(i);
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.pm
    public void a() {
        e(0);
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.pm
    public void b() {
        e(3);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // defpackage.pm
    public String c(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            return d((long) httpURLConnection.getContentLength(), httpURLConnection.getInputStream());
        }
        return d(-1, null);
    }
}
