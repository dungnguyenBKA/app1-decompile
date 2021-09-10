package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

public class k {
    private static final Comparator<f> a = new a();

    static class a implements Comparator<f> {
        a() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // java.util.Comparator
        public int compare(f fVar, f fVar2) {
            f fVar3 = fVar;
            f fVar4 = fVar2;
            int i = fVar3.a - fVar4.a;
            return i == 0 ? fVar3.b - fVar4.b : i;
        }
    }

    public static abstract class b {
        public abstract boolean a(int i, int i2);

        public abstract boolean b(int i, int i2);

        public abstract int c();

        public abstract int d();
    }

    public static class c {
        private final List<f> a;
        private final int[] b;
        private final int[] c;
        private final b d;
        private final int e;
        private final int f;
        private final boolean g;

        c(b bVar, List<f> list, int[] iArr, int[] iArr2, boolean z) {
            this.a = list;
            this.b = iArr;
            this.c = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.d = bVar;
            int d2 = bVar.d();
            this.e = d2;
            int c2 = bVar.c();
            this.f = c2;
            this.g = z;
            f fVar = list.isEmpty() ? null : list.get(0);
            if (!(fVar != null && fVar.a == 0 && fVar.b == 0)) {
                f fVar2 = new f();
                fVar2.a = 0;
                fVar2.b = 0;
                fVar2.d = false;
                fVar2.c = 0;
                fVar2.e = false;
                list.add(0, fVar2);
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                f fVar3 = this.a.get(size);
                int i = fVar3.a;
                int i2 = fVar3.c;
                int i3 = i + i2;
                int i4 = fVar3.b + i2;
                if (this.g) {
                    while (d2 > i3) {
                        int i5 = d2 - 1;
                        if (this.b[i5] == 0) {
                            b(d2, c2, size, false);
                        }
                        d2 = i5;
                    }
                    while (c2 > i4) {
                        int i6 = c2 - 1;
                        if (this.c[i6] == 0) {
                            b(d2, c2, size, true);
                        }
                        c2 = i6;
                    }
                }
                for (int i7 = 0; i7 < fVar3.c; i7++) {
                    int i8 = fVar3.a + i7;
                    int i9 = fVar3.b + i7;
                    int i10 = this.d.a(i8, i9) ? 1 : 2;
                    this.b[i8] = (i9 << 5) | i10;
                    this.c[i9] = (i8 << 5) | i10;
                }
                d2 = fVar3.a;
                c2 = fVar3.b;
            }
        }

        private boolean b(int i, int i2, int i3, boolean z) {
            int i4;
            int i5;
            if (z) {
                i2--;
                i4 = i;
                i5 = i2;
            } else {
                i5 = i - 1;
                i4 = i5;
            }
            while (i3 >= 0) {
                f fVar = this.a.get(i3);
                int i6 = fVar.a;
                int i7 = fVar.c;
                int i8 = i6 + i7;
                int i9 = fVar.b + i7;
                int i10 = 8;
                if (z) {
                    for (int i11 = i4 - 1; i11 >= i8; i11--) {
                        if (this.d.b(i11, i5)) {
                            if (!this.d.a(i11, i5)) {
                                i10 = 4;
                            }
                            this.c[i5] = (i11 << 5) | 16;
                            this.b[i11] = (i5 << 5) | i10;
                            return true;
                        }
                    }
                    continue;
                } else {
                    for (int i12 = i2 - 1; i12 >= i9; i12--) {
                        if (this.d.b(i5, i12)) {
                            if (!this.d.a(i5, i12)) {
                                i10 = 4;
                            }
                            int i13 = i - 1;
                            this.b[i13] = (i12 << 5) | 16;
                            this.c[i12] = (i13 << 5) | i10;
                            return true;
                        }
                    }
                    continue;
                }
                i4 = fVar.a;
                i2 = fVar.b;
                i3--;
            }
            return false;
        }

        private static d c(List<d> list, int i, boolean z) {
            int size = list.size() - 1;
            while (size >= 0) {
                d dVar = list.get(size);
                if (dVar.a == i && dVar.c == z) {
                    list.remove(size);
                    while (size < list.size()) {
                        list.get(size).b += z ? 1 : -1;
                        size++;
                    }
                    return dVar;
                }
                size--;
            }
            return null;
        }

        public void a(RecyclerView.g gVar) {
            c cVar;
            int i;
            b bVar = new b(gVar);
            if (bVar instanceof c) {
                cVar = (c) bVar;
            } else {
                cVar = new c(bVar);
            }
            ArrayList arrayList = new ArrayList();
            int i2 = this.e;
            int i3 = this.f;
            for (int size = this.a.size() - 1; size >= 0; size--) {
                f fVar = this.a.get(size);
                int i4 = fVar.c;
                int i5 = fVar.a + i4;
                int i6 = fVar.b + i4;
                int i7 = 4;
                if (i5 < i2) {
                    int i8 = i2 - i5;
                    if (!this.g) {
                        cVar.c(i5, i8);
                    } else {
                        int i9 = i8 - 1;
                        while (i9 >= 0) {
                            int[] iArr = this.b;
                            int i10 = i5 + i9;
                            int i11 = iArr[i10] & 31;
                            if (i11 == 0) {
                                i = i4;
                                int i12 = 1;
                                cVar.c(i10, 1);
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    ((d) it.next()).b -= i12;
                                    i12 = 1;
                                }
                            } else if (i11 == i7 || i11 == 8) {
                                d c2 = c(arrayList, iArr[i10] >> 5, false);
                                i = i4;
                                cVar.a(i10, c2.b - 1);
                                if (i11 == 4) {
                                    Objects.requireNonNull(this.d);
                                    cVar.d(c2.b - 1, 1, null);
                                }
                            } else if (i11 == 16) {
                                arrayList.add(new d(i10, i10, true));
                                i = i4;
                            } else {
                                throw new IllegalStateException("unknown flag for pos " + i10 + " " + Long.toBinaryString((long) i11));
                            }
                            i9--;
                            i4 = i;
                            i7 = 4;
                        }
                    }
                }
                if (i6 < i3) {
                    int i13 = i3 - i6;
                    if (this.g) {
                        while (true) {
                            i13--;
                            if (i13 < 0) {
                                break;
                            }
                            int[] iArr2 = this.c;
                            int i14 = i6 + i13;
                            int i15 = iArr2[i14] & 31;
                            if (i15 != 0) {
                                if (i15 != 4) {
                                    if (i15 != 8) {
                                        if (i15 == 16) {
                                            arrayList.add(new d(i14, i5, false));
                                        } else {
                                            throw new IllegalStateException("unknown flag for pos " + i14 + " " + Long.toBinaryString((long) i15));
                                        }
                                    }
                                }
                                cVar.a(c(arrayList, iArr2[i14] >> 5, true).b, i5);
                                if (i15 == 4) {
                                    Objects.requireNonNull(this.d);
                                    cVar.d(i5, 1, null);
                                }
                            } else {
                                int i16 = 1;
                                cVar.b(i5, 1);
                                Iterator it2 = arrayList.iterator();
                                while (it2.hasNext()) {
                                    ((d) it2.next()).b += i16;
                                    i16 = 1;
                                }
                            }
                        }
                    } else {
                        cVar.b(i5, i13);
                    }
                }
                int i17 = i4;
                while (true) {
                    i17--;
                    if (i17 < 0) {
                        break;
                    }
                    int[] iArr3 = this.b;
                    int i18 = fVar.a + i17;
                    if ((iArr3[i18] & 31) == 2) {
                        Objects.requireNonNull(this.d);
                        cVar.d(i18, 1, null);
                    }
                }
                i2 = fVar.a;
                i3 = fVar.b;
            }
            cVar.e();
        }
    }

    /* access modifiers changed from: private */
    public static class d {
        int a;
        int b;
        boolean c;

        public d(int i, int i2, boolean z) {
            this.a = i;
            this.b = i2;
            this.c = z;
        }
    }

    static class e {
        int a;
        int b;
        int c;
        int d;

        public e() {
        }

        public e(int i, int i2, int i3, int i4) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
        }
    }

    /* access modifiers changed from: package-private */
    public static class f {
        int a;
        int b;
        int c;
        boolean d;
        boolean e;

        f() {
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0090, code lost:
        if (r5[r20 - 1] < r5[r20 + 1]) goto L_0x00a9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0117, code lost:
        r22 = r2;
        r20 = r3;
        r21 = r8;
        r2 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0123, code lost:
        if (r2 > r9) goto L_0x019c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0125, code lost:
        r8 = r2 + r14;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0129, code lost:
        if (r8 == (r9 + r14)) goto L_0x0146;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x012d, code lost:
        if (r8 == (r6 + r14)) goto L_0x013c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x012f, code lost:
        r11 = r0 + r8;
        r15 = 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0139, code lost:
        if (r7[r11 - 1] >= r7[r11 + 1]) goto L_0x013d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x013c, code lost:
        r15 = 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x013d, code lost:
        r11 = r7[(r0 + r8) + r15] - 1;
        r13 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0146, code lost:
        r11 = r7[(r0 + r8) - 1];
        r13 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x014d, code lost:
        r15 = r11 - r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x014f, code lost:
        if (r11 <= 0) goto L_0x016b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x0151, code lost:
        if (r15 <= 0) goto L_0x016b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0153, code lost:
        r25 = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0161, code lost:
        if (r27.b((r10 + r11) - 1, (r12 + r15) - 1) == false) goto L_0x016d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x0163, code lost:
        r11 = r11 - 1;
        r15 = r15 - 1;
        r10 = r25;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x016b, code lost:
        r25 = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x016d, code lost:
        r3 = r0 + r8;
        r7[r3] = r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0171, code lost:
        if (r4 != false) goto L_0x0196;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x0173, code lost:
        if (r8 < r6) goto L_0x0196;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x0175, code lost:
        if (r8 > r9) goto L_0x0196;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x017b, code lost:
        if (r5[r3] < r7[r3]) goto L_0x0196;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x017d, code lost:
        r2 = new androidx.recyclerview.widget.k.f();
        r4 = r7[r3];
        r2.a = r4;
        r2.b = r4 - r8;
        r2.c = r5[r3] - r7[r3];
        r2.d = r13;
        r2.e = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x0196, code lost:
        r2 = r2 + 2;
        r10 = r25;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x019c, code lost:
        r9 = r9 + 1;
        r15 = r15;
        r3 = r20;
        r8 = r21;
        r2 = r22;
        r11 = r11;
        r13 = r13;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static androidx.recyclerview.widget.k.c a(androidx.recyclerview.widget.k.b r27, boolean r28) {
        /*
        // Method dump skipped, instructions count: 646
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.k.a(androidx.recyclerview.widget.k$b, boolean):androidx.recyclerview.widget.k$c");
    }
}
