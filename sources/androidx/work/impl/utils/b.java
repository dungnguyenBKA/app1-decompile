package androidx.work.impl.utils;

import androidx.work.impl.WorkDatabase;
import androidx.work.impl.e;
import androidx.work.impl.i;
import java.util.ArrayList;
import java.util.Iterator;

/* access modifiers changed from: package-private */
public final class b extends a {
    final /* synthetic */ i c;
    final /* synthetic */ String d;
    final /* synthetic */ boolean e;

    b(i iVar, String str, boolean z) {
        this.c = iVar;
        this.d = str;
        this.e = z;
    }

    /* JADX INFO: finally extract failed */
    /* access modifiers changed from: package-private */
    @Override // androidx.work.impl.utils.a
    public void d() {
        WorkDatabase i = this.c.i();
        i.c();
        try {
            Iterator it = ((ArrayList) ((e6) i.t()).h(this.d)).iterator();
            while (it.hasNext()) {
                a(this.c, (String) it.next());
            }
            i.o();
            i.g();
            if (this.e) {
                i iVar = this.c;
                e.b(iVar.d(), iVar.i(), iVar.h());
            }
        } catch (Throwable th) {
            i.g();
            throw th;
        }
    }
}
