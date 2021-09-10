package defpackage;

import android.app.Activity;
import android.text.TextUtils;
import androidx.core.app.b;
import com.android.billingclient.api.i;
import com.android.billingclient.api.j;
import com.android.billingclient.api.m;
import com.google.billingclient.g;
import java.util.ArrayList;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: do  reason: invalid class name and default package */
public class Cdo extends yn<go> implements m, i, g.d {
    private final List<j> d = new ArrayList();
    private final g e;

    public Cdo(go goVar) {
        d(goVar);
        g gVar = new g(this.c, this);
        this.e = gVar;
        gVar.x(this);
    }

    @Override // com.google.billingclient.g.d
    public void a(Activity activity, List<String> list, int i) {
    }

    @Override // com.google.billingclient.g.d
    public void b(int i, List<j> list) {
        em.h("ConsumePurchasesPresenter", "responseCode=" + i + ", purchases=" + list);
        if (i == 0) {
            this.d.clear();
            this.d.addAll(list);
            this.a.a(this.d);
            boolean z = false;
            this.a.c(false, "");
            T t = this.a;
            if (this.d.size() <= 0) {
                z = true;
            }
            t.m(z);
        }
    }

    @Override // com.android.billingclient.api.m
    public void c(com.android.billingclient.api.g gVar, List<j> list) {
    }

    @Override // defpackage.yn
    public String e() {
        return "ConsumePurchasesPresenter";
    }

    @Override // com.android.billingclient.api.i
    public void f(com.android.billingclient.api.g gVar, String str) {
        if (this.d != null && gVar.b() == 0) {
            for (j jVar : this.d) {
                if (TextUtils.equals(str, jVar.b())) {
                    StringBuilder q = ic.q("responseCode=");
                    q.append(gVar.b());
                    q.append(", sku=");
                    q.append(jVar.c());
                    em.h("ConsumePurchasesPresenter", q.toString());
                    this.d.remove(jVar);
                    this.a.a(this.d);
                    boolean z = false;
                    this.a.c(false, "");
                    T t = this.a;
                    if (this.d.size() <= 0) {
                        z = true;
                    }
                    t.m(z);
                    return;
                }
            }
        }
    }

    public void n(int i) {
        j jVar;
        List<j> list = this.d;
        if (list != null && i >= 0 && i < list.size() && (jVar = this.d.get(i)) != null) {
            this.a.c(true, "Consume your purchases...");
            this.e.m(jVar.b(), this);
        }
    }

    public void o() {
        if (!b.c0(this.c)) {
            mr.d(this.c.getString(R.string.e_));
            return;
        }
        T t = this.a;
        String format = String.format("%s ...", this.c.getResources().getString(R.string.gg));
        String str = "";
        if (!TextUtils.isEmpty(format)) {
            try {
                str = format.substring(0, 1).toUpperCase() + format.substring(1, format.length()).toLowerCase();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        t.c(true, str);
        this.e.v();
    }
}
