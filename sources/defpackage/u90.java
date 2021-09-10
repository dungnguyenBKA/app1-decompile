package defpackage;

import android.view.View;
import androidx.core.app.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;

/* renamed from: u90  reason: default package */
public class u90 extends l90 {
    private final n90 a;
    private final List<x90> b = new ArrayList();
    private ia0 c;
    private ka0 d;
    private boolean e = false;
    private boolean f = false;
    private String g;

    static {
        Pattern.compile("^[a-zA-Z0-9 ]+$");
    }

    u90(m90 m90, n90 n90) {
        this.a = n90;
        this.g = UUID.randomUUID().toString();
        this.c = new ia0(null);
        ka0 la0 = (n90.b() == o90.HTML || n90.b() == o90.JAVASCRIPT) ? new la0(n90.i()) : new ma0(n90.e(), n90.f());
        this.d = la0;
        la0.a();
        v90.a().b(this);
        aa0.a().f(this.d.i(), m90.b());
    }

    @Override // defpackage.l90
    public void b() {
        if (!this.f) {
            this.c.clear();
            if (!this.f) {
                this.b.clear();
            }
            this.f = true;
            aa0.a().b(this.d.i());
            v90.a().f(this);
            this.d.g();
            this.d = null;
        }
    }

    @Override // defpackage.l90
    public void c(View view) {
        if (!this.f) {
            b.a(view, "AdView is null");
            if (f() != view) {
                this.c = new ia0(view);
                this.d.j();
                Collection<u90> c2 = v90.a().c();
                if (c2 != null && c2.size() > 0) {
                    for (u90 u90 : c2) {
                        if (u90 != this && u90.f() == view) {
                            u90.c.clear();
                        }
                    }
                }
            }
        }
    }

    @Override // defpackage.l90
    public void d() {
        if (!this.e) {
            this.e = true;
            v90.a().d(this);
            aa0.a().c(this.d.i(), ba0.a().f());
            this.d.c(this, this.a);
        }
    }

    public List<x90> e() {
        return this.b;
    }

    public View f() {
        return (View) this.c.get();
    }

    public boolean g() {
        return this.e && !this.f;
    }

    public String h() {
        return this.g;
    }

    public ka0 i() {
        return this.d;
    }
}
