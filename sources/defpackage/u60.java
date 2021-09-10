package defpackage;

import java.math.BigInteger;
import java.util.Objects;

/* renamed from: u60  reason: default package */
public final class u60 extends p60 {
    private final Object a;

    public u60(Boolean bool) {
        Objects.requireNonNull(bool);
        this.a = bool;
    }

    private static boolean k(u60 u60) {
        Object obj = u60.a;
        if (obj instanceof Number) {
            Number number = (Number) obj;
            if ((number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.p60
    public boolean a() {
        Object obj = this.a;
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return Boolean.parseBoolean(h());
    }

    @Override // defpackage.p60
    public double b() {
        return this.a instanceof Number ? i().doubleValue() : Double.parseDouble(h());
    }

    @Override // defpackage.p60
    public float c() {
        return this.a instanceof Number ? i().floatValue() : Float.parseFloat(h());
    }

    @Override // defpackage.p60
    public int d() {
        return this.a instanceof Number ? i().intValue() : Integer.parseInt(h());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || u60.class != obj.getClass()) {
            return false;
        }
        u60 u60 = (u60) obj;
        if (this.a == null) {
            if (u60.a == null) {
                return true;
            }
            return false;
        } else if (!k(this) || !k(u60)) {
            Object obj2 = this.a;
            if (!(obj2 instanceof Number) || !(u60.a instanceof Number)) {
                return obj2.equals(u60.a);
            }
            double doubleValue = i().doubleValue();
            double doubleValue2 = u60.i().doubleValue();
            if (doubleValue == doubleValue2) {
                return true;
            }
            if (!Double.isNaN(doubleValue) || !Double.isNaN(doubleValue2)) {
                return false;
            }
            return true;
        } else if (i().longValue() == u60.i().longValue()) {
            return true;
        } else {
            return false;
        }
    }

    @Override // defpackage.p60
    public long g() {
        return this.a instanceof Number ? i().longValue() : Long.parseLong(h());
    }

    @Override // defpackage.p60
    public String h() {
        Object obj = this.a;
        if (obj instanceof Number) {
            return i().toString();
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).toString();
        }
        return (String) obj;
    }

    public int hashCode() {
        long doubleToLongBits;
        if (this.a == null) {
            return 31;
        }
        if (k(this)) {
            doubleToLongBits = i().longValue();
        } else {
            Object obj = this.a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(i().doubleValue());
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    public Number i() {
        Object obj = this.a;
        return obj instanceof String ? new u70((String) this.a) : (Number) obj;
    }

    public boolean j() {
        return this.a instanceof Boolean;
    }

    public boolean l() {
        return this.a instanceof Number;
    }

    public boolean m() {
        return this.a instanceof String;
    }

    public u60(Number number) {
        Objects.requireNonNull(number);
        this.a = number;
    }

    public u60(String str) {
        Objects.requireNonNull(str);
        this.a = str;
    }
}
