.class final Lcom/android/billingclient/api/c1;
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
.field private final synthetic b:I

.field private final synthetic c:Lcom/android/billingclient/api/n;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lcom/android/billingclient/api/f;

.field private final synthetic f:Landroid/os/Bundle;

.field private final synthetic g:Lcom/android/billingclient/api/d;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;ILcom/android/billingclient/api/n;Ljava/lang/String;Lcom/android/billingclient/api/f;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/c1;->g:Lcom/android/billingclient/api/d;

    iput p2, p0, Lcom/android/billingclient/api/c1;->b:I

    iput-object p3, p0, Lcom/android/billingclient/api/c1;->c:Lcom/android/billingclient/api/n;

    iput-object p4, p0, Lcom/android/billingclient/api/c1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/billingclient/api/c1;->e:Lcom/android/billingclient/api/f;

    iput-object p6, p0, Lcom/android/billingclient/api/c1;->f:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/c1;->g:Lcom/android/billingclient/api/d;

    invoke-static {v0}, Lcom/android/billingclient/api/d;->y(Lcom/android/billingclient/api/d;)Lcom/google/android/gms/internal/play_billing/zzc;

    move-result-object v1

    iget v2, p0, Lcom/android/billingclient/api/c1;->b:I

    iget-object v0, p0, Lcom/android/billingclient/api/c1;->g:Lcom/android/billingclient/api/d;

    .line 2
    invoke-static {v0}, Lcom/android/billingclient/api/d;->l(Lcom/android/billingclient/api/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/billingclient/api/c1;->c:Lcom/android/billingclient/api/n;

    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/n;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/billingclient/api/c1;->d:Ljava/lang/String;

    .line 4
    iget-object v7, p0, Lcom/android/billingclient/api/c1;->f:Landroid/os/Bundle;

    const/4 v6, 0x0

    .line 5
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
