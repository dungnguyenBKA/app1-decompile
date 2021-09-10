package defpackage;

import android.text.format.Time;
import android.util.Log;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: em  reason: default package */
public class em {
    private static boolean d = true;
    private static em e;
    private static String f;
    private static String g;
    private static int h;
    private static boolean i;
    private static final ExecutorService j = Executors.newSingleThreadExecutor();
    public static final /* synthetic */ int k = 0;
    private FileOutputStream a;
    private File b;
    private StringBuilder c;

    /* access modifiers changed from: package-private */
    /* renamed from: em$a */
    public class a implements Runnable {
        a() {
        }

        public void run() {
            try {
                em.this.a = new FileOutputStream(em.this.b, true);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: em$b */
    public class b implements Runnable {
        b() {
        }

        public void run() {
            if (em.this.a != null) {
                try {
                    em.this.a.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                em.this.a = null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: em$c */
    public static class c implements Runnable {
        String b;

        public c(String str) {
            this.b = str;
        }

        public void run() {
            em k = em.k();
            synchronized (this) {
                try {
                    k.a.write(this.b.getBytes());
                    k.a.flush();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private em() {
        StringBuilder q = ic.q("Log instance=");
        q.append(e);
        Log.e("", q.toString());
        if (d) {
            f();
        }
    }

    private void f() {
        if (this.b == null && this.a == null && f != null && g != null) {
            try {
                h = m();
                this.b = new File(l());
                this.c = new StringBuilder();
                j.execute(new a());
            } catch (Exception e2) {
                e2.printStackTrace();
                this.b = null;
                j.execute(new b());
                d = false;
            }
        }
    }

    public static int g(String str, String str2) {
        return o(3, str, str2);
    }

    public static int h(String str, String str2) {
        return o(6, str, str2);
    }

    public static int i(String str, String str2, Throwable th) {
        return o(6, str, str2 + '\n' + Log.getStackTraceString(th));
    }

    public static void j() {
        StringBuilder sb;
        em k2 = k();
        if (k2 != null && (sb = k2.c) != null && k2.a != null) {
            j.execute(new c(sb.toString()));
            synchronized (em.class) {
                StringBuilder sb2 = k2.c;
                sb2.delete(0, sb2.length());
            }
        }
    }

    /* access modifiers changed from: private */
    public static synchronized em k() {
        em emVar;
        synchronized (em.class) {
            if (e == null) {
                e = new em();
                Log.println(6, "", "Log instance=" + e);
            }
            emVar = e;
        }
        return emVar;
    }

    private static String l() {
        StringBuilder sb = new StringBuilder();
        sb.append(f);
        sb.append("/");
        sb.append(g);
        String k2 = ic.k(sb, h, ".log");
        int i2 = h + 1;
        h = i2;
        h = i2 % 2;
        return k2;
    }

    private int m() {
        File file = new File(f + "/" + g + 0 + ".log");
        long j2 = 0;
        long lastModified = file.exists() ? file.lastModified() : 0;
        File file2 = new File(f + "/" + g + 1 + ".log");
        if (file2.exists()) {
            j2 = file2.lastModified();
        }
        if (lastModified < j2) {
            return 1;
        }
        return 0;
    }

    public static int n(String str, String str2) {
        return o(4, str, str2);
    }

    public static int o(int i2, String str, String str2) {
        String str3;
        File file;
        em k2 = k();
        try {
            Time time = new Time();
            Calendar instance = Calendar.getInstance();
            instance.getTimeInMillis();
            time.set(instance.getTimeInMillis());
            str3 = time.format("%Y-%m-%d %H:%M:%S") + "." + String.format("%03d", Long.valueOf(instance.getTimeInMillis() % 1000));
        } catch (Exception unused) {
            str3 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date(System.currentTimeMillis()));
        }
        try {
            if (i) {
                FirebaseCrashlytics.getInstance().log(str3 + " " + str + "-->" + str2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (!d || k2.c == null) {
            return Log.println(i2, str, str2);
        }
        int i3 = 0;
        while (i3 <= str2.length() / 1024) {
            int i4 = i3 * 1024;
            i3++;
            int i5 = i3 * 1024;
            if (i5 > str2.length()) {
                i5 = str2.length();
            }
            Log.println(i2, str, str2.substring(i4, i5));
        }
        str2.length();
        em k3 = k();
        if (!(k3 == null || (file = k3.b) == null || file.length() <= ((long) 400000))) {
            k3.b = new File(l());
            j.execute(new fm(k3));
        }
        synchronized (em.class) {
            StringBuilder sb = k2.c;
            sb.append("\r\n");
            sb.append(str3);
            sb.append("--> ");
            sb.append(str);
            sb.append(" -->");
            sb.append(str2);
        }
        k2.c.length();
        j();
        return 0;
    }

    public static void p(boolean z) {
        i = z;
    }

    public static void q(String str, String str2) {
        f = str;
        g = str2;
        em k2 = k();
        if (d) {
            k2.f();
        }
    }
}
