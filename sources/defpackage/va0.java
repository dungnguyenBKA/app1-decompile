package defpackage;

import defpackage.qa0;
import java.util.HashSet;
import org.json.JSONObject;

/* renamed from: va0  reason: default package */
public class va0 implements qa0.b {
    private JSONObject a;
    private final ra0 b;

    public va0(ra0 ra0) {
        this.b = ra0;
    }

    public void a() {
        this.b.c(new sa0(this));
    }

    public void b(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    public void c(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.b.c(new ua0(this, hashSet, jSONObject, j));
    }

    public JSONObject d() {
        return this.a;
    }

    public void e(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.b.c(new ta0(this, hashSet, jSONObject, j));
    }
}
