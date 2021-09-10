package defpackage;

import android.text.TextUtils;
import com.camerasideas.collagemaker.activity.e;
import com.google.firebase.remoteconfig.f;
import com.google.firebase.remoteconfig.k;
import com.zjsoft.baseadlib.b;

/* renamed from: bc0  reason: default package */
public class bc0 {
    private static bc0 c = null;
    private static long d = -1;
    private f a;
    private boolean b = false;

    /* renamed from: bc0$a */
    public interface a {
    }

    private bc0(a aVar) {
        k kVar;
        synchronized (this) {
            try {
                this.a = f.e();
                if (!(System.currentTimeMillis() - d > 43200000)) {
                    if (aVar != null) {
                        ((e) aVar).a.i(false);
                    }
                    return;
                }
                d = -1;
                if (this.b) {
                    if (aVar != null) {
                        ((e) aVar).a.i(false);
                    }
                    return;
                }
                this.b = true;
                zb0 zb0 = new zb0(this, aVar);
                ac0 ac0 = new ac0(this, aVar);
                if (b.a) {
                    k.b bVar = new k.b();
                    bVar.e(5);
                    bVar.d(60);
                    kVar = bVar.c();
                } else {
                    k.b bVar2 = new k.b();
                    bVar2.e(3600);
                    bVar2.d(60);
                    kVar = bVar2.c();
                }
                this.a.j(kVar);
                this.a.d().d(zb0).b(ac0);
            } catch (Throwable th) {
                th.printStackTrace();
                if (aVar != null) {
                    ((e) aVar).a.i(false);
                }
                this.b = false;
            }
        }
    }

    public static synchronized bc0 c(a aVar) {
        bc0 bc0;
        synchronized (bc0.class) {
            if (c == null) {
                c = new bc0(aVar);
            }
            bc0 = c;
        }
        return bc0;
    }

    public String d(String str, String str2) {
        try {
            if (this.a == null) {
                this.a = f.e();
            }
            if (!TextUtils.isEmpty(str)) {
                return this.a.g(str).a();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return str2;
    }
}
