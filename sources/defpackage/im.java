package defpackage;

/* renamed from: im  reason: default package */
public class im {
    private static StringBuilder a;
    private static StringBuilder b;

    public static void a() {
        a = new StringBuilder();
        b = new StringBuilder();
    }

    public static void b(String str) {
        if (a != null) {
            em.h("ReportUtils", str);
            synchronized (im.class) {
                StringBuilder sb = a;
                sb.append(str);
                sb.append("|");
                if (a.length() > 8192) {
                    StringBuilder sb2 = a;
                    sb2.delete(0, sb2.length() - 8192);
                }
                StringBuilder sb3 = b;
                sb3.append(str);
                sb3.append("|");
                if (b.length() > 32768) {
                    StringBuilder sb4 = b;
                    sb4.delete(0, sb4.length() - 32768);
                }
            }
        }
    }
}
