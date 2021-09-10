.class final Lcom/google/android/gms/ads/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/zzei;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Lcom/google/android/gms/ads/internal/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/g;->b:Lcom/google/android/gms/ads/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->b:Lcom/google/android/gms/ads/internal/zzl;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzl;->V(Lcom/google/android/gms/ads/internal/zzl;)Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g;->b:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzl;->W(Lcom/google/android/gms/ads/internal/zzl;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzef;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzei;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzei;-><init>(Lcom/google/android/gms/internal/ads/zzdy;)V

    return-object v1
.end method
