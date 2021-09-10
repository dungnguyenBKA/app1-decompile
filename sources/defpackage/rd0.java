package defpackage;

/* renamed from: rd0  reason: default package */
public class rd0 {
    private static boolean a = false;

    static {
        try {
            System.loadLibrary("jpegturboengine");
            a = true;
        } catch (Throwable unused) {
            a = false;
        }
    }

    public static boolean a() {
        return a;
    }
}
