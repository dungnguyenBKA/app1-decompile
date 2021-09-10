.class final Lcom/android/billingclient/api/zzah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/b;
.implements Lcom/android/billingclient/api/e;
.implements Lcom/android/billingclient/api/i;
.implements Lcom/android/billingclient/api/l;
.implements Lcom/android/billingclient/api/m;
.implements Lcom/android/billingclient/api/p;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeOnAcknowledgePurchaseResponse(ILjava/lang/String;J)V
.end method

.method public static native nativeOnBillingServiceDisconnected()V
.end method

.method public static native nativeOnBillingSetupFinished(ILjava/lang/String;J)V
.end method

.method public static native nativeOnConsumePurchaseResponse(ILjava/lang/String;Ljava/lang/String;J)V
.end method

.method public static native nativeOnPriceChangeConfirmationResult(ILjava/lang/String;J)V
.end method

.method public static native nativeOnPurchaseHistoryResponse(ILjava/lang/String;[Lcom/android/billingclient/api/k;J)V
.end method

.method public static native nativeOnPurchasesUpdated(ILjava/lang/String;[Lcom/android/billingclient/api/j;)V
.end method

.method public static native nativeOnQueryPurchasesResponse(ILjava/lang/String;[Lcom/android/billingclient/api/j;J)V
.end method

.method public static native nativeOnSkuDetailsResponse(ILjava/lang/String;[Lcom/android/billingclient/api/n;J)V
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/n;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/billingclient/api/n;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/billingclient/api/n;

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->a()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 5
    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/billingclient/api/zzah;->nativeOnSkuDetailsResponse(ILjava/lang/String;[Lcom/android/billingclient/api/n;J)V

    return-void
.end method

.method public final b(Lcom/android/billingclient/api/g;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->a()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1, v2}, Lcom/android/billingclient/api/zzah;->nativeOnAcknowledgePurchaseResponse(ILjava/lang/String;J)V

    return-void
.end method

.method public final c(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/j;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/billingclient/api/j;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/billingclient/api/j;

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->a()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, p1, p2}, Lcom/android/billingclient/api/zzah;->nativeOnPurchasesUpdated(ILjava/lang/String;[Lcom/android/billingclient/api/j;)V

    return-void
.end method

.method public final d(Lcom/android/billingclient/api/g;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->a()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1, v2}, Lcom/android/billingclient/api/zzah;->nativeOnBillingSetupFinished(ILjava/lang/String;J)V

    return-void
.end method

.method public final e()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/zzah;->nativeOnBillingServiceDisconnected()V

    return-void
.end method

.method public final f(Lcom/android/billingclient/api/g;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->a()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 3
    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/billingclient/api/zzah;->nativeOnConsumePurchaseResponse(ILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final g(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/k;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/billingclient/api/k;

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/billingclient/api/k;

    .line 4
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->a()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 6
    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/billingclient/api/zzah;->nativeOnPurchaseHistoryResponse(ILjava/lang/String;[Lcom/android/billingclient/api/k;J)V

    return-void
.end method
