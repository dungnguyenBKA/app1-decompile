.class final Lcom/android/billingclient/api/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Lcom/android/billingclient/api/f;

.field private final synthetic c:Lcom/android/billingclient/api/n;

.field private final synthetic d:Lcom/android/billingclient/api/d;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/f;Lcom/android/billingclient/api/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/b1;->d:Lcom/android/billingclient/api/d;

    iput-object p2, p0, Lcom/android/billingclient/api/b1;->b:Lcom/android/billingclient/api/f;

    iput-object p3, p0, Lcom/android/billingclient/api/b1;->c:Lcom/android/billingclient/api/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/b1;->d:Lcom/android/billingclient/api/d;

    invoke-static {v0}, Lcom/android/billingclient/api/d;->y(Lcom/android/billingclient/api/d;)Lcom/google/android/gms/internal/play_billing/zzc;

    move-result-object v1

    iget-object v0, p0, Lcom/android/billingclient/api/b1;->d:Lcom/android/billingclient/api/d;

    .line 2
    invoke-static {v0}, Lcom/android/billingclient/api/d;->l(Lcom/android/billingclient/api/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/billingclient/api/b1;->b:Lcom/android/billingclient/api/f;

    .line 3
    invoke-virtual {v2}, Lcom/android/billingclient/api/f;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/android/billingclient/api/b1;->c:Lcom/android/billingclient/api/n;

    .line 4
    invoke-virtual {v0}, Lcom/android/billingclient/api/n;->c()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    const-string v6, "subs"

    const/4 v7, 0x0

    .line 5
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
