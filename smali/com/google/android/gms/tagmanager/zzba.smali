.class final Lcom/google/android/gms/tagmanager/zzba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzaw;

.field final synthetic zzb:Lcom/google/android/gms/tagmanager/zzbe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzbe;Lcom/google/android/gms/tagmanager/zzaw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzba;->zzb:Lcom/google/android/gms/tagmanager/zzbe;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzba;->zza:Lcom/google/android/gms/tagmanager/zzaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzba;->zza:Lcom/google/android/gms/tagmanager/zzaw;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzba;->zzb:Lcom/google/android/gms/tagmanager/zzbe;

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbe;->zzf(Lcom/google/android/gms/tagmanager/zzbe;)Ljava/util/List;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/tagmanager/zzat;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tagmanager/zzau;

    iget-object v3, v0, Lcom/google/android/gms/tagmanager/zzat;->zza:Lcom/google/android/gms/tagmanager/DataLayer;

    .line 4
    iget-object v4, v2, Lcom/google/android/gms/tagmanager/zzau;->zza:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/tagmanager/zzau;->zzb:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/tagmanager/DataLayer;->zza(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/tagmanager/DataLayer;->zzc(Lcom/google/android/gms/tagmanager/DataLayer;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/tagmanager/zzat;->zza:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->zzb(Lcom/google/android/gms/tagmanager/DataLayer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
