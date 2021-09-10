.class public final Lcom/google/android/gms/internal/ads/zzblt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzful:Lcom/google/android/gms/internal/ads/zzblu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzblu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblt;->zzful:Lcom/google/android/gms/internal/ads/zzblu;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzblu;)Lcom/google/android/gms/internal/ads/zzblt;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzblt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzblt;-><init>(Lcom/google/android/gms/internal/ads/zzblu;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblt;->zzful:Lcom/google/android/gms/internal/ads/zzblu;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzblu;->zzajy()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method
