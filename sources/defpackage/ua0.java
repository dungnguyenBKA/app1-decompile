package defpackage;

import android.text.TextUtils;
import defpackage.qa0;
import java.util.HashSet;
import org.json.JSONObject;

/* renamed from: ua0  reason: default package */
public class ua0 extends pa0 {
    public ua0(qa0.b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar, hashSet, jSONObject, j);
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.qa0
    /* renamed from: b */
    public void onPostExecute(String str) {
        v90 a;
        if (!TextUtils.isEmpty(str) && (a = v90.a()) != null) {
            for (u90 u90 : a.c()) {
                if (this.c.contains(u90.h())) {
                    u90.i().e(str, this.e);
                }
            }
        }
        super.onPostExecute(str);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public String doInBackground(Object[] objArr) {
        if (ha0.h(this.d, ((va0) this.b).d())) {
            return null;
        }
        ((va0) this.b).b(this.d);
        return this.d.toString();
    }
}
