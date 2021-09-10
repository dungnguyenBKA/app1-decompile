package com.airbnb.lottie;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public class c implements Callable<m<e>> {
    final /* synthetic */ int b;
    final /* synthetic */ LottieAnimationView c;

    c(LottieAnimationView lottieAnimationView, int i) {
        this.c = lottieAnimationView;
        this.b = i;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public m<e> call() {
        return this.c.o ? f.j(this.c.getContext(), this.b) : f.k(this.c.getContext(), this.b, null);
    }
}
