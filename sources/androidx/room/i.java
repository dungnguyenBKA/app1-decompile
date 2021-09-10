package androidx.room;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

public class i implements k4, j4 {
    static final TreeMap<Integer, i> j = new TreeMap<>();
    private volatile String b;
    final long[] c;
    final double[] d;
    final String[] e;
    final byte[][] f;
    private final int[] g;
    final int h;
    int i;

    private i(int i2) {
        this.h = i2;
        int i3 = i2 + 1;
        this.g = new int[i3];
        this.c = new long[i3];
        this.d = new double[i3];
        this.e = new String[i3];
        this.f = new byte[i3][];
    }

    public static i L(String str, int i2) {
        TreeMap<Integer, i> treeMap = j;
        synchronized (treeMap) {
            Map.Entry<Integer, i> ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i2));
            if (ceilingEntry != null) {
                treeMap.remove(ceilingEntry.getKey());
                i value = ceilingEntry.getValue();
                value.b = str;
                value.i = i2;
                return value;
            }
            i iVar = new i(i2);
            iVar.b = str;
            iVar.i = i2;
            return iVar;
        }
    }

    @Override // defpackage.j4
    public void B(int i2, byte[] bArr) {
        this.g[i2] = 5;
        this.f[i2] = bArr;
    }

    @Override // defpackage.j4
    public void N(int i2) {
        this.g[i2] = 1;
    }

    public void S() {
        TreeMap<Integer, i> treeMap = j;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.h), this);
            if (treeMap.size() > 15) {
                int size = treeMap.size() - 10;
                Iterator<Integer> it = treeMap.descendingKeySet().iterator();
                while (true) {
                    int i2 = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    it.next();
                    it.remove();
                    size = i2;
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // defpackage.j4
    public void g(int i2, String str) {
        this.g[i2] = 4;
        this.e[i2] = str;
    }

    @Override // defpackage.k4
    public String j() {
        return this.b;
    }

    @Override // defpackage.k4
    public void o(j4 j4Var) {
        for (int i2 = 1; i2 <= this.i; i2++) {
            int i3 = this.g[i2];
            if (i3 == 1) {
                j4Var.N(i2);
            } else if (i3 == 2) {
                j4Var.z(i2, this.c[i2]);
            } else if (i3 == 3) {
                j4Var.p(i2, this.d[i2]);
            } else if (i3 == 4) {
                j4Var.g(i2, this.e[i2]);
            } else if (i3 == 5) {
                j4Var.B(i2, this.f[i2]);
            }
        }
    }

    @Override // defpackage.j4
    public void p(int i2, double d2) {
        this.g[i2] = 3;
        this.d[i2] = d2;
    }

    @Override // defpackage.j4
    public void z(int i2, long j2) {
        this.g[i2] = 2;
        this.c[i2] = j2;
    }
}
