package com.vungle.warren.analytics;

import android.text.TextUtils;
import android.util.Log;
import com.vungle.warren.VungleApiClient;
import com.vungle.warren.network.Call;
import com.vungle.warren.network.Callback;
import com.vungle.warren.network.Response;
import java.net.MalformedURLException;
import java.util.ArrayList;

public class VungleAnalytics implements AdAnalytics {
    private static final String TAG = "VungleAnalytics";
    private final VungleApiClient client;

    public VungleAnalytics(VungleApiClient vungleApiClient) {
        this.client = vungleApiClient;
    }

    @Override // com.vungle.warren.analytics.AdAnalytics
    public String[] ping(String[] strArr) {
        if (strArr.length == 0) {
            return strArr;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    if (!this.client.pingTPAT(str)) {
                        arrayList.add(str);
                    }
                } catch (VungleApiClient.ClearTextTrafficException unused) {
                    Log.e(TAG, "Cleartext Network Traffic is Blocked : " + str);
                } catch (MalformedURLException unused2) {
                    Log.e(TAG, "Invalid Url : " + str);
                }
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    @Override // com.vungle.warren.analytics.AdAnalytics
    public void ri(s60 s60) {
        if (s60 != null) {
            this.client.ri(s60).enqueue(new Callback<s60>() {
                /* class com.vungle.warren.analytics.VungleAnalytics.AnonymousClass1 */

                @Override // com.vungle.warren.network.Callback
                public void onFailure(Call<s60> call, Throwable th) {
                    String unused = VungleAnalytics.TAG;
                }

                @Override // com.vungle.warren.network.Callback
                public void onResponse(Call<s60> call, Response<s60> response) {
                    String unused = VungleAnalytics.TAG;
                }
            });
        }
    }
}
