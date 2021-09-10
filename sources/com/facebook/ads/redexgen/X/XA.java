package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

public final class XA<K, V> extends AbstractC02956t<HashMap<K, AbstractC02876l>> {
    public static byte[] A02;
    public static String[] A03;
    public final EnumC02946s A00;
    public final HashMap<K, AbstractC02876l> A01;

    static {
        A04();
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{104};
    }

    public static void A04() {
        A03 = new String[]{"cKuQ341bpQpj1np", "NRRRR4TEAm42mDR", "Q3CZak00lhavTOo6A", "zaO6DFhzYxSygkW1IzlMUY8ES4dk", "HbJVSBx3MNS6tqQ9XVLKo36QU0gI1Znv", "JrCrl10lt1AHnaihPuUoLOH", "SHM67NRdcA0GW9YM4", "2pIXYY"};
    }

    public XA(long j, @Nullable C02936r r9, HashMap<K, AbstractC02876l> hashMap, EnumC02946s r11) {
        super(j, r9, hashMap, EnumC02946s.A0A);
        this.A01 = hashMap;
        this.A00 = r11;
        if (!A05()) {
            throw new UnsupportedOperationException();
        }
    }

    @SuppressLint({"BadMethodUse-java.lang.String.length"})
    private int A00(K k) {
        int i = C02896n.A00[this.A00.ordinal()];
        if (i == 1) {
            return 4;
        }
        if (i == 2) {
            return k.length();
        }
        throw new UnsupportedOperationException();
    }

    private boolean A05() {
        int i = C02896n.A00[this.A00.ordinal()];
        if (i == 1 || i == 2) {
            return true;
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    public final int A07() {
        int i = 0;
        if (A08() == null || ((HashMap) A08()).isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : ((HashMap) A08()).entrySet()) {
            int A002 = i + A00(entry.getKey());
            if (A03[5].length() != 26) {
                A03[4] = "UsP7Xgcu0nWDAT33HhVsw8aoixo7a0Y1";
                i = A002 + ((AbstractC02876l) entry.getValue()).ADz();
            } else {
                throw new RuntimeException();
            }
        }
        return i;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    public final JSONObject A09(JSONObject mapJsonObject) throws JSONException {
        Set<K> keySet = this.A01.keySet();
        JSONObject jSONObject = new JSONObject();
        for (K k : keySet) {
            AbstractC02876l r3 = this.A01.get(k);
            if (A03[5].length() != 26) {
                A03[5] = "RtRjz";
                if (r3 != null) {
                    r3.AEK(k, jSONObject);
                }
            } else {
                throw new RuntimeException();
            }
        }
        mapJsonObject.put(A01(0, 1, 112), jSONObject);
        return mapJsonObject;
    }

    /* JADX INFO: Multiple debug info for r0v22 com.facebook.ads.redexgen.X.6l: [D('newSignal' com.facebook.ads.redexgen.X.6l), D('prevSignal' com.facebook.ads.redexgen.X.6l)] */
    @Override // com.facebook.ads.redexgen.X.AbstractC02956t
    @SuppressLint({"Nullable Dereference"})
    public final boolean A0B(AbstractC02956t<HashMap<K, AbstractC02876l>> r11) {
        boolean A80;
        if (A08() == null || r11.A08() == null) {
            if (A08() == null && r11.A08() == null) {
                return true;
            }
            return false;
        } else if (r11.A08().size() != ((HashMap) A08()).size()) {
            return false;
        } else {
            HashMap<K, AbstractC02876l> A08 = r11.A08();
            HashMap hashMap = (HashMap) A08();
            Iterator<K> it = A08.keySet().iterator();
            Iterator<K> it2 = hashMap.keySet().iterator();
            do {
                boolean hasNext = it.hasNext();
                String[] strArr = A03;
                if (strArr[1].length() == strArr[0].length()) {
                    String[] strArr2 = A03;
                    strArr2[1] = "rUsYWVrpG3VWCqr";
                    strArr2[0] = "lLqYbR21ojeq3r6";
                    if (!hasNext || !it2.hasNext()) {
                        return true;
                    }
                    K next = it.next();
                    K next2 = it2.next();
                    if (!next.equals(next2) || !A08.containsKey(next) || !hashMap.containsKey(next2)) {
                        return false;
                    }
                    AbstractC02876l r1 = A08.get(next);
                    AbstractC02876l prevSignal = (AbstractC02876l) hashMap.get(next2);
                    if (r1 != null && prevSignal != null) {
                        A80 = r1.A80(prevSignal);
                        String[] strArr3 = A03;
                        if (strArr3[7].length() != strArr3[3].length()) {
                            String[] strArr4 = A03;
                            strArr4[6] = "3Jq7wk4KgDHXBRv7A";
                            strArr4[2] = "zXvlpWgAojYXCnWeF";
                        }
                    } else if (r1 == null && prevSignal == null) {
                        return true;
                    } else {
                        return false;
                    }
                }
                throw new RuntimeException();
            } while (A80);
            return false;
        }
    }
}
