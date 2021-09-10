package defpackage;

import com.bumptech.glide.load.h;

/* renamed from: eh  reason: default package */
public abstract class eh {
    public static final eh a = new c();
    public static final eh b = new a();
    public static final eh c;
    public static final eh d = new d();
    public static final eh e;
    public static final h<eh> f;
    static final boolean g = true;

    /* renamed from: eh$a */
    private static class a extends eh {
        a() {
        }

        @Override // defpackage.eh
        public e a(int i, int i2, int i3, int i4) {
            e eVar = e.QUALITY;
            return (b(i, i2, i3, i4) != 1.0f && !eh.g) ? e.MEMORY : eVar;
        }

        @Override // defpackage.eh
        public float b(int i, int i2, int i3, int i4) {
            return Math.min(1.0f, eh.a.b(i, i2, i3, i4));
        }
    }

    /* renamed from: eh$b */
    private static class b extends eh {
        b() {
        }

        @Override // defpackage.eh
        public e a(int i, int i2, int i3, int i4) {
            return e.QUALITY;
        }

        @Override // defpackage.eh
        public float b(int i, int i2, int i3, int i4) {
            return Math.max(((float) i3) / ((float) i), ((float) i4) / ((float) i2));
        }
    }

    /* renamed from: eh$c */
    private static class c extends eh {
        c() {
        }

        @Override // defpackage.eh
        public e a(int i, int i2, int i3, int i4) {
            if (eh.g) {
                return e.QUALITY;
            }
            return e.MEMORY;
        }

        @Override // defpackage.eh
        public float b(int i, int i2, int i3, int i4) {
            if (eh.g) {
                return Math.min(((float) i3) / ((float) i), ((float) i4) / ((float) i2));
            }
            int max = Math.max(i2 / i4, i / i3);
            if (max == 0) {
                return 1.0f;
            }
            return 1.0f / ((float) Integer.highestOneBit(max));
        }
    }

    /* renamed from: eh$d */
    private static class d extends eh {
        d() {
        }

        @Override // defpackage.eh
        public e a(int i, int i2, int i3, int i4) {
            return e.QUALITY;
        }

        @Override // defpackage.eh
        public float b(int i, int i2, int i3, int i4) {
            return 1.0f;
        }
    }

    /* renamed from: eh$e */
    public enum e {
        MEMORY,
        QUALITY
    }

    static {
        b bVar = new b();
        c = bVar;
        e = bVar;
        f = h.d("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", bVar);
    }

    public abstract e a(int i, int i2, int i3, int i4);

    public abstract float b(int i, int i2, int i3, int i4);
}
