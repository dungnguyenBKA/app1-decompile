.class final Lcom/google/android/gms/ads/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Z

.field private final synthetic c:Lcom/google/android/gms/ads/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzf;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/zzf;

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/b;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/zzf;

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzf;->b(Lcom/google/android/gms/ads/internal/zzf;)Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/zzf;

    .line 4
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzf;->c(Lcom/google/android/gms/ads/internal/zzf;)Landroid/content/Context;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 6
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/gms/ads/internal/b;->b:Z

    .line 7
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzds;->zza(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzds;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzds;->zzbt()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 9
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/ads/internal/zzf;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzf;->a(Lcom/google/android/gms/ads/internal/zzf;)Lcom/google/android/gms/internal/ads/zzdsy;

    move-result-object v3

    const/16 v4, 0x7eb

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 11
    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(IJLjava/lang/Exception;)Lkw;

    return-void
.end method
