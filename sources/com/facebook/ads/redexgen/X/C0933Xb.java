package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;

/* renamed from: com.facebook.ads.redexgen.X.Xb  reason: case insensitive filesystem */
public class C0933Xb extends NS {
    public final /* synthetic */ OS A00;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0933Xb(OS os, XJ xj) {
        super(xj);
        this.A00 = os;
        getSettings().setAllowFileAccess(true);
        setBackgroundColor(0);
    }

    @Override // com.facebook.ads.redexgen.X.NS
    public final WebChromeClient A0D() {
        return new ON(this.A00, null);
    }

    @Override // com.facebook.ads.redexgen.X.NS
    public final WebViewClient A0E() {
        return new OO(this.A00, null);
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        this.A00.A0B.A07(motionEvent, this, this);
        requestDisallowInterceptTouchEvent(true);
        return super.onTouchEvent(motionEvent);
    }
}
