package defpackage;

import android.os.Process;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;

/* access modifiers changed from: package-private */
/* renamed from: rz  reason: default package */
public class rz {
    private static final AtomicLong a = new AtomicLong(0);
    private static String b;

    rz(t00 t00) {
        long time = new Date().getTime();
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt((int) (time / 1000));
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        byte[] array = allocate.array();
        byte[] a2 = a(time % 1000);
        byte[] a3 = a(a.incrementAndGet());
        byte[] a4 = a((long) Integer.valueOf(Process.myPid()).shortValue());
        byte[] bArr = {array[0], array[1], array[2], array[3], a2[0], a2[1], a3[0], a3[1], a4[0], a4[1]};
        String n = sz.n(t00.c());
        String k = sz.k(bArr);
        Locale locale = Locale.US;
        b = String.format(locale, "%s%s%s%s", k.substring(0, 12), k.substring(12, 16), k.subSequence(16, 20), n.substring(0, 12)).toUpperCase(locale);
    }

    private static byte[] a(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(2);
        allocate.putShort((short) ((int) j));
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        return allocate.array();
    }

    public String toString() {
        return b;
    }
}
