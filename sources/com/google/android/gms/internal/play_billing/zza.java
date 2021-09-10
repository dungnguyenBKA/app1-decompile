package com.google.android.gms.internal.play_billing;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.android.billingclient.api.a;
import com.android.billingclient.api.f;
import com.android.billingclient.api.f0;
import com.android.billingclient.api.g;
import com.android.billingclient.api.h;
import com.android.billingclient.api.j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import org.json.JSONException;

public final class zza {
    public static int zza = Runtime.getRuntime().availableProcessors();

    public static void zza(String str, String str2) {
        Log.isLoggable(str, 2);
    }

    public static void zzb(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }

    private static j zzc(String str, String str2) {
        if (str == null || str2 == null) {
            zzb("BillingHelper", "Received a bad purchase data.");
            return null;
        }
        try {
            return new j(str, str2);
        } catch (JSONException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 47);
            sb.append("Got JSONException while parsing purchase data: ");
            sb.append(valueOf);
            zzb("BillingHelper", sb.toString());
            return null;
        }
    }

    public static int zza(Intent intent, String str) {
        return zzb(intent, str).b();
    }

    public static int zza(Bundle bundle, String str) {
        if (bundle == null) {
            zzb(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            zza(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            String name = obj.getClass().getName();
            zzb(str, name.length() != 0 ? "Unexpected type for bundle response code: ".concat(name) : new String("Unexpected type for bundle response code: "));
            return 6;
        }
    }

    public static g zzb(Intent intent, String str) {
        if (intent == null) {
            zzb("BillingHelper", "Got null intent!");
            g.a c = g.c();
            c.c(6);
            c.b("An internal error occurred.");
            return c.a();
        }
        g.a c2 = g.c();
        c2.c(zza(intent.getExtras(), str));
        c2.b(zzb(intent.getExtras(), str));
        return c2.a();
    }

    public static List<j> zza(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList();
        if (stringArrayList == null || stringArrayList2 == null) {
            zzb("BillingHelper", "Couldn't find purchase lists, trying to find single data.");
            j zzc = zzc(bundle.getString("INAPP_PURCHASE_DATA"), bundle.getString("INAPP_DATA_SIGNATURE"));
            if (zzc == null) {
                zzb("BillingHelper", "Couldn't find single purchase data as well.");
                return null;
            }
            arrayList.add(zzc);
        } else {
            int i = 0;
            while (i < stringArrayList.size() && i < stringArrayList2.size()) {
                j zzc2 = zzc(stringArrayList.get(i), stringArrayList2.get(i));
                if (zzc2 != null) {
                    arrayList.add(zzc2);
                }
                i++;
            }
        }
        return arrayList;
    }

    public static String zzb(Bundle bundle, String str) {
        if (bundle == null) {
            zzb(str, "Unexpected null bundle received!");
            return "";
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            zza(str, "getDebugMessageFromBundle() got null response code, assuming OK");
            return "";
        } else if (obj instanceof String) {
            return (String) obj;
        } else {
            String name = obj.getClass().getName();
            zzb(str, name.length() != 0 ? "Unexpected type for debug message: ".concat(name) : new String("Unexpected type for debug message: "));
            return "";
        }
    }

    public static Bundle zza(f fVar, boolean z, boolean z2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (fVar.c() != 0) {
            bundle.putInt("prorationMode", fVar.c());
        }
        if (!TextUtils.isEmpty(fVar.k())) {
            bundle.putString("accountId", fVar.k());
        }
        if (!TextUtils.isEmpty(fVar.p())) {
            bundle.putString("obfuscatedProfileId", fVar.p());
        }
        if (fVar.e()) {
            bundle.putBoolean("vr", true);
        }
        if (!TextUtils.isEmpty(fVar.a())) {
            bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(fVar.a())));
        }
        if (!TextUtils.isEmpty(fVar.b())) {
            bundle.putString("oldSkuPurchaseToken", fVar.b());
        }
        if (z && z2) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        return bundle;
    }

    public static Bundle zza(boolean z, boolean z2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (z && z2) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        return bundle;
    }

    public static Bundle zza(int i, boolean z, String str, String str2, ArrayList<f0> arrayList) {
        Bundle bundle = new Bundle();
        if (i >= 9) {
            bundle.putString("playBillingLibraryVersion", str);
        }
        if (i >= 9 && z) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        if (i >= 13 && str2 != null) {
            bundle.putString("SKU_PACKAGE_NAME", str2);
        }
        if (i >= 14) {
            ArrayList<String> arrayList2 = new ArrayList<>();
            int size = arrayList.size();
            int i2 = 0;
            boolean z2 = false;
            while (i2 < size) {
                f0 f0Var = arrayList.get(i2);
                i2++;
                Objects.requireNonNull(f0Var);
                arrayList2.add(null);
                z2 |= !TextUtils.isEmpty(null);
            }
            if (z2) {
                bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
            }
        }
        return bundle;
    }

    public static Bundle zza(h hVar, boolean z, String str) {
        Bundle bundle = new Bundle();
        if (z) {
            bundle.putString("playBillingLibraryVersion", str);
        }
        return bundle;
    }

    public static Bundle zza(a aVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        return bundle;
    }
}
