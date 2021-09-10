.class Lcom/google/billingclient/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/billingclient/f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/billingclient/f;


# direct methods
.method constructor <init>(Lcom/google/billingclient/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/billingclient/f$a;->a:Lcom/google/billingclient/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/android/billingclient/api/g;)V
    .locals 2

    const-string v0, "Acknowledge  purchase, "

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingManager"

    .line 3
    invoke-static {v1, v0}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/billingclient/f$a;->a:Lcom/google/billingclient/f;

    iget-object v0, v0, Lcom/google/billingclient/f;->c:Lcom/google/billingclient/g;

    invoke-static {v0}, Lcom/google/billingclient/g;->d(Lcom/google/billingclient/g;)Landroid/content/Context;

    invoke-static {p1}, Lcom/google/billingclient/BillingHelper;->b(Lcom/android/billingclient/api/g;)V

    return-void
.end method
