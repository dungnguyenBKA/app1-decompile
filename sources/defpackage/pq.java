package defpackage;

import android.content.Context;
import org.json.JSONArray;

/* renamed from: pq  reason: default package */
public final /* synthetic */ class pq implements Runnable {
    public final /* synthetic */ JSONArray b;
    public final /* synthetic */ Context c;

    public /* synthetic */ pq(JSONArray jSONArray, Context context) {
        this.b = jSONArray;
        this.c = context;
    }

    public final void run() {
        sq.d(this.b, this.c);
    }
}
