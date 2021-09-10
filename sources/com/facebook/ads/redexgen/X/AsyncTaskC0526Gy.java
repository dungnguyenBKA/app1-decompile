package com.facebook.ads.redexgen.X;

import android.os.AsyncTask;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.Executor;

/* renamed from: com.facebook.ads.redexgen.X.Gy  reason: case insensitive filesystem */
public final class AsyncTaskC0526Gy extends AsyncTask<QW, Void, QJ> implements QT {
    public static byte[] A04;
    public static String[] A05;
    public QL A00;
    public C0510Gh A01;
    public Exception A02;
    public Executor A03;

    static {
        A03();
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 101);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{-18, 25, -14, 30, 30, 26, -4, 15, 27, 31, 15, 29, 30, -2, 11, 29, 21, -54, 30, 11, 21, 15, 29, -54, 15, 34, 11, 13, 30, 22, 35, -54, 25, 24, 15, -54, 11, 28, 17, 31, 23, 15, 24, 30, -54, 25, 16, -54, 30, 35, 26, 15, -54, -14, 30, 30, 26, -4, 15, 27, 31, 15, 29, 30, 15, 27, 27, 23, -25, 57, 44, 56, 60, 44, 58, 59, -25, 45, 40, 48, 51, 44, 43, 1, -25, -20, 58, 36, 80, 80, 76, -4, 78, 65, 79, 76, 75, 74, 79, 65, -4, 69, 79, -4, 74, 81, 72, 72, -67, -48, -34, -37, -38, -39, -34, -48, -91, -117, -112, -49, -117, -109, -112, -34, -108, -91, 117, -112, -34};
    }

    public static void A03() {
        A05 = new String[]{"ISBjHjbUPhJT7DGB2JvjH8pRJ4THrNWM", "OPg7gsPnZP3QsQWue6lzrISH1J86h", "XeTxlXzdRCOD7SBCy0O7kO4k", "wF1PTlVBDnka4lPn0WIHxf3evs", "myOhX4xCY5Mi9IbsU0pUOVW5bZkAtWyQ", "1AepsAli0TWWKf1w83zMf6wttDUWZa9Z", "XTBsgsEzxuO7TTQvYMtR1VxTZpUl2a6R", "C8VCTESPpZtI8Zr0pzMJK5rADprlDNCz"};
    }

    public AsyncTaskC0526Gy(C0510Gh gh, QL ql, Executor executor) {
        this.A01 = gh;
        this.A00 = ql;
        this.A03 = executor;
    }

    private final QJ A00(QW... qwArr) {
        if (KT.A02(this)) {
            return null;
        }
        if (qwArr != null) {
            try {
                if (qwArr.length > 0) {
                    QJ A0J = this.A01.A0J(qwArr[0]);
                    if (A0J != null) {
                        String.format(Locale.US, A01(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, 21, 6), Integer.valueOf(A0J.A7J()), A0J.getUrl(), A0J.A5i());
                    }
                    if (A0J != null) {
                        return A0J;
                    }
                    throw new IllegalStateException(A01(87, 21, 119));
                }
            } catch (Exception e) {
                this.A02 = e;
                String.format(Locale.US, A01(64, 23, 98), e.getMessage());
                cancel(true);
                return null;
            } catch (Throwable th) {
                KT.A00(th, this);
                String[] strArr = A05;
                if (strArr[6].charAt(29) != strArr[5].charAt(29)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A05;
                strArr2[6] = "7Z9SEUfEEdRKQwGPWQmPRdvkxtWIqa6k";
                strArr2[5] = "25jJFjyuRcytvXC4wurkJewgVtIZaaql";
                return null;
            }
        }
        throw new IllegalArgumentException(A01(0, 64, 69));
    }

    private final void A04(QJ qj) {
        if (!KT.A02(this)) {
            try {
                this.A00.A9m(qj);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.QT
    public final void A5E(QW qw) {
        super.executeOnExecutor(this.A03, qw);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object[]] */
    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ QJ doInBackground(QW[] qwArr) {
        if (KT.A02(this)) {
            return null;
        }
        try {
            return A00(qwArr);
        } catch (Throwable th) {
            KT.A00(th, this);
            return null;
        }
    }

    public final void onCancelled() {
        this.A00.AA8(this.A02);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(QJ qj) {
        if (!KT.A02(this)) {
            try {
                A04(qj);
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
