package defpackage;

import android.content.Context;
import java.io.File;

/* renamed from: j10  reason: default package */
public class j10 {
    private static final c d = new c(null);
    private final Context a;
    private final b b;
    private i10 c = d;

    /* renamed from: j10$b */
    public interface b {
        File a();
    }

    /* access modifiers changed from: private */
    /* renamed from: j10$c */
    public static final class c implements i10 {
        c(a aVar) {
        }

        @Override // defpackage.i10
        public void a() {
        }

        @Override // defpackage.i10
        public String b() {
            return null;
        }

        @Override // defpackage.i10
        public byte[] c() {
            return null;
        }

        @Override // defpackage.i10
        public void d() {
        }

        @Override // defpackage.i10
        public void e(long j, String str) {
        }
    }

    public j10(Context context, b bVar) {
        this.a = context;
        this.b = bVar;
        d(null);
    }

    public void a() {
        this.c.d();
    }

    public byte[] b() {
        return this.c.c();
    }

    public String c() {
        return this.c.b();
    }

    public final void d(String str) {
        this.c.a();
        this.c = d;
        if (str != null) {
            if (!sz.e(this.a, "com.crashlytics.CollectCustomLogs", true)) {
                az.f().b("Preferences requested no custom logs. Aborting log file creation.");
                return;
            }
            this.c = new m10(new File(this.b.a(), ic.j("crashlytics-userlog-", str, ".temp")), 65536);
        }
    }

    public void e(long j, String str) {
        this.c.e(j, str);
    }

    public j10(Context context, b bVar, String str) {
        this.a = context;
        this.b = bVar;
        d(str);
    }
}
