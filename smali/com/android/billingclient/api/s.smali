.class final Lcom/android/billingclient/api/s;
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
.field private final synthetic b:Lcom/android/billingclient/api/n;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/android/billingclient/api/d;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/n;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/s;->d:Lcom/android/billingclient/api/d;

    iput-object p2, p0, Lcom/android/billingclient/api/s;->b:Lcom/android/billingclient/api/n;

    iput-object p3, p0, Lcom/android/billingclient/api/s;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/s;->d:Lcom/android/billingclient/api/d;

    invoke-static {v0}, Lcom/android/billingclient/api/d;->y(Lcom/android/billingclient/api/d;)Lcom/google/android/gms/internal/play_billing/zzc;

    move-result-object v1

    iget-object v0, p0, Lcom/android/billingclient/api/s;->d:Lcom/android/billingclient/api/d;

    .line 2
    invoke-static {v0}, Lcom/android/billingclient/api/d;->l(Lcom/android/billingclient/api/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/billingclient/api/s;->b:Lcom/android/billingclient/api/n;

    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/n;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/billingclient/api/s;->c:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v6, 0x0

    .line 4
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
