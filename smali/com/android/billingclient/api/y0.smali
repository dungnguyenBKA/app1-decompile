.class final Lcom/android/billingclient/api/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/android/billingclient/api/d;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/y0;->c:Lcom/android/billingclient/api/d;

    iput-object p2, p0, Lcom/android/billingclient/api/y0;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/y0;->c:Lcom/android/billingclient/api/d;

    invoke-static {v0}, Lcom/android/billingclient/api/d;->y(Lcom/android/billingclient/api/d;)Lcom/google/android/gms/internal/play_billing/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/y0;->c:Lcom/android/billingclient/api/d;

    .line 2
    invoke-static {v1}, Lcom/android/billingclient/api/d;->l(Lcom/android/billingclient/api/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/y0;->b:Ljava/lang/String;

    .line 3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x1

    const-string v5, "vr"

    .line 4
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v4, 0x7

    .line 5
    invoke-interface {v0, v4, v1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
