package androidx.work.impl.utils;

import androidx.work.impl.WorkDatabase;
import androidx.work.impl.b;
import androidx.work.impl.d;
import androidx.work.impl.e;
import androidx.work.impl.i;
import androidx.work.k;
import androidx.work.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

public abstract class a implements Runnable {
    private final b b = new b();

    /* access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.utils.a$a  reason: collision with other inner class name */
    public static class C0024a extends a {
        final /* synthetic */ i c;
        final /* synthetic */ String d;

        C0024a(i iVar, String str) {
            this.c = iVar;
            this.d = str;
        }

        /* JADX INFO: finally extract failed */
        /* access modifiers changed from: package-private */
        @Override // androidx.work.impl.utils.a
        public void d() {
            WorkDatabase i = this.c.i();
            i.c();
            try {
                Iterator it = ((ArrayList) ((e6) i.t()).i(this.d)).iterator();
                while (it.hasNext()) {
                    a(this.c, (String) it.next());
                }
                i.o();
                i.g();
                i iVar = this.c;
                e.b(iVar.d(), iVar.i(), iVar.h());
            } catch (Throwable th) {
                i.g();
                throw th;
            }
        }
    }

    public static a b(String str, i iVar) {
        return new C0024a(iVar, str);
    }

    /* access modifiers changed from: package-private */
    public void a(i iVar, String str) {
        WorkDatabase i = iVar.i();
        d6 t = i.t();
        u5 p = i.p();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            e6 e6Var = (e6) t;
            m g = e6Var.g(str2);
            if (!(g == m.SUCCEEDED || g == m.FAILED)) {
                e6Var.s(m.CANCELLED, str2);
            }
            linkedList.addAll(((v5) p).a(str2));
        }
        iVar.g().g(str);
        for (d dVar : iVar.h()) {
            dVar.cancel(str);
        }
    }

    public k c() {
        return this.b;
    }

    /* access modifiers changed from: package-private */
    public abstract void d();

    public void run() {
        try {
            d();
            this.b.a(k.a);
        } catch (Throwable th) {
            this.b.a(new k.b.a(th));
        }
    }
}
