package defpackage;

/* renamed from: l8  reason: default package */
public class l8 {
    public final String a;
    public final String b;
    public final float c;
    public final a d;
    public final int e;
    public final float f;
    public final float g;
    public final int h;
    public final int i;
    public final float j;
    public final boolean k;

    /* renamed from: l8$a */
    public enum a {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public l8(String str, String str2, float f2, a aVar, int i2, float f3, float f4, int i3, int i4, float f5, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = f2;
        this.d = aVar;
        this.e = i2;
        this.f = f3;
        this.g = f4;
        this.h = i3;
        this.i = i4;
        this.j = f5;
        this.k = z;
    }

    public int hashCode() {
        String str = this.b;
        int ordinal = ((this.d.ordinal() + (((int) (((float) ic.w(str, this.a.hashCode() * 31, 31)) + this.c)) * 31)) * 31) + this.e;
        long floatToRawIntBits = (long) Float.floatToRawIntBits(this.f);
        return (((ordinal * 31) + ((int) (floatToRawIntBits ^ (floatToRawIntBits >>> 32)))) * 31) + this.h;
    }
}
