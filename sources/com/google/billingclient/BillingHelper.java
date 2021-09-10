package com.google.billingclient;

import android.util.Printer;
import androidx.annotation.Keep;
import com.android.billingclient.api.g;
import java.util.Locale;

public class BillingHelper {
    private static Printer a;
    public static int b = Runtime.getRuntime().availableProcessors();

    public static void a(String str, String str2) {
        d(str, str2);
    }

    public static void b(g gVar) {
        String str;
        String str2;
        if (gVar == null) {
            str = "null BillingResult";
        } else if (gVar.b() == 0) {
            str = "OK";
        } else {
            int b2 = gVar.b();
            String a2 = gVar.a();
            switch (b2) {
                case -2:
                    str2 = "FEATURE_NOT_SUPPORTED";
                    break;
                case -1:
                    str2 = "SERVICE_DISCONNECTED";
                    break;
                case 0:
                default:
                    str2 = "Unknown";
                    break;
                case 1:
                    str2 = "USER_CANCELED";
                    break;
                case 2:
                    str2 = "SERVICE_UNAVAILABLE";
                    break;
                case 3:
                    str2 = "BILLING_UNAVAILABLE";
                    break;
                case 4:
                    str2 = "ITEM_UNAVAILABLE";
                    break;
                case 5:
                    str2 = "DEVELOPER_ERROR";
                    break;
                case 6:
                    str2 = "ERROR";
                    break;
                case 7:
                    str2 = "ITEM_ALREADY_OWNED";
                    break;
                case 8:
                    str2 = "ITEM_NOT_OWNED";
                    break;
            }
            str = String.format(Locale.ENGLISH, "%d %s %s", Integer.valueOf(b2), str2, a2);
        }
        d("BillingHelper", str);
    }

    public static void c(String str, String str2) {
        d(str, str2);
    }

    private static void d(String str, String str2) {
        try {
            Printer printer = a;
            if (printer != null) {
                printer.println(str + "-->" + str2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Keep
    public static void setPrinter(Printer printer) {
        a = printer;
    }
}
