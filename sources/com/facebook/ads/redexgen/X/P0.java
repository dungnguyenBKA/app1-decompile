package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;

public final class P0 {
    public static boolean A00 = true;
    public static byte[] A01;
    public static String[] A02;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A02[2].charAt(4) != 'h') {
                A02[5] = "V4DWKv2CalsHghC0GoFw5ZQ5aRA0odCa";
                if (i4 >= length) {
                    return new String(copyOfRange);
                }
                copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 71);
                i4++;
            } else {
                throw new RuntimeException();
            }
        }
    }

    public static void A03() {
        A01 = new byte[]{-1, 36, 46, 43, 39, 28, 52, 8, 32, 47, 45, 36, 30, 46, -37, 36, 46, -37, 41, 48, 39, 39, -23, 9, 28, 42, 38, 44, 41, 26, 28, 42, -41, 32, 42, -41, 37, 44, 35, 35, -27, -65, -54, -43, -46, -51, -54, -35, -46, -40, -41, -119, -49, -54, -46, -43, -50, -51, -105, -34, -32, -35};
    }

    public static void A04() {
        A02 = new String[]{"Y0rICHp14ARSNu9MlXOQlrQKpJ7V2hwf", "9bmfgm9m8nITbmWk0ICcMAG3MrS", "cwEc0HiI6y8ZhWJ4MUGuUSsWKgKIPOUb", "CeguwAwwe", "1UN8Pz5pD", "KG5kSs2s3o8nfvSCZiVMOrQyfdZTA2DP", "BO8EwxINC4bfwl9QwPIiUjcYWt5Jq71N", "VnsxrIf3KddrD6MinhDJfsdqz9CBs5tu"};
    }

    static {
        A04();
        A03();
    }

    @Nullable
    public static BitmapDrawable A00(XJ xj, @Nullable String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            byte[] decode = Base64.decode(str, 0);
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
            if (decodeByteArray != null) {
                if (!A00 || A06(xj, decodeByteArray)) {
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(decodeByteArray);
                    bitmapDrawable.setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
                    Resources resources = xj.getResources();
                    if (resources != null) {
                        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                        if (displayMetrics != null) {
                            bitmapDrawable.setTargetDensity(displayMetrics.densityDpi);
                        } else {
                            A05(xj, A02(0, 23, 116));
                        }
                    } else {
                        A05(xj, A02(23, 18, 112));
                    }
                    return bitmapDrawable;
                }
            }
            return null;
        } catch (Throwable th) {
            xj.A04().A8V(A02(59, 3, 42), C03228e.A1c, new C03238f(th));
            return null;
        }
    }

    @Nullable
    public static P1 A01(XJ xj, @Nullable String str) {
        BitmapDrawable A002;
        try {
            if (TextUtils.isEmpty(str) || (A002 = A00(xj, str)) == null) {
                return null;
            }
            P1 p1 = new P1(xj);
            if (Build.VERSION.SDK_INT >= 16) {
                p1.setBackground(A002);
            } else {
                p1.setBackgroundDrawable(A002);
            }
            p1.setClickable(false);
            p1.setFocusable(false);
            return p1;
        } catch (Throwable th) {
            xj.A04().A8V(A02(59, 3, 42), C03228e.A1c, new C03238f(th));
            return null;
        }
    }

    public static void A05(XJ xj, String str) {
        xj.A04().A8V(A02(59, 3, 42), C03228e.A1c, new C03238f(str));
    }

    @VisibleForTesting
    public static boolean A06(XJ xj, Bitmap bitmap) {
        int i = 0;
        while (true) {
            int width = bitmap.getWidth();
            if (A02[2].charAt(4) != 'h') {
                A02[2] = "44dBdHmZhYYzc5DiIB6SXSnn6xfqMO61";
                if (i >= width) {
                    return true;
                }
                for (int i2 = 0; i2 < bitmap.getHeight(); i2++) {
                    if (((float) Color.alpha(bitmap.getPixel(i, i2))) / 255.0f > 0.03f) {
                        A05(xj, A02(41, 18, 34));
                        return false;
                    }
                }
                i++;
            } else {
                throw new RuntimeException();
            }
        }
    }
}
