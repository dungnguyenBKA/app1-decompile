package com.google.firebase.crashlytics.ndk;

import android.content.Context;
import com.google.firebase.components.e;
import com.google.firebase.components.h;
import java.io.File;
import java.util.Objects;

final /* synthetic */ class a implements h {
    private final CrashlyticsNdkRegistrar a;

    private a(CrashlyticsNdkRegistrar crashlyticsNdkRegistrar) {
        this.a = crashlyticsNdkRegistrar;
    }

    public static h b(CrashlyticsNdkRegistrar crashlyticsNdkRegistrar) {
        return new a(crashlyticsNdkRegistrar);
    }

    @Override // com.google.firebase.components.h
    public Object a(e eVar) {
        Objects.requireNonNull(this.a);
        Context context = (Context) eVar.a(Context.class);
        return new c(new b(context, new JniNativeApi(context), new f(new File(context.getFilesDir(), ".com.google.firebase.crashlytics-ndk"))));
    }
}
