package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.io.File;

/* renamed from: i4  reason: default package */
public interface i4 {

    /* renamed from: i4$a */
    public static abstract class a {
        public final int a;

        public a(int i) {
            this.a = i;
        }

        private void a(String str) {
            if (!str.equalsIgnoreCase(":memory:") && str.trim().length() != 0) {
                Log.w("SupportSQLite", "deleting the database file: " + str);
                try {
                    SQLiteDatabase.deleteDatabase(new File(str));
                } catch (Exception e) {
                    Log.w("SupportSQLite", "delete failed: ", e);
                }
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:10:0x0030, code lost:
            if (r0 != null) goto L_0x0032;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:11:0x0032, code lost:
            r3 = r0.iterator();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:13:0x003a, code lost:
            if (r3.hasNext() != false) goto L_0x003c;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:14:0x003c, code lost:
            a((java.lang.String) r3.next().second);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:15:0x004a, code lost:
            a(r3.getPath());
         */
        /* JADX WARNING: Code restructure failed: missing block: B:16:0x0051, code lost:
            throw r1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:7:0x002a, code lost:
            r1 = move-exception;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:8:0x002c */
        /* JADX WARNING: Removed duplicated region for block: B:19:0x0055  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x006d  */
        /* JADX WARNING: Removed duplicated region for block: B:7:0x002a A[ExcHandler: all (r1v2 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r0 
          PHI: (r0v11 java.util.List<android.util.Pair<java.lang.String, java.lang.String>>) = (r0v4 java.util.List<android.util.Pair<java.lang.String, java.lang.String>>), (r0v5 java.util.List<android.util.Pair<java.lang.String, java.lang.String>>), (r0v5 java.util.List<android.util.Pair<java.lang.String, java.lang.String>>) binds: [B:5:0x0025, B:8:0x002c, B:9:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:5:0x0025] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void b(defpackage.h4 r3) {
            /*
            // Method dump skipped, instructions count: 117
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.i4.a.b(h4):void");
        }

        public abstract void c(h4 h4Var);

        public abstract void d(h4 h4Var);

        public abstract void e(h4 h4Var, int i, int i2);
    }

    /* renamed from: i4$b */
    public static class b {
        public final Context a;
        public final String b;
        public final a c;

        /* renamed from: i4$b$a */
        public static class a {
            Context a;
            String b;
            a c;

            a(Context context) {
                this.a = context;
            }

            public b a() {
                a aVar = this.c;
                if (aVar != null) {
                    Context context = this.a;
                    if (context != null) {
                        return new b(context, this.b, aVar);
                    }
                    throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                }
                throw new IllegalArgumentException("Must set a callback to create the configuration.");
            }

            public a b(a aVar) {
                this.c = aVar;
                return this;
            }

            public a c(String str) {
                this.b = str;
                return this;
            }
        }

        b(Context context, String str, a aVar) {
            this.a = context;
            this.b = str;
            this.c = aVar;
        }

        public static a a(Context context) {
            return new a(context);
        }
    }

    /* renamed from: i4$c */
    public interface c {
    }

    void a(boolean z);

    h4 b();
}
