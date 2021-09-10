package com.vungle.warren.network;

import com.vungle.warren.network.converters.Converter;
import com.vungle.warren.network.converters.EmptyResponseConverter;
import com.vungle.warren.network.converters.JsonConverter;
import defpackage.dh0;
import defpackage.jh0;
import defpackage.og0;
import java.util.Map;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;

public class VungleApiImpl implements VungleApi {
    private static final String CONFIG = "config";
    private static final Converter<mh0, Void> emptyResponseConverter = new EmptyResponseConverter();
    private static final Converter<mh0, s60> jsonConverter = new JsonConverter();
    dh0 baseUrl;
    og0.a okHttpClient;

    public VungleApiImpl(dh0 dh0, og0.a aVar) {
        this.baseUrl = dh0;
        this.okHttpClient = aVar;
    }

    private <T> Call<T> createNewGetCall(String str, String str2, Map<String, String> map, Converter<mh0, T> converter) {
        dh0.a m = dh0.i(str2).m();
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                m.a(entry.getKey(), entry.getValue());
            }
        }
        jh0.a defaultBuilder = defaultBuilder(str, m.b().toString());
        defaultBuilder.e(HttpGet.METHOD_NAME, null);
        return new OkHttpCall(((gh0) this.okHttpClient).k(defaultBuilder.b()), converter);
    }

    private Call<s60> createNewPostCall(String str, String str2, s60 s60) {
        String p60 = s60 != null ? s60.toString() : "";
        jh0.a defaultBuilder = defaultBuilder(str, str2);
        defaultBuilder.e(HttpPost.METHOD_NAME, kh0.create((fh0) null, p60));
        return new OkHttpCall(((gh0) this.okHttpClient).k(defaultBuilder.b()), jsonConverter);
    }

    private jh0.a defaultBuilder(String str, String str2) {
        jh0.a aVar = new jh0.a();
        aVar.g(str2);
        aVar.a("User-Agent", str);
        aVar.a("Vungle-Version", "5.7.0");
        aVar.a("Content-Type", "application/json");
        return aVar;
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<s60> ads(String str, String str2, s60 s60) {
        return createNewPostCall(str, str2, s60);
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<s60> config(String str, s60 s60) {
        return createNewPostCall(str, this.baseUrl.toString() + CONFIG, s60);
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<Void> pingTPAT(String str, String str2) {
        return createNewGetCall(str, str2, null, emptyResponseConverter);
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<s60> reportAd(String str, String str2, s60 s60) {
        return createNewPostCall(str, str2, s60);
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<s60> reportNew(String str, String str2, Map<String, String> map) {
        return createNewGetCall(str, str2, map, jsonConverter);
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<s60> ri(String str, String str2, s60 s60) {
        return createNewPostCall(str, str2, s60);
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<s60> sendLog(String str, String str2, s60 s60) {
        return createNewPostCall(str, str2, s60);
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<s60> willPlayAd(String str, String str2, s60 s60) {
        return createNewPostCall(str, str2, s60);
    }
}
