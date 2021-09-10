package com.vungle.warren.network;

import androidx.annotation.Keep;
import java.util.Map;

@Keep
public interface VungleApi {
    Call<s60> ads(String str, String str2, s60 s60);

    Call<s60> config(String str, s60 s60);

    Call<Void> pingTPAT(String str, String str2);

    Call<s60> reportAd(String str, String str2, s60 s60);

    Call<s60> reportNew(String str, String str2, Map<String, String> map);

    Call<s60> ri(String str, String str2, s60 s60);

    Call<s60> sendLog(String str, String str2, s60 s60);

    Call<s60> willPlayAd(String str, String str2, s60 s60);
}
