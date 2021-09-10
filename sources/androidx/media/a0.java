package androidx.media;

import android.text.TextUtils;
import java.util.Objects;

/* access modifiers changed from: package-private */
public class a0 implements y {
    private String a;
    private int b;
    private int c;

    a0(String str, int i, int i2) {
        this.a = str;
        this.b = i;
        this.c = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        if (TextUtils.equals(this.a, a0Var.a) && this.b == a0Var.b && this.c == a0Var.c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.a, Integer.valueOf(this.b), Integer.valueOf(this.c));
    }
}
