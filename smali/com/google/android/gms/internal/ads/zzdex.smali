.class public final Lcom/google/android/gms/internal/ads/zzdex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfi<",
        "Lcom/google/android/gms/internal/ads/zzdeu;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzghl:Lcom/google/android/gms/internal/ads/zzdzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzv;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdex;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdex;->context:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdex;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    return-void
.end method


# virtual methods
.method public final zzasy()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdeu;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdex;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdew;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdew;-><init>(Lcom/google/android/gms/internal/ads/zzdex;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzato()Lcom/google/android/gms/internal/ads/zzdeu;
    .locals 10

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/zzdeu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdex;->context:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lyv;->a(Landroid/content/Context;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->f()Z

    move-result v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdex;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzau(Landroid/content/Context;)Z

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdex;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkt()Lcom/google/android/gms/ads/internal/util/zzr;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzr;->zzze()Z

    move-result v4

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdex;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzar(Landroid/content/Context;)I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdex;->context:Landroid/content/Context;

    const-string v6, "com.google.android.gms.ads.dynamite"

    .line 6
    invoke-static {v0, v6}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdex;->context:Landroid/content/Context;

    .line 8
    invoke-static {v0, v6}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    move-object v0, v8

    move v6, v7

    move v7, v9

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdeu;-><init>(ZZLjava/lang/String;ZIII)V

    return-object v8
.end method
