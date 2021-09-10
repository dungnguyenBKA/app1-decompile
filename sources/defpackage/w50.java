package defpackage;

import android.content.Context;
import com.google.firebase.components.e;
import com.google.firebase.components.h;
import defpackage.x50;

/* access modifiers changed from: package-private */
/* renamed from: w50  reason: default package */
public final /* synthetic */ class w50 implements h {
    private final String a;
    private final x50.a b;

    private w50(String str, x50.a aVar) {
        this.a = str;
        this.b = aVar;
    }

    public static h b(String str, x50.a aVar) {
        return new w50(str, aVar);
    }

    @Override // com.google.firebase.components.h
    public Object a(e eVar) {
        return new r50(this.a, this.b.a((Context) eVar.a(Context.class)));
    }
}
