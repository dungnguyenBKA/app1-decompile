package defpackage;

import android.graphics.RectF;
import java.util.Arrays;

/* renamed from: hy  reason: default package */
public final class hy implements iy {
    private final iy a;
    private final float b;

    public hy(float f, iy iyVar) {
        while (iyVar instanceof hy) {
            iyVar = ((hy) iyVar).a;
            f += ((hy) iyVar).b;
        }
        this.a = iyVar;
        this.b = f;
    }

    @Override // defpackage.iy
    public float a(RectF rectF) {
        return Math.max(0.0f, this.a.a(rectF) + this.b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hy)) {
            return false;
        }
        hy hyVar = (hy) obj;
        if (!this.a.equals(hyVar.a) || this.b != hyVar.b) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, Float.valueOf(this.b)});
    }
}
