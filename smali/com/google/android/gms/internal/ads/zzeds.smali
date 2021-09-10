.class final synthetic Lcom/google/android/gms/internal/ads/zzeds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic zzidt:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeft;->values()[Lcom/google/android/gms/internal/ads/zzeft;

    const/4 v0, 0x6

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeds;->zzidt:[I

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzeft;->zzigh:Lcom/google/android/gms/internal/ads/zzeft;

    const/4 v1, 0x1

    aput v1, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzeds;->zzidt:[I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzeft;->zzigj:Lcom/google/android/gms/internal/ads/zzeft;

    const/4 v2, 0x2

    aput v2, v1, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzeds;->zzidt:[I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzeft;->zzigk:Lcom/google/android/gms/internal/ads/zzeft;

    const/4 v2, 0x4

    aput v0, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
