.class final Lcom/android/billingclient/api/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Lcom/android/billingclient/api/d$a;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    invoke-static {v0}, Lcom/android/billingclient/api/d$a;->a(Lcom/android/billingclient/api/d$a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v3, v3, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    invoke-static {v3}, Lcom/android/billingclient/api/d;->l(Lcom/android/billingclient/api/d;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v4, 0xe

    const/16 v5, 0xe

    const/4 v6, 0x3

    :goto_0
    if-lt v5, v0, :cond_1

    .line 6
    :try_start_2
    iget-object v7, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v7, v7, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    .line 7
    invoke-static {v7}, Lcom/android/billingclient/api/d;->y(Lcom/android/billingclient/api/d;)Lcom/google/android/gms/internal/play_billing/zzc;

    move-result-object v7

    const-string v8, "subs"

    invoke-interface {v7, v5, v3, v8}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :catch_0
    move v0, v6

    goto/16 :goto_d

    :cond_1
    const/4 v5, 0x0

    .line 8
    :goto_1
    iget-object v7, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v7, v7, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-lt v5, v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-static {v7, v8}, Lcom/android/billingclient/api/d;->v(Lcom/android/billingclient/api/d;Z)Z

    .line 9
    iget-object v7, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v7, v7, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    if-lt v5, v0, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    invoke-static {v7, v8}, Lcom/android/billingclient/api/d;->z(Lcom/android/billingclient/api/d;Z)Z

    if-ge v5, v0, :cond_4

    const-string v5, "BillingClient"

    const-string v7, "In-app billing API does not support subscription on this device."

    .line 10
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 v5, 0xe

    :goto_4
    if-lt v5, v0, :cond_6

    .line 11
    iget-object v7, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v7, v7, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    .line 12
    invoke-static {v7}, Lcom/android/billingclient/api/d;->y(Lcom/android/billingclient/api/d;)Lcom/google/android/gms/internal/play_billing/zzc;

    move-result-object v7

    const-string v8, "inapp"

    invoke-interface {v7, v5, v3, v8}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 13
    iget-object v3, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v3, v3, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    invoke-static {v3, v5}, Lcom/android/billingclient/api/d;->w(Lcom/android/billingclient/api/d;I)I

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 14
    :cond_6
    :goto_5
    iget-object v3, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v3, v3, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    invoke-static {v3}, Lcom/android/billingclient/api/d;->D(Lcom/android/billingclient/api/d;)I

    move-result v5

    if-lt v5, v4, :cond_7

    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    invoke-static {v3, v4}, Lcom/android/billingclient/api/d;->C(Lcom/android/billingclient/api/d;Z)Z

    .line 15
    iget-object v3, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v3, v3, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    invoke-static {v3}, Lcom/android/billingclient/api/d;->D(Lcom/android/billingclient/api/d;)I

    move-result v4

    const/16 v5, 0xd

    if-lt v4, v5, :cond_8

    const/4 v4, 0x1

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_7
    invoke-static {v3, v4}, Lcom/android/billingclient/api/d;->F(Lcom/android/billingclient/api/d;Z)Z

    .line 16
    iget-object v3, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v3, v3, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    invoke-static {v3}, Lcom/android/billingclient/api/d;->D(Lcom/android/billingclient/api/d;)I

    move-result v4

    const/16 v5, 0xc

    if-lt v4, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    :goto_8
    invoke-static {v3, v4}, Lcom/android/billingclient/api/d;->H(Lcom/android/billingclient/api/d;Z)Z

    .line 17
    iget-object v3, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v3, v3, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    invoke-static {v3}, Lcom/android/billingclient/api/d;->D(Lcom/android/billingclient/api/d;)I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_a

    const/4 v4, 0x1

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    :goto_9
    invoke-static {v3, v4}, Lcom/android/billingclient/api/d;->I(Lcom/android/billingclient/api/d;Z)Z

    .line 18
    iget-object v3, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v3, v3, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    invoke-static {v3}, Lcom/android/billingclient/api/d;->D(Lcom/android/billingclient/api/d;)I

    move-result v4

    const/16 v5, 0x9

    if-lt v4, v5, :cond_b

    const/4 v4, 0x1

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    :goto_a
    invoke-static {v3, v4}, Lcom/android/billingclient/api/d;->J(Lcom/android/billingclient/api/d;Z)Z

    .line 19
    iget-object v3, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v3, v3, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    invoke-static {v3}, Lcom/android/billingclient/api/d;->D(Lcom/android/billingclient/api/d;)I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_c

    const/4 v4, 0x1

    goto :goto_b

    :cond_c
    const/4 v4, 0x0

    :goto_b
    invoke-static {v3, v4}, Lcom/android/billingclient/api/d;->K(Lcom/android/billingclient/api/d;Z)Z

    .line 20
    iget-object v3, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v3, v3, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    invoke-static {v3}, Lcom/android/billingclient/api/d;->D(Lcom/android/billingclient/api/d;)I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_d

    goto :goto_c

    :cond_d
    const/4 v9, 0x0

    :goto_c
    invoke-static {v3, v9}, Lcom/android/billingclient/api/d;->L(Lcom/android/billingclient/api/d;Z)Z

    .line 21
    iget-object v3, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v3, v3, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    invoke-static {v3}, Lcom/android/billingclient/api/d;->D(Lcom/android/billingclient/api/d;)I

    move-result v3

    if-ge v3, v0, :cond_e

    const-string v0, "BillingClient"

    const-string v3, "In-app billing API version 3 is not supported on this device."

    .line 22
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    if-nez v6, :cond_f

    .line 23
    iget-object v0, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v0, v0, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/android/billingclient/api/d;->k(Lcom/android/billingclient/api/d;I)I

    goto :goto_e

    .line 24
    :cond_f
    iget-object v0, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v0, v0, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    invoke-static {v0, v2}, Lcom/android/billingclient/api/d;->k(Lcom/android/billingclient/api/d;I)I

    .line 25
    iget-object v0, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v0, v0, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/d;->p(Lcom/android/billingclient/api/d;Lcom/google/android/gms/internal/play_billing/zzc;)Lcom/google/android/gms/internal/play_billing/zzc;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_e

    :catch_1
    :goto_d
    const-string v3, "BillingClient"

    const-string v4, "Exception while checking if billing is supported; try to reconnect"

    .line 26
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v3, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v3, v3, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    invoke-static {v3, v2}, Lcom/android/billingclient/api/d;->k(Lcom/android/billingclient/api/d;I)I

    .line 28
    iget-object v2, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    iget-object v2, v2, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    invoke-static {v2, v1}, Lcom/android/billingclient/api/d;->p(Lcom/android/billingclient/api/d;Lcom/google/android/gms/internal/play_billing/zzc;)Lcom/google/android/gms/internal/play_billing/zzc;

    move v6, v0

    :goto_e
    if-nez v6, :cond_10

    .line 29
    iget-object v0, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    sget-object v2, Lcom/android/billingclient/api/a0;->m:Lcom/android/billingclient/api/g;

    invoke-static {v0, v2}, Lcom/android/billingclient/api/d$a;->b(Lcom/android/billingclient/api/d$a;Lcom/android/billingclient/api/g;)V

    goto :goto_f

    .line 30
    :cond_10
    iget-object v0, p0, Lcom/android/billingclient/api/x;->b:Lcom/android/billingclient/api/d$a;

    sget-object v2, Lcom/android/billingclient/api/a0;->a:Lcom/android/billingclient/api/g;

    invoke-static {v0, v2}, Lcom/android/billingclient/api/d$a;->b(Lcom/android/billingclient/api/d$a;Lcom/android/billingclient/api/g;)V

    :goto_f
    return-object v1

    :catchall_0
    move-exception v1

    .line 31
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_11

    :goto_10
    throw v1

    :goto_11
    goto :goto_10
.end method
