package com.google.firebase.abt.component;

import android.content.Context;
import com.google.firebase.abt.c;
import java.util.HashMap;
import java.util.Map;

public class a {
    private final Map<String, c> a = new HashMap();
    private final Context b;
    private final vy c;

    protected a(Context context, vy vyVar) {
        this.b = context;
        this.c = vyVar;
    }

    public synchronized c a(String str) {
        if (!this.a.containsKey(str)) {
            this.a.put(str, new c(this.c, str));
        }
        return this.a.get(str);
    }
}
