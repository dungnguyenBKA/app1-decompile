.class public final Lcom/google/android/gms/internal/gtm/zzfa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile zza:Lcom/google/android/gms/analytics/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzcu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzcu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzfa;->zza:Lcom/google/android/gms/analytics/b;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/analytics/b;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfa;->zza:Lcom/google/android/gms/analytics/b;

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LogTagMismatch"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfb;->zza()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfa;->zzf(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, ":"

    invoke-static {v2, p0, v0, p1}, Lic;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p0

    .line 4
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzeu;->zzc:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_2
    :goto_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzfa;->zza:Lcom/google/android/gms/analytics/b;

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1, p0}, Lcom/google/android/gms/analytics/b;->error(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static zzc(Lcom/google/android/gms/analytics/b;)V
    .locals 0

    sput-object p0, Lcom/google/android/gms/internal/gtm/zzfa;->zza:Lcom/google/android/gms/analytics/b;

    return-void
.end method

.method public static zzd(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LogTagMismatch"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfb;->zza()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfa;->zzf(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzeu;->zzc:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfa;->zza:Lcom/google/android/gms/analytics/b;

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/b;->verbose(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static zze(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LogTagMismatch"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfb;->zza()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfa;->zzf(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzeu;->zzc:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfa;->zza:Lcom/google/android/gms/analytics/b;

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/b;->warn(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static zzf(I)Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfa;->zza:Lcom/google/android/gms/analytics/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfa;->zza:Lcom/google/android/gms/analytics/b;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/analytics/b;->getLogLevel()I

    move-result v0

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method
