.class final Lvv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luv$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/common/zze;->zza()Lcom/google/android/gms/internal/common/zzf;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/common/zzj;->zza:I

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/common/zzf;->zza(II)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
