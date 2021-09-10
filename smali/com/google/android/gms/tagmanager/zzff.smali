.class final Lcom/google/android/gms/tagmanager/zzff;
.super Lcom/google/android/gms/tagmanager/zzey;
.source "SourceFile"


# static fields
.field private static zzb:Lcom/google/android/gms/tagmanager/zzff;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzey;-><init>()V

    return-void
.end method

.method public static zzg()Lcom/google/android/gms/tagmanager/zzff;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzff;->zzb:Lcom/google/android/gms/tagmanager/zzff;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzff;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzff;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzff;->zzb:Lcom/google/android/gms/tagmanager/zzff;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzff;->zzb:Lcom/google/android/gms/tagmanager/zzff;

    return-object v0
.end method
