package defpackage;

import android.graphics.Path;
import android.text.TextUtils;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;

/* renamed from: mn  reason: default package */
public class mn {
    private int a;
    private int b;
    private Path c;
    private boolean d;
    private hq e;
    private String f;

    public mn() {
    }

    public int a() {
        return this.b;
    }

    public int b() {
        return this.a;
    }

    public Path c() {
        return this.c;
    }

    public String d() {
        if (this.b != 0) {
            String m = c2.m(CollageMakerApplication.b(), this.b);
            if (TextUtils.isEmpty(m)) {
                return null;
            }
            int lastIndexOf = m.lastIndexOf("/");
            return lastIndexOf >= 0 ? m.substring(lastIndexOf + 1) : m;
        } else if (TextUtils.isEmpty(this.f)) {
            return null;
        } else {
            String str = this.f;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String substring = str.substring(0, str.lastIndexOf("."));
            int lastIndexOf2 = substring.lastIndexOf("/");
            return lastIndexOf2 >= 0 ? substring.substring(lastIndexOf2 + 1) : substring;
        }
    }

    public hq e() {
        return this.e;
    }

    public boolean f() {
        return this.d;
    }

    public void g(int i) {
        this.b = i;
    }

    public void h(int i) {
        this.a = i;
    }

    public void i(Path path) {
        this.c = path;
    }

    public void j(boolean z) {
        this.d = z;
    }

    public void k(hq hqVar) {
        this.e = hqVar;
    }

    public void l(String str) {
        this.f = str;
    }

    public mn(int i, int i2, boolean z) {
        this.a = i;
        this.b = i2;
        this.d = z;
    }
}
