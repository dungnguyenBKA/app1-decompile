package defpackage;

import android.graphics.RectF;
import java.util.Arrays;

/* renamed from: oy  reason: default package */
public final class oy implements iy {
    private final float a;

    public oy(float f) {
        this.a = f;
    }

    @Override // defpackage.iy
    public float a(RectF rectF) {
        return rectF.height() * this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof oy) && this.a == ((oy) obj).a) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.a)});
    }
}
