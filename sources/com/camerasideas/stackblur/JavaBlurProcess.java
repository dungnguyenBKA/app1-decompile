package com.camerasideas.stackblur;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* access modifiers changed from: package-private */
public class JavaBlurProcess implements a {
    private static final short[] a = {512, 512, 456, 512, 328, 456, 335, 512, 405, 328, 271, 456, 388, 335, 292, 512, 454, 405, 364, 328, 298, 271, 496, 456, 420, 388, 360, 335, 312, 292, 273, 512, 482, 454, 428, 405, 383, 364, 345, 328, 312, 298, 284, 271, 259, 496, 475, 456, 437, 420, 404, 388, 374, 360, 347, 335, 323, 312, 302, 292, 282, 273, 265, 512, 497, 482, 468, 454, 441, 428, 417, 405, 394, 383, 373, 364, 354, 345, 337, 328, 320, 312, 305, 298, 291, 284, 278, 271, 265, 259, 507, 496, 485, 475, 465, 456, 446, 437, 428, 420, 412, 404, 396, 388, 381, 374, 367, 360, 354, 347, 341, 335, 329, 323, 318, 312, 307, 302, 297, 292, 287, 282, 278, 273, 269, 265, 261, 512, 505, 497, 489, 482, 475, 468, 461, 454, 447, 441, 435, 428, 422, 417, 411, 405, 399, 394, 389, 383, 378, 373, 368, 364, 359, 354, 350, 345, 341, 337, 332, 328, 324, 320, 316, 312, 309, 305, 301, 298, 294, 291, 287, 284, 281, 278, 274, 271, 268, 265, 262, 259, 257, 507, 501, 496, 491, 485, 480, 475, 470, 465, 460, 456, 451, 446, 442, 437, 433, 428, 424, 420, 416, 412, 408, 404, 400, 396, 392, 388, 385, 381, 377, 374, 370, 367, 363, 360, 357, 354, 350, 347, 344, 341, 338, 335, 332, 329, 326, 323, 320, 318, 315, 312, 310, 307, 304, 302, 299, 297, 294, 292, 289, 287, 285, 282, 280, 278, 275, 273, 271, 269, 267, 265, 263, 261, 259};
    private static final byte[] b = {9, 11, 12, 13, 13, 14, 14, 15, 15, 15, 15, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24};

    private static class a implements Callable<Void> {
        private final int[] b;
        private final int c;
        private final int d;
        private final int e;
        private final int f;
        private final int g;

        public a(int[] iArr, int i, int i2, int i3, int i4, int i5, int i6) {
            this.b = iArr;
            this.c = i;
            this.d = i2;
            this.e = i3;
            this.f = i5;
            this.g = i6;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public Void call() {
            JavaBlurProcess.b(this.b, this.c, this.d, this.e, 1, this.f, this.g);
            return null;
        }
    }

    JavaBlurProcess() {
    }

    static void b(int[] iArr, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = i;
        int i8 = i2;
        int i9 = i3;
        int i10 = i7 - 1;
        int i11 = i8 - 1;
        int i12 = (i9 * 2) + 1;
        short s = a[i9];
        byte b2 = b[i9];
        int[] iArr2 = new int[i12];
        int i13 = 16;
        if (i6 == 1) {
            int i14 = (i5 * i8) / i4;
            int i15 = ((i5 + 1) * i8) / i4;
            while (i14 < i15) {
                int i16 = i7 * i14;
                long j = 0;
                long j2 = 0;
                long j3 = 0;
                long j4 = 0;
                long j5 = 0;
                long j6 = 0;
                int i17 = 0;
                while (i17 <= i9) {
                    iArr2[i17] = iArr[i16];
                    i17++;
                    j += (long) (((iArr[i16] >>> 16) & 255) * i17);
                    j2 += (long) (((iArr[i16] >>> 8) & 255) * i17);
                    j3 += (long) ((iArr[i16] & 255) * i17);
                    j4 += (long) ((iArr[i16] >>> 16) & 255);
                    j5 += (long) ((iArr[i16] >>> 8) & 255);
                    j6 += (long) (iArr[i16] & 255);
                }
                int i18 = i16;
                long j7 = 0;
                long j8 = 0;
                long j9 = 0;
                for (int i19 = 1; i19 <= i9; i19++) {
                    if (i19 <= i10) {
                        i18++;
                    }
                    iArr2[i19 + i9] = iArr[i18];
                    int i20 = (i9 + 1) - i19;
                    j += (long) (((iArr[i18] >>> 16) & 255) * i20);
                    j2 += (long) (((iArr[i18] >>> 8) & 255) * i20);
                    j3 += (long) ((iArr[i18] & 255) * i20);
                    j9 += (long) ((iArr[i18] >>> 16) & 255);
                    j7 += (long) ((iArr[i18] >>> 8) & 255);
                    j8 += (long) (iArr[i18] & 255);
                }
                int i21 = i9 > i10 ? i10 : i9;
                int i22 = i21 + i16;
                int i23 = i9;
                int i24 = 0;
                while (i24 < i7) {
                    long j10 = (long) s;
                    iArr[i16] = (int) ((((j10 * j3) >>> b2) & 255) | ((long) (iArr[i16] & -16777216)) | ((((j * j10) >>> b2) & 255) << 16) | ((((j2 * j10) >>> b2) & 255) << 8));
                    i16++;
                    long j11 = j - j4;
                    long j12 = j2 - j5;
                    long j13 = j3 - j6;
                    int i25 = (i23 + i12) - i9;
                    if (i25 >= i12) {
                        i25 -= i12;
                    }
                    long j14 = j4 - ((long) ((iArr2[i25] >>> 16) & 255));
                    long j15 = j5 - ((long) ((iArr2[i25] >>> 8) & 255));
                    long j16 = j6 - ((long) (iArr2[i25] & 255));
                    if (i21 < i10) {
                        i22++;
                        i21++;
                    } else {
                        i22 = i22;
                    }
                    iArr2[i25] = iArr[i22];
                    long j17 = j9 + ((long) ((iArr[i22] >>> 16) & 255));
                    long j18 = j7 + ((long) ((iArr[i22] >>> 8) & 255));
                    long j19 = j8 + ((long) (iArr[i22] & 255));
                    j = j11 + j17;
                    j2 = j12 + j18;
                    j3 = j13 + j19;
                    i23++;
                    if (i23 >= i12) {
                        i23 = 0;
                    }
                    j4 = j14 + ((long) ((iArr2[i23] >>> 16) & 255));
                    j5 = j15 + ((long) ((iArr2[i23] >>> 8) & 255));
                    j6 = j16 + ((long) (iArr2[i23] & 255));
                    j9 = j17 - ((long) ((iArr2[i23] >>> 16) & 255));
                    j7 = j18 - ((long) ((iArr2[i23] >>> 8) & 255));
                    j8 = j19 - ((long) (iArr2[i23] & 255));
                    i24++;
                    i14 = i14;
                    i10 = i10;
                }
                i14++;
            }
        } else if (i6 == 2) {
            int i26 = (i5 * i7) / i4;
            int i27 = ((i5 + 1) * i7) / i4;
            while (i26 < i27) {
                long j20 = 0;
                long j21 = 0;
                long j22 = 0;
                long j23 = 0;
                long j24 = 0;
                long j25 = 0;
                int i28 = 0;
                while (i28 <= i9) {
                    iArr2[i28] = iArr[i26];
                    i28++;
                    j20 += (long) (((iArr[i26] >>> i13) & 255) * i28);
                    j21 += (long) (((iArr[i26] >>> 8) & 255) * i28);
                    j22 += (long) ((iArr[i26] & 255) * i28);
                    j23 += (long) ((iArr[i26] >>> i13) & 255);
                    j24 += (long) ((iArr[i26] >>> 8) & 255);
                    j25 += (long) (iArr[i26] & 255);
                    i11 = i11;
                }
                int i29 = i11;
                int i30 = i26;
                long j26 = 0;
                long j27 = 0;
                long j28 = 0;
                int i31 = 1;
                while (i31 <= i9) {
                    if (i31 <= i29) {
                        i30 += i7;
                    }
                    iArr2[i31 + i9] = iArr[i30];
                    int i32 = (i9 + 1) - i31;
                    j20 += (long) (((iArr[i30] >>> i13) & 255) * i32);
                    j21 += (long) (((iArr[i30] >>> 8) & 255) * i32);
                    j22 += (long) ((iArr[i30] & 255) * i32);
                    j28 += (long) ((iArr[i30] >>> i13) & 255);
                    j26 += (long) ((iArr[i30] >>> 8) & 255);
                    j27 += (long) (iArr[i30] & 255);
                    i31++;
                    i27 = i27;
                    i29 = i29;
                    i12 = i12;
                }
                int i33 = i12;
                int i34 = i9 > i29 ? i29 : i9;
                int i35 = (i34 * i7) + i26;
                int i36 = i9;
                int i37 = i26;
                int i38 = 0;
                while (i38 < i8) {
                    long j29 = (long) s;
                    iArr[i37] = (int) ((((j29 * j22) >>> b2) & 255) | ((long) (iArr[i37] & -16777216)) | ((((j20 * j29) >>> b2) & 255) << 16) | ((((j21 * j29) >>> b2) & 255) << 8));
                    i37 += i7;
                    long j30 = j20 - j23;
                    long j31 = j21 - j24;
                    long j32 = j22 - j25;
                    int i39 = (i36 + i33) - i9;
                    if (i39 >= i33) {
                        i39 -= i33;
                    }
                    long j33 = j23 - ((long) ((iArr2[i39] >>> 16) & 255));
                    long j34 = j24 - ((long) ((iArr2[i39] >>> 8) & 255));
                    long j35 = j25 - ((long) (iArr2[i39] & 255));
                    i34 = i34;
                    if (i34 < i29) {
                        i35 += i7;
                        i34++;
                    } else {
                        i35 = i35;
                    }
                    iArr2[i39] = iArr[i35];
                    long j36 = j28 + ((long) ((iArr[i35] >>> 16) & 255));
                    long j37 = j26 + ((long) ((iArr[i35] >>> 8) & 255));
                    long j38 = j27 + ((long) (iArr[i35] & 255));
                    j20 = j30 + j36;
                    j21 = j31 + j37;
                    j22 = j32 + j38;
                    i36++;
                    if (i36 >= i33) {
                        i36 = 0;
                    }
                    j23 = j33 + ((long) ((iArr2[i36] >>> 16) & 255));
                    j24 = j34 + ((long) ((iArr2[i36] >>> 8) & 255));
                    j25 = j35 + ((long) (iArr2[i36] & 255));
                    j28 = j36 - ((long) ((iArr2[i36] >>> 16) & 255));
                    j26 = j37 - ((long) ((iArr2[i36] >>> 8) & 255));
                    j27 = j38 - ((long) (iArr2[i36] & 255));
                    i38++;
                    i7 = i;
                    i8 = i2;
                    i9 = i3;
                    i33 = i33;
                    i26 = i26;
                }
                i8 = i2;
                i9 = i3;
                i27 = i27;
                i12 = i33;
                i11 = i29;
                i13 = 16;
                i26++;
                i7 = i;
            }
        }
    }

    private static native int rightOperator(long j, int i);

    @Override // com.camerasideas.stackblur.a
    public Bitmap a(Bitmap bitmap, float f) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[(width * height)];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        for (int i = 0; i < 1; i++) {
            int i2 = (int) f;
            arrayList.add(new a(iArr, width, height, i2, 1, i, 1));
            arrayList2.add(new a(iArr, width, height, i2, 1, i, 2));
        }
        try {
            ExecutorService executorService = c.d;
            executorService.invokeAll(arrayList);
            executorService.invokeAll(arrayList2);
            return Bitmap.createBitmap(iArr, width, height, Bitmap.Config.ARGB_8888);
        } catch (InterruptedException unused) {
            return null;
        }
    }
}
