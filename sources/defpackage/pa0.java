package defpackage;

import defpackage.qa0;
import java.util.HashSet;
import org.json.JSONObject;

/* renamed from: pa0  reason: default package */
public abstract class pa0 extends qa0 {
    protected final HashSet<String> c;
    protected final JSONObject d;
    protected final long e;

    public pa0(qa0.b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar);
        this.c = new HashSet<>(hashSet);
        this.d = jSONObject;
        this.e = j;
    }
}
