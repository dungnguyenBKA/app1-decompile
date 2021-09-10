.class Lcom/google/billingclient/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/e;


# instance fields
.field final synthetic a:Lcom/google/billingclient/g;


# direct methods
.method constructor <init>(Lcom/google/billingclient/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/billingclient/k;->a:Lcom/google/billingclient/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/android/billingclient/api/g;)V
    .locals 2

    const-string v0, "BillingManager"

    const-string v1, "Setup BillingClient finished"

    .line 1
    invoke-static {v0, v1}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/billingclient/k;->a:Lcom/google/billingclient/g;

    invoke-static {v0}, Lcom/google/billingclient/g;->d(Lcom/google/billingclient/g;)Landroid/content/Context;

    invoke-static {p1}, Lcom/google/billingclient/BillingHelper;->b(Lcom/android/billingclient/api/g;)V

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/billingclient/k;->a:Lcom/google/billingclient/g;

    invoke-static {p1}, Lcom/google/billingclient/g;->e(Lcom/google/billingclient/g;)V

    .line 5
    iget-object p1, p0, Lcom/google/billingclient/k;->a:Lcom/google/billingclient/g;

    const-string v0, "subs"

    invoke-virtual {p1, v0}, Lcom/google/billingclient/g;->u(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "BillingManager"

    const-string v1, "onBillingServiceDisconnected"

    .line 1
    invoke-static {v0, v1}, Lcom/google/billingclient/BillingHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
