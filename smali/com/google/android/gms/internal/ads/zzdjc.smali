.class final synthetic Lcom/google/android/gms/internal/ads/zzdjc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic zzhge:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/overlay/zzn;->values()[Lcom/google/android/gms/ads/internal/overlay/zzn;

    const/4 v0, 0x4

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdjc;->zzhge:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_0
    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdjc;->zzhge:[I

    const/4 v4, 0x0

    aput v3, v1, v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v1, 0x3

    :try_start_2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdjc;->zzhge:[I

    aput v1, v3, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdjc;->zzhge:[I

    aput v0, v2, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
