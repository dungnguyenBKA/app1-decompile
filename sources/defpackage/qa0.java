package defpackage;

import android.os.AsyncTask;

/* renamed from: qa0  reason: default package */
public abstract class qa0 extends AsyncTask<Object, Void, String> {
    private a a;
    protected final b b;

    /* renamed from: qa0$a */
    public interface a {
    }

    /* renamed from: qa0$b */
    public interface b {
    }

    public qa0(b bVar) {
        this.b = bVar;
    }

    public void a(a aVar) {
        this.a = aVar;
    }

    /* access modifiers changed from: protected */
    /* renamed from: b */
    public void onPostExecute(String str) {
        a aVar = this.a;
        if (aVar != null) {
            ((ra0) aVar).b(this);
        }
    }
}
