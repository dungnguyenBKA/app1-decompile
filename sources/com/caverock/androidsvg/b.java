package com.caverock.androidsvg;

public class b {
    public static final b c = new b(a.None, null);
    public static final b d = new b(a.XMidYMid, EnumC0036b.Meet);
    private a a;
    private EnumC0036b b;

    public enum a {
        None,
        XMinYMin,
        XMidYMin,
        XMaxYMin,
        XMinYMid,
        XMidYMid,
        XMaxYMid,
        XMinYMax,
        XMidYMax,
        XMaxYMax
    }

    /* renamed from: com.caverock.androidsvg.b$b  reason: collision with other inner class name */
    public enum EnumC0036b {
        Meet,
        Slice
    }

    public b(a aVar, EnumC0036b bVar) {
        this.a = aVar;
        this.b = bVar;
    }

    public a a() {
        return this.a;
    }

    public EnumC0036b b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.a == bVar.a && this.b == bVar.b;
    }
}
