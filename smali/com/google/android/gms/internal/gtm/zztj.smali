.class public abstract Lcom/google/android/gms/internal/gtm/zztj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zzd:I = 0x0

.field private static volatile zze:I = 0x64


# instance fields
.field zza:I

.field final zzb:I

.field zzc:Lcom/google/android/gms/internal/gtm/zztk;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzti;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p1, Lcom/google/android/gms/internal/gtm/zztj;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztj;->zzb:I

    return-void
.end method

.method public static zzs(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static zzt(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb(I)I
.end method

.method public abstract zzc()I
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/gtm/zztd;
.end method

.method public abstract zze()Ljava/lang/String;
.end method

.method public abstract zzf()Ljava/lang/String;
.end method

.method public abstract zzg(I)V
.end method

.method public abstract zzh(I)V
.end method

.method public abstract zzi()Z
.end method

.method public abstract zzj()Z
.end method

.method public abstract zzk(I)Z
.end method
