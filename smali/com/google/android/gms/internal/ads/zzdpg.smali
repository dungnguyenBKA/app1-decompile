.class public final Lcom/google/android/gms/internal/ads/zzdpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public zzhnv:Z

.field public zzhnw:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzawf()Lcom/google/android/gms/internal/ads/zzdpg;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpg;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzawf()Lcom/google/android/gms/internal/ads/zzdpg;

    move-result-object v0

    return-object v0
.end method
