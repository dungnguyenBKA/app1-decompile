package com.facebook.ads.redexgen.X;

import android.content.DialogInterface;
import com.google.ads.ADRequestList;

/* renamed from: com.facebook.ads.redexgen.X.cg  reason: case insensitive filesystem */
public class C1171cg extends AbstractRunnableC0603Kb {
    public static String[] A02;
    public final /* synthetic */ DialogInterface A00;
    public final /* synthetic */ DialogInterface$OnClickListenerC0645Lu A01;

    static {
        A00();
    }

    public static void A00() {
        A02 = new String[]{ADRequestList.ORDER_R, "tRYI", "7UJuVMqBcP2QEoAe5I9ReZPElv0qEy55", "leQvAr8Bdm", "IrxDcEzjLLQBxw", "x58zC904VQqUCNnuzCjkyAfM", "58DZzAqOGTGaE", "1xO3"};
    }

    public C1171cg(DialogInterface$OnClickListenerC0645Lu lu, DialogInterface dialogInterface) {
        this.A01 = lu;
        this.A00 = dialogInterface;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        if (this.A01.A01.A01 != null) {
            this.A01.A01.A01.ACQ(KI.A01(), new QY().A06(this.A01.A01.A03(this.A01.A00.getText().toString())).A09());
        }
        DialogInterface dialogInterface = this.A00;
        if (A02[6].length() != 13) {
            throw new RuntimeException();
        }
        A02[6] = "1hADnGgCLejuT";
        dialogInterface.cancel();
    }
}
