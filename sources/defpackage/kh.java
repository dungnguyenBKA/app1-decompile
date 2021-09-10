package defpackage;

import android.os.Build;
import android.util.Log;
import java.io.File;

/* renamed from: kh  reason: default package */
public final class kh {
    private static final File f = new File("/proc/self/fd");
    private static volatile kh g;
    private final boolean a;
    private final int b;
    private final int c;
    private int d;
    private boolean e = true;

    kh() {
        boolean z = true;
        String str = Build.MODEL;
        if (str != null && str.length() >= 7) {
            String substring = str.substring(0, 7);
            substring.hashCode();
            char c2 = 65535;
            switch (substring.hashCode()) {
                case -1398613787:
                    if (substring.equals("SM-A520")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1398431166:
                    if (substring.equals("SM-G930")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1398431161:
                    if (substring.equals("SM-G935")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -1398431073:
                    if (substring.equals("SM-G960")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -1398431068:
                    if (substring.equals("SM-G965")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case -1398343746:
                    if (substring.equals("SM-J720")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case -1398222624:
                    if (substring.equals("SM-N935")) {
                        c2 = 6;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    if (Build.VERSION.SDK_INT == 26) {
                        z = false;
                        break;
                    }
                    break;
            }
        }
        this.a = z;
        if (Build.VERSION.SDK_INT >= 28) {
            this.b = 20000;
            this.c = 0;
            return;
        }
        this.b = 700;
        this.c = 128;
    }

    public static kh a() {
        if (g == null) {
            synchronized (kh.class) {
                if (g == null) {
                    g = new kh();
                }
            }
        }
        return g;
    }

    public boolean b(int i, int i2, boolean z, boolean z2) {
        int i3;
        boolean z3;
        if (!z || !this.a || Build.VERSION.SDK_INT < 26 || z2 || i < (i3 = this.c) || i2 < i3) {
            return false;
        }
        synchronized (this) {
            int i4 = this.d + 1;
            this.d = i4;
            if (i4 >= 50) {
                this.d = 0;
                int length = f.list().length;
                boolean z4 = length < this.b;
                this.e = z4;
                if (!z4 && Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + this.b);
                }
            }
            z3 = this.e;
        }
        if (z3) {
            return true;
        }
        return false;
    }
}
