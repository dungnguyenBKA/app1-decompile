package inshot.collage.adconfig;

import android.content.Context;
import android.text.TextUtils;
import com.google.ads.ADRequestList;
import com.zjsoft.admob.a;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;

public final class c {
    private final lb0 a(String str, String str2, ADRequestList aDRequestList) {
        Iterator it = aDRequestList.iterator();
        while (it.hasNext()) {
            lb0 lb0 = (lb0) it.next();
            gg0.d(lb0, "request");
            if (gg0.a(lb0.b(), str)) {
                if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(lb0.c())) {
                    return lb0;
                }
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(lb0.c()) && gg0.a(str2, lb0.c())) {
                    return lb0;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0135  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0138 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.ads.ADRequestList b(android.content.Context r14, com.google.ads.ADRequestList r15) {
        /*
        // Method dump skipped, instructions count: 378
        */
        throw new UnsupportedOperationException("Method not decompiled: inshot.collage.adconfig.c.b(android.content.Context, com.google.ads.ADRequestList):com.google.ads.ADRequestList");
    }

    public final ADRequestList c(Context context, ADRequestList aDRequestList, j jVar) {
        gg0.e(context, "context");
        gg0.e(aDRequestList, "list");
        gg0.e(jVar, "adType");
        int ordinal = jVar.ordinal();
        String p = cc0.p(context, ordinal != 1 ? ordinal != 3 ? ordinal != 4 ? "order_interstitial_result" : "order_interstitial_splash" : "order_interstitial_unlock" : "order_interstitial_picker", "[\"a-i-h\",\"f-i-h\",\"a-i-m\",\"a-i-r\"]");
        gg0.d(p, "ServerData.getInterstiti…g(context, key, defValue)");
        if (!gg0.a(p, "")) {
            try {
                JSONArray jSONArray = new JSONArray(p);
                ArrayList arrayList = new ArrayList();
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    lb0 lb0 = null;
                    String string = jSONArray.getString(i);
                    if (string != null) {
                        switch (string.hashCode()) {
                            case 3761:
                                if (string.equals(ADRequestList.VUNGLE)) {
                                    String str = ad0.b;
                                    gg0.d(str, "ZJVungle.INTERSTITIAL");
                                    lb0 = a(str, ADRequestList.ORDER_NULL, aDRequestList);
                                    break;
                                }
                                break;
                            case 91024536:
                                if (string.equals(ADRequestList.ADMOB_I_H)) {
                                    String str2 = a.d;
                                    gg0.d(str2, "Admob.INTERSTITIAL");
                                    lb0 = a(str2, ADRequestList.ORDER_H, aDRequestList);
                                    break;
                                }
                                break;
                            case 91024541:
                                if (string.equals(ADRequestList.ADMOB_I_M)) {
                                    String str3 = a.d;
                                    gg0.d(str3, "Admob.INTERSTITIAL");
                                    lb0 = a(str3, ADRequestList.ORDER_M, aDRequestList);
                                    break;
                                }
                                break;
                            case 91024546:
                                if (string.equals(ADRequestList.ADMOB_I_R)) {
                                    String str4 = a.d;
                                    gg0.d(str4, "Admob.INTERSTITIAL");
                                    lb0 = a(str4, ADRequestList.ORDER_R, aDRequestList);
                                    break;
                                }
                                break;
                            case 95642141:
                                if (string.equals(ADRequestList.FAN_I_H)) {
                                    String str5 = com.zjsoft.fan.a.d;
                                    gg0.d(str5, "Fan.INTERSTITIAL");
                                    lb0 = a(str5, ADRequestList.ORDER_H, aDRequestList);
                                    break;
                                }
                                break;
                            case 95642151:
                                if (string.equals(ADRequestList.FAN_I_R)) {
                                    String str6 = com.zjsoft.fan.a.d;
                                    gg0.d(str6, "Fan.INTERSTITIAL");
                                    lb0 = a(str6, ADRequestList.ORDER_R, aDRequestList);
                                    break;
                                }
                                break;
                        }
                    }
                    if (lb0 != null) {
                        arrayList.add(lb0);
                    }
                }
                aDRequestList.clear();
                aDRequestList.addAll(arrayList);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return aDRequestList;
    }

    public final ADRequestList d(Context context, ADRequestList aDRequestList, i iVar) {
        gg0.e(context, "context");
        gg0.e(aDRequestList, "list");
        gg0.e(iVar, "type");
        String q = cc0.q(context, iVar == i.ResultPage ? "order_card_result" : "order_card_home", "[\"a-n-h\",\"f-n-h\",\"a-n-m\",\"a-n-r\"]");
        if (q != null && !gg0.a(q, "")) {
            try {
                JSONArray jSONArray = new JSONArray(q);
                ArrayList arrayList = new ArrayList();
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    lb0 lb0 = null;
                    String string = jSONArray.getString(i);
                    if (string != null) {
                        switch (string.hashCode()) {
                            case 115:
                                if (string.equals(ADRequestList.SELF)) {
                                    String str = com.zjsoft.zjad.a.b;
                                    gg0.d(str, "ZJAd.NATIVE_CARD");
                                    lb0 = a(str, ADRequestList.ORDER_NULL, aDRequestList);
                                    break;
                                }
                                break;
                            case 91029341:
                                if (string.equals(ADRequestList.ADMOB_N_H)) {
                                    String str2 = a.c;
                                    gg0.d(str2, "Admob.NATIVE_CARD");
                                    lb0 = a(str2, ADRequestList.ORDER_H, aDRequestList);
                                    break;
                                }
                                break;
                            case 91029346:
                                if (string.equals(ADRequestList.ADMOB_N_M)) {
                                    String str3 = a.c;
                                    gg0.d(str3, "Admob.NATIVE_CARD");
                                    lb0 = a(str3, ADRequestList.ORDER_M, aDRequestList);
                                    break;
                                }
                                break;
                            case 91029351:
                                if (string.equals(ADRequestList.ADMOB_N_R)) {
                                    String str4 = a.c;
                                    gg0.d(str4, "Admob.NATIVE_CARD");
                                    lb0 = a(str4, ADRequestList.ORDER_R, aDRequestList);
                                    break;
                                }
                                break;
                            case 95646946:
                                if (string.equals(ADRequestList.FAN_N_H)) {
                                    String str5 = com.zjsoft.fan.a.c;
                                    gg0.d(str5, "Fan.NATIVE_CARD");
                                    lb0 = a(str5, ADRequestList.ORDER_H, aDRequestList);
                                    break;
                                }
                                break;
                            case 95646956:
                                if (string.equals(ADRequestList.FAN_N_R)) {
                                    String str6 = com.zjsoft.fan.a.c;
                                    gg0.d(str6, "Fan.NATIVE_CARD");
                                    lb0 = a(str6, ADRequestList.ORDER_R, aDRequestList);
                                    break;
                                }
                                break;
                        }
                    }
                    if (lb0 != null) {
                        arrayList.add(lb0);
                    }
                }
                aDRequestList.clear();
                aDRequestList.addAll(arrayList);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return aDRequestList;
    }
}
