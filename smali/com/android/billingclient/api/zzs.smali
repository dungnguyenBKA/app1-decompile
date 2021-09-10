.class final Lcom/android/billingclient/api/zzs;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string p1, "BillingClient"

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 4
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    const/4 p1, 0x0

    .line 5
    throw p1
.end method
