.class final synthetic Lcom/google/android/gms/internal/ads/zzfs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic zzaay:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcd;->values()[Lcom/google/android/gms/internal/ads/zzcd;

    const/4 v0, 0x5

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfs;->zzaay:[I

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcd;->zzfe:Lcom/google/android/gms/internal/ads/zzcd;

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfs;->zzaay:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcd;->zzfd:Lcom/google/android/gms/internal/ads/zzcd;

    const/4 v1, 0x3

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
