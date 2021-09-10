package com.vungle.warren.network;

import defpackage.og0;
import java.util.List;

public class APIFactory {
    private static final String TAG = "APIFactory";
    private dh0 baseUrl;
    private og0.a okHttpClient;

    public APIFactory(og0.a aVar, String str) {
        dh0 i = dh0.i(str);
        this.baseUrl = i;
        this.okHttpClient = aVar;
        List<String> o = i.o();
        if (!"".equals(o.get(o.size() - 1))) {
            throw new IllegalArgumentException(ic.i("baseUrl must end in /: ", str));
        }
    }

    public VungleApi createAPI() {
        return new VungleApiImpl(this.baseUrl, this.okHttpClient);
    }
}
