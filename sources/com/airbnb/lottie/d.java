package com.airbnb.lottie;

import android.content.Context;
import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public class d implements Callable<m<e>> {
    final /* synthetic */ String b;
    final /* synthetic */ LottieAnimationView c;

    d(LottieAnimationView lottieAnimationView, String str) {
        this.c = lottieAnimationView;
        this.b = str;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public m<e> call() {
        if (!(this.c.o)) {
            return f.e(this.c.getContext(), this.b, null);
        }
        Context context = this.c.getContext();
        String str = this.b;
        int i = f.b;
        return f.e(context, str, "asset_" + str);
    }
}
