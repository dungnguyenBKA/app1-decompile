package androidx.work;

import android.util.Log;

public abstract class h {
    private static h a;

    public static class a extends h {
        private int b;

        public a(int i) {
            this.b = i;
        }

        @Override // androidx.work.h
        public void a(String str, String str2, Throwable... thArr) {
            if (this.b <= 3 && thArr.length >= 1) {
                Throwable th = thArr[0];
            }
        }

        @Override // androidx.work.h
        public void b(String str, String str2, Throwable... thArr) {
            if (this.b > 6) {
                return;
            }
            if (thArr.length >= 1) {
                Log.e(str, str2, thArr[0]);
            } else {
                Log.e(str, str2);
            }
        }

        @Override // androidx.work.h
        public void d(String str, String str2, Throwable... thArr) {
            if (this.b > 4) {
                return;
            }
            if (thArr.length >= 1) {
                Log.i(str, str2, thArr[0]);
            } else {
                Log.i(str, str2);
            }
        }

        @Override // androidx.work.h
        public void g(String str, String str2, Throwable... thArr) {
            if (this.b <= 2 && thArr.length >= 1) {
                Throwable th = thArr[0];
            }
        }

        @Override // androidx.work.h
        public void h(String str, String str2, Throwable... thArr) {
            if (this.b > 5) {
                return;
            }
            if (thArr.length >= 1) {
                Log.w(str, str2, thArr[0]);
            } else {
                Log.w(str, str2);
            }
        }
    }

    public static synchronized h c() {
        h hVar;
        synchronized (h.class) {
            if (a == null) {
                a = new a(3);
            }
            hVar = a;
        }
        return hVar;
    }

    public static synchronized void e(h hVar) {
        synchronized (h.class) {
            a = hVar;
        }
    }

    public static String f(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        if (length >= 20) {
            sb.append(str.substring(0, 20));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    public abstract void a(String str, String str2, Throwable... thArr);

    public abstract void b(String str, String str2, Throwable... thArr);

    public abstract void d(String str, String str2, Throwable... thArr);

    public abstract void g(String str, String str2, Throwable... thArr);

    public abstract void h(String str, String str2, Throwable... thArr);
}
