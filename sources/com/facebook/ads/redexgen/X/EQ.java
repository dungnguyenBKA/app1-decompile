package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.database.Cursor;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.google.ads.ADRequestList;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class EQ implements AbstractC0954Xw {
    public static byte[] A02;
    public static String[] A03;
    public final XK A00;
    public final AnonymousClass8K A01;

    static {
        A05();
        A04();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 85);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        String[] strArr = A03;
        if (strArr[7].length() != strArr[5].length()) {
            String[] strArr2 = A03;
            strArr2[0] = "GUa5RhIL61d4FW3HWW0RBx9i";
            strArr2[1] = "4nKtohmUbY7tHai9z2t8ojCMJbrZv";
            A02 = new byte[]{62, 28, 19, 90, 9, 93, 25, 24, 17, 24, 9, 24, 93, 28, 9, 9, 24, 16, 13, 9, 14, 93, 24, 5, 30, 24, 24, 25, 24, 25, 93, 24, 11, 24, 19, 9, 14, 83, 16, 21, 7, 24, 21, 46, 59, 59, 42, 34, 63, 59, Byte.MAX_VALUE, 122, 111, 122, 16, 29, 50, 36, 50, 50, 40, 46, 47, 30, 40, 37, 32, 54, 32, 32, 58, 60, 61, 12, 39, 58, 62, 54, 76, 81, 85, 93, 20, 15, 11, 5, 14, 63, 9, 4, Byte.MAX_VALUE, 114, 123, 110};
            return;
        }
        throw new RuntimeException();
    }

    public static void A05() {
        A03 = new String[]{"zSqnO64p11LQVC3SPrHTwk7q", "RQQcRArwNRw7pCFobI7zm4AECBhyO", "uX7W3VjoXSZ8mIic8tH9fb17VHeYN2EI", "VdQ4q", ADRequestList.ORDER_H, "roUcO9bhLUMzgbi0", "6tdL5l5B64y16QievzXwm2hdxMIwTdT2", "M1EyYsdVjnJYnVOvo"};
    }

    public EQ(XK xk) {
        this.A00 = xk;
        this.A01 = new AnonymousClass8K(xk);
    }

    private JSONArray A01(Cursor cursor) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        cursor.moveToPosition(-1);
        while (cursor.moveToNext()) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(A00(54, 2, 44), cursor.getString(XP.A04.A00));
            jSONObject2.put(A00(82, 8, 53), cursor.getString(XP.A09.A00));
            jSONObject2.put(A00(90, 4, 94), cursor.getString(XP.A0A.A00));
            jSONObject2.put(A00(78, 4, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD), LZ.A02(cursor.getDouble(XP.A08.A00)));
            jSONObject2.put(A00(66, 12, 6), LZ.A02(cursor.getDouble(XP.A07.A00)));
            jSONObject2.put(A00(56, 10, 20), cursor.getString(XP.A06.A00));
            String string = cursor.getString(XP.A03.A00);
            if (string != null) {
                jSONObject = new JSONObject(string);
            } else {
                jSONObject = new JSONObject();
            }
            jSONObject2.put(A00(50, 4, 78), jSONObject);
            jSONObject2.put(A00(43, 7, 26), cursor.getString(XP.A02.A00));
            jSONObject2.put(A00(38, 5, 36), this.A00.A02().A6h());
            jSONArray.put(jSONObject2);
        }
        return jSONArray;
    }

    private JSONArray A02(Cursor cursor) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        cursor.moveToPosition(-1);
        while (cursor.moveToNext()) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(A00(54, 2, 44), cursor.getString(2));
            jSONObject2.put(A00(82, 8, 53), cursor.getString(0));
            jSONObject2.put(A00(90, 4, 94), cursor.getString(4));
            jSONObject2.put(A00(78, 4, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD), LZ.A02(cursor.getDouble(5)));
            jSONObject2.put(A00(66, 12, 6), LZ.A02(cursor.getDouble(6)));
            jSONObject2.put(A00(56, 10, 20), cursor.getString(7));
            String string = cursor.getString(8);
            if (string != null) {
                jSONObject = new JSONObject(string);
            } else {
                jSONObject = new JSONObject();
            }
            jSONObject2.put(A00(50, 4, 78), jSONObject);
            jSONObject2.put(A00(43, 7, 26), cursor.getString(9));
            jSONObject2.put(A00(38, 5, 36), this.A00.A02().A6h());
            jSONArray.put(jSONObject2);
        }
        return jSONArray;
    }

    public static JSONObject A03(Cursor cursor) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        while (cursor.moveToNext()) {
            String string = cursor.getString(XR.A02.A00);
            String string2 = cursor.getString(XR.A01.A00);
            String[] strArr = A03;
            if (strArr[6].charAt(14) != strArr[2].charAt(14)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[7] = "IfQdYzKY6vCyBSxPg";
            strArr2[5] = "fxZpsWnZoPKbT5Dt";
            jSONObject.put(string, string2);
        }
        return jSONObject;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass9J
    @SuppressLint({"CatchGeneralException"})
    public final int A40(int i) {
        int i2 = 0;
        if (i > -1) {
            try {
                i2 = this.A01.A09(i);
            } catch (Exception e) {
                if (BuildConfigApi.isDebug()) {
                    Log.e(AbstractC0954Xw.A00, A00(0, 38, 40), e);
                }
            }
        }
        this.A01.A0J();
        this.A01.A0K();
        return i2;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass9K
    public final void A41() {
        this.A01.A0I();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass9J
    public final boolean A4i(String str) {
        return this.A01.A0L(str);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass9J
    @Nullable
    public final JSONArray A5Y() {
        Cursor cursor = null;
        try {
            Cursor A0B = this.A01.A0B();
            JSONArray jSONArray = null;
            if (A0B.getCount() > 0) {
                jSONArray = A01(A0B);
            }
            A0B.close();
            return jSONArray;
        } catch (JSONException unused) {
            if (0 != 0) {
                cursor.close();
            }
            return null;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass9J
    @Nullable
    public final JSONObject A5Z() {
        Cursor cursor = null;
        try {
            Cursor A0C = this.A01.A0C();
            JSONObject jSONObject = null;
            if (A0C.getCount() > 0) {
                jSONObject = A03(A0C);
            }
            A0C.close();
            return jSONObject;
        } catch (JSONException unused) {
            String[] strArr = A03;
            if (strArr[3].length() != strArr[4].length()) {
                String[] strArr2 = A03;
                strArr2[0] = "fQ4GsEetTW4Q8M7eeZgpps0V";
                strArr2[1] = "7a4bIAh8lhheYJZGYQIYoy5madi9z";
                if (0 != 0) {
                    cursor.close();
                }
                return null;
            }
            throw new RuntimeException();
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass9J
    public final int A6R() {
        Cursor cursor = null;
        try {
            Cursor A0A = this.A01.A0A();
            int i = 0;
            if (A0A.moveToFirst()) {
                i = A0A.getInt(0);
            }
            A0A.close();
            return i;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass9J
    @Nullable
    public final String A6U(String str) {
        String str2 = null;
        Cursor A0E = this.A01.A0E(str);
        if (A0E != null) {
            if (A0E.moveToNext() && A0E.getCount() > 0) {
                AnonymousClass8I r4 = XP.A0A;
                String[] strArr = A03;
                if (strArr[7].length() != strArr[5].length()) {
                    String[] strArr2 = A03;
                    strArr2[3] = "VgiME";
                    strArr2[4] = "4";
                    str2 = A0E.getString(A0E.getColumnIndex(r4.A01));
                } else {
                    throw new RuntimeException();
                }
            }
            A0E.close();
        }
        return str2;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass9J
    public final Pair<JSONObject, JSONArray> A7M(int i) {
        Cursor cursor = null;
        try {
            Cursor A0D = this.A01.A0D(i);
            JSONArray jSONArray = null;
            JSONObject jSONObject = null;
            if (A0D.getCount() > 0) {
                jSONObject = A03(A0D);
                jSONArray = A02(A0D);
            }
            Pair<JSONObject, JSONArray> pair = new Pair<>(jSONObject, jSONArray);
            A0D.close();
            return pair;
        } catch (JSONException unused) {
            Pair<JSONObject, JSONArray> pair2 = new Pair<>(null, null);
            if (0 != 0) {
                cursor.close();
            }
            return pair2;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass9J
    public final boolean A7o(String str) {
        return this.A01.A0M(str);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass9K
    public final void AEl(J9 j9, AnonymousClass9H<String> r14) {
        this.A01.A0H(j9.A09(), j9.A06().A00, j9.A07().toString(), j9.A05(), j9.A04(), j9.A08(), j9.A0A(), r14);
    }
}
