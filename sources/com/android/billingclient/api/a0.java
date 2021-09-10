package com.android.billingclient.api;

import com.android.billingclient.api.g;

final class a0 {
    static final g a = ic.y(3, "Google Play In-app Billing API version is less than 3");
    static final g b = ic.y(3, "Google Play In-app Billing API version is less than 9");
    static final g c = ic.y(3, "Billing service unavailable on device.");
    static final g d = ic.y(5, "Client is already in the process of connecting to billing service.");
    static final g e = ic.y(3, "Play Store version installed does not support cross selling products.");
    static final g f = ic.y(5, "The list of SKUs can't be empty.");
    static final g g = ic.y(5, "SKU type can't be empty.");
    static final g h = ic.y(-2, "Client does not support extra params.");
    static final g i = ic.y(-2, "Client does not support the feature.");
    static final g j = ic.y(-2, "Client does not support get purchase history.");
    static final g k = ic.y(5, "Invalid purchase token.");
    static final g l = ic.y(6, "An internal error occurred.");
    static final g m;
    static final g n = ic.y(-1, "Service connection is disconnected.");
    static final g o = ic.y(-3, "Timeout communicating with service.");
    static final g p = ic.y(-2, "Client doesn't support subscriptions.");
    static final g q = ic.y(-2, "Client doesn't support subscriptions update.");
    static final g r = ic.y(-2, "Client doesn't support multi-item purchases.");
    static final g s = ic.y(5, "Unknown feature");

    static {
        g.a c2 = g.c();
        c2.c(4);
        c2.b("Item is unavailable for purchase.");
        c2.a();
        g.a c3 = g.c();
        c3.c(5);
        c3.b("SKU can't be null.");
        c3.a();
        g.a c4 = g.c();
        c4.c(5);
        c4.b("SKU type can't be null.");
        c4.a();
        g.a c5 = g.c();
        c5.c(0);
        m = c5.a();
    }
}
