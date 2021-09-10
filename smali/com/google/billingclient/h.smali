.class Lcom/google/billingclient/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/m;


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/m;

.field final synthetic b:Lcom/google/billingclient/g;


# direct methods
.method constructor <init>(Lcom/google/billingclient/g;Lcom/android/billingclient/api/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/billingclient/h;->b:Lcom/google/billingclient/g;

    iput-object p2, p0, Lcom/google/billingclient/h;->a:Lcom/android/billingclient/api/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/android/billingclient/api/g;Ljava/util/List;)V
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

    .line 1
    iget-object v0, p0, Lcom/google/billingclient/h;->b:Lcom/google/billingclient/g;

    invoke-static {v0, p2}, Lcom/google/billingclient/g;->a(Lcom/google/billingclient/g;Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/google/billingclient/h;->a:Lcom/android/billingclient/api/m;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/billingclient/api/m;->c(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string p1, "BillingManager"

    const-string p2, "update purchase failed, listener is null"

    .line 4
    invoke-static {p1, p2}, Lcom/google/billingclient/BillingHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
