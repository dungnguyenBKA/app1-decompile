package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.widget.ImageView;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

@SuppressLint({"ViewConstructor"})
/* renamed from: com.facebook.ads.redexgen.X.Oz  reason: case insensitive filesystem */
public final class C0726Oz extends ImageView {
    public static byte[] A03;
    public static final int A04 = ((int) (C0632Lh.A01 * 4.0f));
    public final Paint A00 = new Paint();
    public final EnumC0724Ox A01;
    public final AbstractC0725Oy A02;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 78);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{11, 47, 33, 40, 29, -40, 36, 29, 30, 44, 14, 50, 36, 43, 32, -37, 45, 36, 34, 35, 47};
    }

    static {
        A03();
    }

    public C0726Oz(XJ xj, EnumC0724Ox ox, AbstractC0725Oy oy) {
        super(xj);
        boolean z;
        String A022;
        this.A01 = ox;
        this.A02 = oy;
        this.A00.setColor(-1728053248);
        setColorFilter(-1);
        int i = A04;
        setPadding(i, i, i, i);
        if (this.A01 == EnumC0724Ox.A03) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            A022 = A02(0, 10, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE);
        } else {
            A022 = A02(10, 11, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD);
        }
        setContentDescription(A022);
        Bitmap A012 = C0641Lq.A01(EnumC0640Lp.TO_RIGHT_ARROW);
        if (z) {
            Matrix matrix = new Matrix();
            matrix.postRotate(180.0f);
            A012 = Bitmap.createBitmap(A012, 0, 0, A012.getWidth(), A012.getHeight(), matrix, true);
        }
        setImageBitmap(A012);
        setOnClickListener(new View$OnClickListenerC0723Ow(this));
    }

    public final void onDraw(Canvas canvas) {
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        canvas.drawCircle((float) width, (float) height, (float) Math.min(width, height), this.A00);
        super.onDraw(canvas);
    }
}
