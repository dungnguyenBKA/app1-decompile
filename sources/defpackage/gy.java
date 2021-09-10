package defpackage;

import android.graphics.RectF;
import java.util.Arrays;

/* renamed from: gy  reason: default package */
public final class gy implements iy {
    private final float a;

    public gy(float f) {
        this.a = f;
    }

    @Override // defpackage.iy
    public float a(RectF rectF) {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof gy) && this.a == ((gy) obj).a) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.a)});
    }
}
