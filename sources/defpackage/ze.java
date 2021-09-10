package defpackage;

import android.graphics.Bitmap;
import android.os.Build;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* renamed from: ze  reason: default package */
public class ze implements xe {
    private static final Bitmap.Config[] d;
    private static final Bitmap.Config[] e;
    private static final Bitmap.Config[] f = {Bitmap.Config.RGB_565};
    private static final Bitmap.Config[] g = {Bitmap.Config.ARGB_4444};
    private static final Bitmap.Config[] h = {Bitmap.Config.ALPHA_8};
    private final c a = new c();
    private final te<b, Bitmap> b = new te<>();
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> c = new HashMap();

    /* access modifiers changed from: package-private */
    /* renamed from: ze$a */
    public static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0012 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001d */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0028 */
        static {
            /*
                android.graphics.Bitmap$Config[] r0 = android.graphics.Bitmap.Config.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                defpackage.ze.a.a = r0
                android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.ARGB_8888     // Catch:{ NoSuchFieldError -> 0x0012 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0012 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0012 }
            L_0x0012:
                int[] r0 = defpackage.ze.a.a     // Catch:{ NoSuchFieldError -> 0x001d }
                android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.RGB_565     // Catch:{ NoSuchFieldError -> 0x001d }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001d }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                int[] r0 = defpackage.ze.a.a     // Catch:{ NoSuchFieldError -> 0x0028 }
                android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.ARGB_4444     // Catch:{ NoSuchFieldError -> 0x0028 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0028 }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0028 }
            L_0x0028:
                int[] r0 = defpackage.ze.a.a     // Catch:{ NoSuchFieldError -> 0x0033 }
                android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.ALPHA_8     // Catch:{ NoSuchFieldError -> 0x0033 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0033 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0033 }
            L_0x0033:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.ze.a.<clinit>():void");
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: ze$b */
    public static final class b implements ye {
        private final c a;
        int b;
        private Bitmap.Config c;

        public b(c cVar) {
            this.a = cVar;
        }

        @Override // defpackage.ye
        public void a() {
            this.a.c(this);
        }

        public void b(int i, Bitmap.Config config) {
            this.b = i;
            this.c = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.b != bVar.b || !hl.b(this.c, bVar.c)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            int i = this.b * 31;
            Bitmap.Config config = this.c;
            return i + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return ze.c(this.b, this.c);
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: ze$c */
    public static class c extends pe<b> {
        c() {
        }

        /* Return type fixed from 'ye' to match base method */
        /* access modifiers changed from: protected */
        @Override // defpackage.pe
        public b a() {
            return new b(this);
        }

        public b d(int i, Bitmap.Config config) {
            b bVar = (b) b();
            bVar.b(i, config);
            return bVar;
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        d = configArr;
        e = configArr;
    }

    private void a(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> d2 = d(bitmap.getConfig());
        Integer num2 = (Integer) d2.get(num);
        if (num2 == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + e(bitmap) + ", this: " + this);
        } else if (num2.intValue() == 1) {
            d2.remove(num);
        } else {
            d2.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    static String c(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    private NavigableMap<Integer, Integer> d(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.c.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.c.put(config, treeMap);
        return treeMap;
    }

    public Bitmap b(int i, int i2, Bitmap.Config config) {
        Bitmap.Config[] configArr;
        int c2 = hl.c(i, i2, config);
        b bVar = (b) this.a.b();
        bVar.b(c2, config);
        int i3 = 0;
        if (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(config)) {
            int i4 = a.a[config.ordinal()];
            if (i4 == 1) {
                configArr = d;
            } else if (i4 == 2) {
                configArr = f;
            } else if (i4 != 3) {
                configArr = i4 != 4 ? new Bitmap.Config[]{config} : h;
            } else {
                configArr = g;
            }
        } else {
            configArr = e;
        }
        int length = configArr.length;
        while (true) {
            if (i3 >= length) {
                break;
            }
            Bitmap.Config config2 = configArr[i3];
            Integer ceilingKey = d(config2).ceilingKey(Integer.valueOf(c2));
            if (ceilingKey == null || ceilingKey.intValue() > c2 * 8) {
                i3++;
            } else if (ceilingKey.intValue() != c2 || (config2 != null ? !config2.equals(config) : config != null)) {
                this.a.c(bVar);
                bVar = this.a.d(ceilingKey.intValue(), config2);
            }
        }
        Bitmap a2 = this.b.a(bVar);
        if (a2 != null) {
            a(Integer.valueOf(bVar.b), a2);
            a2.reconfigure(i, i2, config);
        }
        return a2;
    }

    public String e(Bitmap bitmap) {
        return c(hl.d(bitmap), bitmap.getConfig());
    }

    public void f(Bitmap bitmap) {
        b d2 = this.a.d(hl.d(bitmap), bitmap.getConfig());
        this.b.b(d2, bitmap);
        NavigableMap<Integer, Integer> d3 = d(bitmap.getConfig());
        Integer num = (Integer) d3.get(Integer.valueOf(d2.b));
        Integer valueOf = Integer.valueOf(d2.b);
        int i = 1;
        if (num != null) {
            i = 1 + num.intValue();
        }
        d3.put(valueOf, Integer.valueOf(i));
    }

    public Bitmap g() {
        Bitmap c2 = this.b.c();
        if (c2 != null) {
            a(Integer.valueOf(hl.d(c2)), c2);
        }
        return c2;
    }

    public String toString() {
        StringBuilder q = ic.q("SizeConfigStrategy{groupedMap=");
        q.append(this.b);
        q.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.c.entrySet()) {
            q.append(entry.getKey());
            q.append('[');
            q.append(entry.getValue());
            q.append("], ");
        }
        if (!this.c.isEmpty()) {
            q.replace(q.length() - 2, q.length(), "");
        }
        q.append(")}");
        return q.toString();
    }
}
