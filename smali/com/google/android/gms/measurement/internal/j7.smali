.class final Lcom/google/android/gms/measurement/internal/j7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/zzas;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/internal/measurement/zzs;

.field final synthetic e:Lcom/google/android/gms/measurement/internal/z7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/z7;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j7;->e:Lcom/google/android/gms/measurement/internal/z7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/j7;->b:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/j7;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/j7;->d:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j7;->e:Lcom/google/android/gms/measurement/internal/z7;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/z7;->z(Lcom/google/android/gms/measurement/internal/z7;)Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j7;->e:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    const-string v2, "Discarding data. Failed to send event to service to bundle"

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j7;->e:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 4
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j7;->d:Lcom/google/android/gms/internal/measurement/zzs;

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/h9;->S(Lcom/google/android/gms/internal/measurement/zzs;[B)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j7;->b:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/j7;->c:Ljava/lang/String;

    .line 6
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/y2;->v(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j7;->e:Lcom/google/android/gms/measurement/internal/z7;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/z7;->A(Lcom/google/android/gms/measurement/internal/z7;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j7;->e:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 8
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j7;->e:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    const-string v3, "Failed to send event to the service to bundle"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j7;->e:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    goto :goto_0

    .line 11
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j7;->e:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/j7;->d:Lcom/google/android/gms/internal/measurement/zzs;

    .line 13
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/h9;->S(Lcom/google/android/gms/internal/measurement/zzs;[B)V

    .line 14
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
