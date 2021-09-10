package defpackage;

import android.graphics.Rect;
import defpackage.s3;
import java.util.Comparator;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: t3  reason: default package */
public class t3 {

    /* renamed from: t3$a */
    public interface a<T> {
    }

    /* renamed from: t3$b */
    public interface b<T, V> {
    }

    /* access modifiers changed from: private */
    /* renamed from: t3$c */
    public static class c<T> implements Comparator<T> {
        private final Rect b = new Rect();
        private final Rect c = new Rect();
        private final boolean d;
        private final a<T> e;

        c(boolean z, a<T> aVar) {
            this.d = z;
            this.e = aVar;
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            Rect rect = this.b;
            Rect rect2 = this.c;
            Objects.requireNonNull((s3.a) this.e);
            t.i(rect);
            Objects.requireNonNull((s3.a) this.e);
            t2.i(rect2);
            int i = rect.top;
            int i2 = rect2.top;
            if (i < i2) {
                return -1;
            }
            if (i > i2) {
                return 1;
            }
            int i3 = rect.left;
            int i4 = rect2.left;
            if (i3 < i4) {
                if (this.d) {
                    return 1;
                }
                return -1;
            } else if (i3 <= i4) {
                int i5 = rect.bottom;
                int i6 = rect2.bottom;
                if (i5 < i6) {
                    return -1;
                }
                if (i5 > i6) {
                    return 1;
                }
                int i7 = rect.right;
                int i8 = rect2.right;
                if (i7 < i8) {
                    if (this.d) {
                        return 1;
                    }
                    return -1;
                } else if (i7 <= i8) {
                    return 0;
                } else {
                    if (this.d) {
                        return -1;
                    }
                    return 1;
                }
            } else if (this.d) {
                return -1;
            } else {
                return 1;
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0033, code lost:
        if (r10.right <= r12.left) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x003a, code lost:
        if (r10.top >= r12.bottom) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0041, code lost:
        if (r10.left >= r12.right) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0045, code lost:
        r7 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0026, code lost:
        if (r10.bottom <= r12.top) goto L_0x0043;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean a(int r9, android.graphics.Rect r10, android.graphics.Rect r11, android.graphics.Rect r12) {
        /*
        // Method dump skipped, instructions count: 126
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.t3.a(int, android.graphics.Rect, android.graphics.Rect, android.graphics.Rect):boolean");
    }

    private static boolean b(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            if (rect2.right < rect.left || rect2.left > rect.right) {
                return false;
            }
            return true;
        }
        if (rect2.bottom < rect.top || rect2.top > rect.bottom) {
            return false;
        }
        return true;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r10v1, resolved type: n3 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00af, code lost:
        if (r13 < ((r14 * r14) + ((r12 * 13) * r12))) goto L_0x00b1;
     */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00b6  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00ba A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <L, T> T c(L r16, defpackage.t3.b<L, T> r17, defpackage.t3.a<T> r18, T r19, android.graphics.Rect r20, int r21) {
        /*
        // Method dump skipped, instructions count: 190
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.t3.c(java.lang.Object, t3$b, t3$a, java.lang.Object, android.graphics.Rect, int):java.lang.Object");
    }

    private static boolean d(Rect rect, Rect rect2, int i) {
        if (i == 17) {
            int i2 = rect.right;
            int i3 = rect2.right;
            if ((i2 > i3 || rect.left >= i3) && rect.left > rect2.left) {
                return true;
            }
            return false;
        } else if (i == 33) {
            int i4 = rect.bottom;
            int i5 = rect2.bottom;
            if ((i4 > i5 || rect.top >= i5) && rect.top > rect2.top) {
                return true;
            }
            return false;
        } else if (i == 66) {
            int i6 = rect.left;
            int i7 = rect2.left;
            if ((i6 < i7 || rect.right <= i7) && rect.right < rect2.right) {
                return true;
            }
            return false;
        } else if (i == 130) {
            int i8 = rect.top;
            int i9 = rect2.top;
            return (i8 < i9 || rect.bottom <= i9) && rect.bottom < rect2.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
    }

    private static int e(int i, Rect rect, Rect rect2) {
        int i2;
        int i3;
        if (i == 17) {
            i3 = rect.left;
            i2 = rect2.right;
        } else if (i == 33) {
            i3 = rect.top;
            i2 = rect2.bottom;
        } else if (i == 66) {
            i3 = rect2.left;
            i2 = rect.right;
        } else if (i == 130) {
            i3 = rect2.top;
            i2 = rect.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return Math.max(0, i3 - i2);
    }

    private static int f(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }
}
