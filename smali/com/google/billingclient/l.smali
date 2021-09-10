.class Lcom/google/billingclient/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/android/billingclient/api/n;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Lcom/google/billingclient/g;


# direct methods
.method constructor <init>(Lcom/google/billingclient/g;Lcom/android/billingclient/api/n;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/billingclient/l;->f:Lcom/google/billingclient/g;

    iput-object p2, p0, Lcom/google/billingclient/l;->b:Lcom/android/billingclient/api/n;

    iput-object p3, p0, Lcom/google/billingclient/l;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/billingclient/l;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/billingclient/l;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/f;->f()Lcom/android/billingclient/api/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/billingclient/l;->b:Lcom/android/billingclient/api/n;

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/f$a;->c(Lcom/android/billingclient/api/n;)Lcom/android/billingclient/api/f$a;

    iget-object v1, p0, Lcom/google/billingclient/l;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/billingclient/l;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/f$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/f$a;

    .line 4
    invoke-virtual {v0}, Lcom/android/billingclient/api/f$a;->a()Lcom/android/billingclient/api/f;

    move-result-object v0

    const-string v1, "Launching in-app purchase flow, sku: "

    .line 5
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/android/billingclient/api/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", oldSku: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Lcom/android/billingclient/api/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BillingManager"

    .line 8
    invoke-static {v2, v1}, Lcom/google/billingclient/BillingHelper;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/google/billingclient/l;->f:Lcom/google/billingclient/g;

    invoke-static {v1}, Lcom/google/billingclient/g;->g(Lcom/google/billingclient/g;)Lcom/android/billingclient/api/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/billingclient/l;->e:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/android/billingclient/api/c;->e(Landroid/app/Activity;Lcom/android/billingclient/api/f;)Lcom/android/billingclient/api/g;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/billingclient/l;->f:Lcom/google/billingclient/g;

    invoke-static {v1}, Lcom/google/billingclient/g;->d(Lcom/google/billingclient/g;)Landroid/content/Context;

    invoke-static {v0}, Lcom/google/billingclient/BillingHelper;->b(Lcom/android/billingclient/api/g;)V

    return-void
.end method
