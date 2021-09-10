package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.Log;
import android.util.SparseArray;
import com.vungle.warren.error.VungleException;
import java.util.Arrays;

public final class GV {
    public static byte[] A07;
    public static String[] A08;
    public static final byte[] A09 = {0, 7, 8, 15};
    public static final byte[] A0A = {0, 119, -120, -1};
    public static final byte[] A0B = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    public Bitmap A00;
    public final Canvas A01;
    public final Paint A02 = new Paint();
    public final Paint A03;
    public final GN A04;
    public final GO A05;
    public final GU A06;

    public static String A09(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            byte b = (byte) ((copyOfRange[i4] - i3) - 74);
            String[] strArr = A08;
            if (strArr[4].charAt(19) != strArr[0].charAt(19)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[1] = "o838eL9fL";
            strArr2[5] = "J6qCpr7RcsAqb79Ub3PrHCSZxMucifP";
            copyOfRange[i4] = b;
        }
        return new String(copyOfRange);
    }

    public static void A0A() {
        A07 = new byte[]{-109, -80, -61, -80, 111, -75, -72, -76, -69, -77, 111, -69, -76, -67, -74, -61, -73, 111, -76, -57, -78, -76, -76, -77, -62, 111, -69, -72, -68, -72, -61, -16, 34, 14, -4, 13, 30, 31, 17, 30};
    }

    public static void A0B() {
        A08 = new String[]{"0rGqU9QbqgRhw9xCYiy2ikjdJF0tZxW0", "O5zJjRmwn", "Zuwvbdj2tlT5lxRkpa9deVxz18dZQdtj", "3cu9YvSu9oYTgNu7SXt0BZa9RO8c3dJe", "fSpgVoQESo9i788g3Yt2BRpnP7rxN0lE", "PNJ5rPmEA0nUP9bGeJM8wQu7KuAYrDy", "AGqKR696jXLUBqkrCQSQW886irj6NtRI", "IRr9cxFu4Mtz1eOchhtcqFpk7Zjv6sDY"};
    }

    static {
        A0B();
        A0A();
    }

    public GV(int i, int i2) {
        this.A02.setStyle(Paint.Style.FILL_AND_STROKE);
        this.A02.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        this.A02.setPathEffect(null);
        this.A03 = new Paint();
        this.A03.setStyle(Paint.Style.FILL);
        this.A03.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        this.A03.setPathEffect(null);
        this.A01 = new Canvas();
        this.A05 = new GO(719, 575, 0, 719, 0, 575);
        this.A04 = new GN(0, A0G(), A0H(), A0I());
        this.A06 = new GU(i, i2);
    }

    public static int A00(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    public static int A01(IL il, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        int i3 = i;
        boolean z = false;
        do {
            int runLength = 0;
            int A052 = il.A05(2);
            if (A052 != 0) {
                runLength = 1;
            } else {
                boolean A0G = il.A0G();
                String[] strArr = A08;
                if (strArr[6].charAt(3) != strArr[3].charAt(3)) {
                    String[] strArr2 = A08;
                    strArr2[1] = "NWJ2j8DR8";
                    strArr2[5] = "tuFwEgjWv5QsbV2rgY7O01mW2P3xd0b";
                    if (A0G) {
                        runLength = il.A05(3) + 3;
                        A052 = il.A05(2);
                    } else if (il.A0G()) {
                        runLength = 1;
                        A052 = 0;
                    } else {
                        int A053 = il.A05(2);
                        if (A053 == 0) {
                            z = true;
                            A052 = 0;
                        } else if (A053 == 1) {
                            runLength = 2;
                            A052 = 0;
                        } else if (A053 == 2) {
                            runLength = il.A05(4) + 12;
                            A052 = il.A05(2);
                        } else if (A053 != 3) {
                            A052 = 0;
                        } else {
                            int A054 = il.A05(8);
                            String[] strArr3 = A08;
                            if (strArr3[1].length() != strArr3[5].length()) {
                                A08[7] = "aK1SAaExMssx18Id1roywrSfe1Et1yGa";
                                runLength = A054 + 29;
                                A052 = il.A05(2);
                            } else {
                                String[] strArr4 = A08;
                                strArr4[1] = "EWrEb5ztJ";
                                strArr4[5] = "osfW1bR5YMm4TxT0YESgxQn9EHcmZGy";
                                runLength = A054 + 12;
                                A052 = il.A05(2);
                            }
                        }
                    }
                } else {
                    throw new RuntimeException();
                }
            }
            if (runLength != 0) {
                byte b = A052;
                if (paint != null) {
                    if (bArr != null) {
                        b = bArr[A052];
                    }
                    paint.setColor(iArr[b == 1 ? 1 : 0]);
                    canvas.drawRect((float) i3, (float) i2, (float) (i3 + runLength), (float) (i2 + 1), paint);
                }
            }
            i3 += runLength;
        } while (!z);
        return i3;
    }

    public static int A02(IL il, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        int runLength = i;
        boolean z = false;
        do {
            int clutIndex = 0;
            int A052 = il.A05(4);
            if (A052 != 0) {
                clutIndex = 1;
            } else if (!il.A0G()) {
                int A053 = il.A05(3);
                if (A053 != 0) {
                    clutIndex = A053 + 2;
                    A052 = 0;
                } else {
                    z = true;
                    A052 = 0;
                }
            } else if (!il.A0G()) {
                clutIndex = il.A05(2) + 4;
                A052 = il.A05(4);
            } else {
                int A054 = il.A05(2);
                if (A054 == 0) {
                    clutIndex = 1;
                    A052 = 0;
                } else if (A054 == 1) {
                    clutIndex = 2;
                    A052 = 0;
                } else if (A054 == 2) {
                    clutIndex = il.A05(4) + 9;
                    A052 = il.A05(4);
                } else if (A054 != 3) {
                    A052 = 0;
                } else {
                    clutIndex = il.A05(8) + 25;
                    A052 = il.A05(4);
                }
            }
            if (clutIndex != 0) {
                byte b = A052;
                if (paint != null) {
                    if (bArr != null) {
                        b = bArr[A052];
                    }
                    paint.setColor(iArr[b == 1 ? 1 : 0]);
                    canvas.drawRect((float) runLength, (float) i2, (float) (runLength + clutIndex), (float) (i2 + 1), paint);
                }
            }
            runLength += clutIndex;
        } while (!z);
        return runLength;
    }

    public static int A03(IL il, int[] iArr, byte[] bArr, int i, int peek, Paint paint, Canvas canvas) {
        int A052;
        int runLength = i;
        boolean z = false;
        do {
            int A053 = il.A05(8);
            if (A053 != 0) {
                A052 = 1;
            } else if (!il.A0G()) {
                A052 = il.A05(7);
                if (A052 != 0) {
                    A053 = 0;
                } else {
                    z = true;
                    A052 = 0;
                    A053 = 0;
                }
            } else {
                A052 = il.A05(7);
                A053 = il.A05(8);
                String[] strArr = A08;
                if (strArr[4].charAt(19) != strArr[0].charAt(19)) {
                    throw new RuntimeException();
                }
                A08[7] = "oE62i0kU0YacGkvCLxgFzKdMfiudOn3o";
            }
            if (A052 != 0) {
                byte b = A053;
                if (paint != null) {
                    if (bArr != null) {
                        b = bArr[A053];
                    }
                    paint.setColor(iArr[b == 1 ? 1 : 0]);
                    canvas.drawRect((float) runLength, (float) peek, (float) (runLength + A052), (float) (peek + 1), paint);
                }
            }
            runLength += A052;
            String[] strArr2 = A08;
            if (strArr2[1].length() != strArr2[5].length()) {
                String[] strArr3 = A08;
                strArr3[6] = "jmdilAXdKLha38CDbN17xGIpmuplWnFc";
                strArr3[3] = "1PNl1axnrexK2c7Nxi5CJrHaXY90XFpd";
            } else {
                throw new RuntimeException();
            }
        } while (!z);
        return runLength;
    }

    /* JADX INFO: Multiple debug info for r2v0 int: [D('y' int), D('cr' int)] */
    /* JADX INFO: Multiple debug info for r15v3 'remainingLength'  int: [D('remainingLength' int), D('clutId' int)] */
    public static GN A04(IL il, int i) {
        int[] iArr;
        int A052;
        int clutId;
        int A053;
        int cb;
        int b = 8;
        int A054 = il.A05(8);
        il.A09(8);
        int i2 = i - 2;
        int[] clutEntries8Bit = A0G();
        int[] A0H = A0H();
        int[] A0I = A0I();
        while (i2 > 0) {
            int r = il.A05(b);
            int t = il.A05(b);
            int cr = i2 - 2;
            if ((t & 128) != 0) {
                iArr = clutEntries8Bit;
            } else if ((t & 64) != 0) {
                iArr = A0H;
            } else {
                iArr = A0I;
            }
            if ((t & 1) != 0) {
                A052 = il.A05(b);
                clutId = il.A05(b);
                A053 = il.A05(b);
                cb = il.A05(b);
                i2 = cr - 4;
            } else {
                A052 = il.A05(6) << 2;
                clutId = il.A05(4) << 4;
                A053 = il.A05(4) << 4;
                cb = il.A05(2) << 6;
                i2 = cr - 2;
            }
            if (A052 == 0) {
                clutId = 0;
                A053 = 0;
                cb = 255;
            }
            iArr[r] = A00((byte) (255 - (cb & 255)), C0556Ic.A06((int) (((double) A052) + (((double) (clutId - 128)) * 1.402d)), 0, 255), C0556Ic.A06((int) ((((double) A052) - (((double) (A053 - 128)) * 0.34414d)) - (((double) (clutId - 128)) * 0.71414d)), 0, 255), C0556Ic.A06((int) (((double) A052) + (((double) (A053 - 128)) * 1.772d)), 0, 255));
            b = 8;
        }
        return new GN(A054, clutEntries8Bit, A0H, A0I);
    }

    /* JADX INFO: Multiple debug info for r7v0 com.facebook.ads.redexgen.X.IL: [D('displayWindowFlag' boolean), D('height' int)] */
    public static GO A05(IL il) {
        int verticalPositionMinimum;
        int width;
        int verticalPositionMaximum;
        int height;
        il.A09(4);
        boolean A0G = il.A0G();
        il.A09(3);
        int A052 = il.A05(16);
        int A053 = il.A05(16);
        if (A0G) {
            verticalPositionMinimum = il.A05(16);
            verticalPositionMaximum = il.A05(16);
            width = il.A05(16);
            height = il.A05(16);
        } else {
            verticalPositionMinimum = 0;
            width = 0;
            verticalPositionMaximum = A052;
            height = A053;
        }
        return new GO(A052, A053, verticalPositionMinimum, verticalPositionMaximum, width, height);
    }

    /* JADX INFO: Multiple debug info for r8v0 com.facebook.ads.redexgen.X.IL: [D('bottomFieldDataLength' int), D('numberOfCodes' int)] */
    public static GP A06(IL il) {
        int objectCodingMethod = il.A05(16);
        il.A09(4);
        int A052 = il.A05(2);
        boolean A0G = il.A0G();
        il.A09(1);
        byte[] bArr = null;
        byte[] bArr2 = null;
        if (A052 == 1) {
            il.A09(il.A05(8) * 16);
        } else if (A052 == 0) {
            int A053 = il.A05(16);
            int objectId = il.A05(16);
            String[] strArr = A08;
            if (strArr[4].charAt(19) != strArr[0].charAt(19)) {
                throw new RuntimeException();
            }
            A08[2] = "pcqe5F2CDJi5oBWvBkq2zbdYSROcg8Hm";
            if (A053 > 0) {
                bArr = new byte[A053];
                il.A0F(bArr, 0, A053);
            }
            if (objectId > 0) {
                bArr2 = new byte[objectId];
                il.A0F(bArr2, 0, objectId);
            } else {
                bArr2 = bArr;
            }
        }
        return new GP(objectCodingMethod, A0G, bArr, bArr2);
    }

    public static GQ A07(IL il, int timeoutSecs) {
        int remainingLength = il.A05(8);
        int A052 = il.A05(4);
        int A053 = il.A05(2);
        il.A09(2);
        int regionHorizontalAddress = timeoutSecs - 2;
        SparseArray sparseArray = new SparseArray();
        while (regionHorizontalAddress > 0) {
            int A054 = il.A05(8);
            il.A09(8);
            regionHorizontalAddress -= 6;
            sparseArray.put(A054, new GR(il.A05(16), il.A05(16)));
        }
        return new GQ(remainingLength, A052, A053, sparseArray);
    }

    /* JADX INFO: Multiple debug info for r23v0 int: [D('remainingLength' int), D('foregroundPixelCode' int)] */
    public static GS A08(IL il, int i) {
        int i2 = 8;
        int A052 = il.A05(8);
        il.A09(4);
        boolean A0G = il.A0G();
        il.A09(3);
        int A053 = il.A05(16);
        int A054 = il.A05(16);
        int A055 = il.A05(3);
        int A056 = il.A05(3);
        il.A09(2);
        int id = il.A05(8);
        int A057 = il.A05(8);
        int width = il.A05(4);
        int height = il.A05(2);
        il.A09(2);
        int pixelCode8Bit = i - 10;
        SparseArray sparseArray = new SparseArray();
        while (pixelCode8Bit > 0) {
            int pixelCode4Bit = il.A05(16);
            int pixelCode2Bit = il.A05(2);
            int foregroundPixelCode = il.A05(2);
            int objectHorizontalPosition = il.A05(12);
            il.A09(4);
            int objectVerticalPosition = il.A05(12);
            pixelCode8Bit -= 6;
            int remainingLength = 0;
            int objectType = 0;
            if (pixelCode2Bit == 1 || pixelCode2Bit == 2) {
                remainingLength = il.A05(i2);
                objectType = il.A05(i2);
                pixelCode8Bit -= 2;
                if (A08[2].charAt(23) != 111) {
                    String[] strArr = A08;
                    strArr[4] = "2juIiSC4ZxHJWLrTtxN2ANki5argYjtZ";
                    strArr[0] = "MWq7TNsVs7aXK0A5Gh22llfb9AkLnJo6";
                } else {
                    throw new RuntimeException();
                }
            }
            sparseArray.put(pixelCode4Bit, new GT(pixelCode2Bit, foregroundPixelCode, objectHorizontalPosition, objectVerticalPosition, remainingLength, objectType));
            i2 = 8;
        }
        return new GS(A052, A0G, A053, A054, A055, A056, id, A057, width, height, sparseArray);
    }

    public static void A0C(GP gp, GN gn, int i, int i2, int i3, Paint paint, Canvas canvas) {
        int[] iArr;
        if (i == 3) {
            iArr = gn.A03;
        } else if (i == 2) {
            iArr = gn.A02;
        } else {
            iArr = gn.A01;
        }
        A0E(gp.A03, iArr, i, i2, i3, paint, canvas);
        A0E(gp.A02, iArr, i, i2, i3 + 1, paint, canvas);
    }

    public static void A0D(IL il, GU gu) {
        int dataFieldLimit = il.A05(8);
        int A052 = il.A05(16);
        int A053 = il.A05(16);
        int A032 = il.A03() + A053;
        if (A053 * 8 > il.A02()) {
            Log.w(A09(31, 9, 98), A09(0, 31, 5));
            il.A09(il.A02());
            return;
        }
        switch (dataFieldLimit) {
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                if (A052 == gu.A03) {
                    GQ gq = gu.A01;
                    GQ A072 = A07(il, A053);
                    if (A072.A00 == 0) {
                        if (!(gq == null || gq.A02 == A072.A02)) {
                            gu.A01 = A072;
                            break;
                        }
                    } else {
                        gu.A01 = A072;
                        gu.A08.clear();
                        gu.A06.clear();
                        gu.A07.clear();
                        break;
                    }
                }
                break;
            case 17:
                GQ gq2 = gu.A01;
                if (A052 == gu.A03 && gq2 != null) {
                    GS A082 = A08(il, A053);
                    if (gq2.A00 == 0) {
                        A082.A00(gu.A08.get(A082.A03));
                    }
                    gu.A08.put(A082.A03, A082);
                    break;
                }
            case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                if (A052 != gu.A03) {
                    if (A052 == gu.A02) {
                        GN A042 = A04(il, A053);
                        gu.A04.put(A042.A00, A042);
                        break;
                    }
                } else {
                    GN A043 = A04(il, A053);
                    gu.A06.put(A043.A00, A043);
                    break;
                }
                break;
            case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                if (A052 != gu.A03) {
                    if (A052 == gu.A02) {
                        GP A062 = A06(il);
                        gu.A05.put(A062.A00, A062);
                        break;
                    }
                } else {
                    GP A063 = A06(il);
                    gu.A07.put(A063.A00, A063);
                    break;
                }
                break;
            case 20:
                if (A052 == gu.A03) {
                    gu.A00 = A05(il);
                    break;
                }
                break;
        }
        il.A0A(A032 - il.A03());
    }

    /* JADX INFO: Multiple debug info for r13v1 'line'  int: [D('clutMapTable4ToX' byte[]), D('clutMapTable2ToX' byte[])] */
    public static void A0E(byte[] bArr, int[] iArr, int i, int column, int i2, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        int line = i2;
        IL il = new IL(bArr);
        byte[] clutMapTable2To8 = null;
        byte[] bArr4 = null;
        int dataType = column;
        while (il.A02() != 0) {
            int A052 = il.A05(8);
            if (A052 != 240) {
                switch (A052) {
                    case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                        if (i == 3) {
                            bArr3 = bArr4 == null ? A0A : bArr4;
                        } else if (i == 2) {
                            bArr3 = clutMapTable2To8 == null ? A09 : clutMapTable2To8;
                        } else {
                            bArr3 = null;
                        }
                        dataType = A01(il, iArr, bArr3, dataType, line, paint, canvas);
                        il.A06();
                        continue;
                    case 17:
                        if (i != 3) {
                            bArr2 = null;
                            String[] strArr = A08;
                            if (strArr[4].charAt(19) != strArr[0].charAt(19)) {
                                throw new RuntimeException();
                            }
                            A08[2] = "ywEr7H1ZkU3fUIk8F5vLu65dTGZjfu1h";
                        } else if (0 == 0) {
                            bArr2 = A0B;
                        } else {
                            bArr2 = null;
                        }
                        dataType = A02(il, iArr, bArr2, dataType, line, paint, canvas);
                        il.A06();
                        continue;
                    case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                        dataType = A03(il, iArr, null, dataType, line, paint, canvas);
                        continue;
                    default:
                        String[] strArr2 = A08;
                        if (strArr2[1].length() != strArr2[5].length()) {
                            String[] strArr3 = A08;
                            strArr3[6] = "nnJuFIsGV5CjoI7UJHQ2Bk6wbONoIcvD";
                            strArr3[3] = "B7N9QxouVzPbBX96zhiMkNdTz6ghfWa9";
                            switch (A052) {
                                case 32:
                                    clutMapTable2To8 = A0F(4, 4, il);
                                    continue;
                                case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                                    bArr4 = A0F(4, 8, il);
                                    continue;
                                case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                                    bArr4 = A0F(16, 8, il);
                                    continue;
                                default:
                                    continue;
                            }
                        } else {
                            throw new RuntimeException();
                        }
                }
            } else {
                dataType = column;
                if (A08[2].charAt(23) != 'o') {
                    String[] strArr4 = A08;
                    strArr4[6] = "9tyozG4lbSXUGnB14yX0PwlmOZMu8mKn";
                    strArr4[3] = "zB65tdLGIFDHc3IIcHjCnZN0WwQ6SUlQ";
                    line += 2;
                } else {
                    line += 2;
                }
            }
        }
    }

    public static byte[] A0F(int i, int i2, IL il) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) il.A05(i2);
        }
        return bArr;
    }

    public static int[] A0G() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    public static int[] A0H() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i6 = 1; i6 < iArr.length; i6++) {
            if (i6 < 8) {
                if ((i6 & 1) != 0) {
                    i3 = 255;
                } else {
                    i3 = 0;
                }
                if ((i6 & 2) != 0) {
                    i4 = 255;
                } else {
                    i4 = 0;
                }
                if ((i6 & 4) != 0) {
                    i5 = 255;
                } else {
                    i5 = 0;
                }
                iArr[i6] = A00(255, i3, i4, i5);
            } else {
                int i7 = 127;
                if ((i6 & 1) != 0) {
                    i = 127;
                } else {
                    i = 0;
                }
                if ((i6 & 2) != 0) {
                    i2 = 127;
                } else {
                    i2 = 0;
                }
                if ((i6 & 4) == 0) {
                    i7 = 0;
                }
                iArr[i6] = A00(255, i, i2, i7);
            }
        }
        return iArr;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:103:0x015b, code lost:
        if (r9 != 0) goto L_0x0143;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:104:0x015e, code lost:
        r0 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:111:0x0183, code lost:
        if (r7 != 0) goto L_0x0185;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:135:0x01cc, code lost:
        if (r7 != 0) goto L_0x0185;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:136:0x01cf, code lost:
        r2 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x0093, code lost:
        if (r10 != 0) goto L_0x0095;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00a9, code lost:
        if (r10 != 0) goto L_0x0095;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00ac, code lost:
        r6 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x00dc, code lost:
        if ((r4 & 16) != 0) goto L_0x00de;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x010b, code lost:
        if ((r4 & 16) != 0) goto L_0x00de;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x010e, code lost:
        r0 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x0141, code lost:
        if (r9 != 0) goto L_0x0143;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int[] A0I() {
        /*
        // Method dump skipped, instructions count: 477
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.GV.A0I():int[]");
    }

    /* JADX INFO: Multiple debug info for r2v7 com.facebook.ads.redexgen.X.GO: [D('cueBitmap' android.graphics.Bitmap), D('displayDefinition' com.facebook.ads.redexgen.X.GO), D('regionComposition' com.facebook.ads.redexgen.X.GS)] */
    /* JADX INFO: Multiple debug info for r1v21 com.facebook.ads.redexgen.X.GS: [D('clipRight' int), D('regionObjects' android.util.SparseArray<com.facebook.ads.internal.exoplayer2.text.dvb.DvbParser$RegionObject>), D('pageRegions' android.util.SparseArray<com.facebook.ads.internal.exoplayer2.text.dvb.DvbParser$PageRegion>), D('objectData' com.facebook.ads.redexgen.X.GP), D('baseVerticalAddress' int), D('regionId' int), D('color' int)] */
    /* JADX INFO: Multiple debug info for r4v4 int: [D('clutDefinition' com.facebook.ads.redexgen.X.GN), D('objectId' int)] */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0121, code lost:
        if (r14 == null) goto L_0x0123;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x014e, code lost:
        if (r14 == null) goto L_0x0150;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x01b3, code lost:
        if (r1.A0A == false) goto L_0x01d6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x01b8, code lost:
        if (r1.A01 != 3) goto L_0x0210;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x01ba, code lost:
        r9 = r14.A03[r1.A07];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x01c0, code lost:
        r20.A03.setColor(r9);
        r20.A01.drawRect((float) r4, (float) r3, (float) (r1.A08 + r4), (float) (r1.A02 + r3), r20.A03);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x0213, code lost:
        if (r1.A01 != 2) goto L_0x021c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x0215, code lost:
        r9 = r14.A02[r1.A06];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x021c, code lost:
        r11 = r14.A01;
        r10 = com.facebook.ads.redexgen.X.GV.A08;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0230, code lost:
        if (r10[4].charAt(19) == r10[0].charAt(19)) goto L_0x0237;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x0232, code lost:
        r9 = r11[r1.A05];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x0237, code lost:
        r10 = com.facebook.ads.redexgen.X.GV.A08;
        r10[1] = "SK7qwpqeD";
        r10[5] = "H8yQ2FZGH97VM0iLZGupvWVfM60nEcr";
        r9 = r11[r1.A05];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x0253, code lost:
        if (r14 == null) goto L_0x0150;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x028c, code lost:
        if (r14 == null) goto L_0x0123;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x0298, code lost:
        return r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<com.facebook.ads.redexgen.X.GB> A0J(byte[] r21, int r22) {
        /*
        // Method dump skipped, instructions count: 671
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.GV.A0J(byte[], int):java.util.List");
    }

    public final void A0K() {
        this.A06.A00();
    }
}
