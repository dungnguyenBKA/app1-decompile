package defpackage;

import android.content.Context;

/* renamed from: rl  reason: default package */
public class rl extends sl {
    public rl(Context context) {
        super(context);
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x004f A[Catch:{ Exception -> 0x0056 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.graphics.Bitmap p(java.io.FileDescriptor r9, int r10, int r11, defpackage.ql r12) {
        /*
            r0 = 0
            android.graphics.BitmapFactory$Options r1 = new android.graphics.BitmapFactory$Options     // Catch:{ Exception -> 0x0056 }
            r1.<init>()     // Catch:{ Exception -> 0x0056 }
            r2 = 1
            r1.inJustDecodeBounds = r2     // Catch:{ Exception -> 0x0056 }
            android.graphics.BitmapFactory.decodeFileDescriptor(r9, r0, r1)     // Catch:{ Exception -> 0x0056 }
            if (r10 <= 0) goto L_0x0042
            if (r11 > 0) goto L_0x0011
            goto L_0x0042
        L_0x0011:
            int r3 = r1.outHeight     // Catch:{ Exception -> 0x0056 }
            int r4 = r1.outWidth     // Catch:{ Exception -> 0x0056 }
            if (r3 > r11) goto L_0x001c
            if (r4 <= r10) goto L_0x001a
            goto L_0x001c
        L_0x001a:
            r7 = 1
            goto L_0x003f
        L_0x001c:
            int r5 = r3 / 2
            int r6 = r4 / 2
            r7 = 1
        L_0x0021:
            int r8 = r5 / r7
            if (r8 <= r11) goto L_0x002c
            int r8 = r6 / r7
            if (r8 <= r10) goto L_0x002c
            int r7 = r7 * 2
            goto L_0x0021
        L_0x002c:
            int r4 = r4 * r3
            int r4 = r4 / r7
            long r3 = (long) r4     // Catch:{ Exception -> 0x0056 }
            int r10 = r10 * r11
            int r10 = r10 * 2
            long r10 = (long) r10     // Catch:{ Exception -> 0x0056 }
        L_0x0035:
            int r5 = (r3 > r10 ? 1 : (r3 == r10 ? 0 : -1))
            if (r5 <= 0) goto L_0x003f
            int r7 = r7 * 2
            r5 = 2
            long r3 = r3 / r5
            goto L_0x0035
        L_0x003f:
            r1.inSampleSize = r7     // Catch:{ Exception -> 0x0056 }
            goto L_0x0044
        L_0x0042:
            r1.inSampleSize = r2     // Catch:{ Exception -> 0x0056 }
        L_0x0044:
            r10 = 0
            r1.inJustDecodeBounds = r10     // Catch:{ Exception -> 0x0056 }
            r1.inMutable = r2     // Catch:{ Exception -> 0x0056 }
            android.graphics.Bitmap r10 = r12.i(r1)     // Catch:{ Exception -> 0x0056 }
            if (r10 == 0) goto L_0x0051
            r1.inBitmap = r10     // Catch:{ Exception -> 0x0056 }
        L_0x0051:
            android.graphics.Bitmap r9 = android.graphics.BitmapFactory.decodeFileDescriptor(r9, r0, r1)     // Catch:{ Exception -> 0x0056 }
            return r9
        L_0x0056:
            r9 = move-exception
            r9.printStackTrace()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rl.p(java.io.FileDescriptor, int, int, ql):android.graphics.Bitmap");
    }
}
