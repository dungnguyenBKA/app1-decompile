.class final Lcom/google/android/gms/measurement/internal/a7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic e:Z

.field final synthetic f:Lcom/google/android/gms/internal/measurement/zzs;

.field final synthetic g:Lcom/google/android/gms/measurement/internal/z7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/z7;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/internal/measurement/zzs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/z7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/a7;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/a7;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/a7;->d:Lcom/google/android/gms/measurement/internal/zzp;

    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/a7;->e:Z

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/a7;->f:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/z7;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/z7;->z(Lcom/google/android/gms/measurement/internal/z7;)Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    const-string v2, "Failed to get user properties; not connected to service"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/a7;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/a7;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a7;->f:Lcom/google/android/gms/internal/measurement/zzs;

    .line 6
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/h9;->U(Lcom/google/android/gms/internal/measurement/zzs;Landroid/os/Bundle;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a7;->d:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v3, "null reference"

    .line 7
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a7;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/a7;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/a7;->e:Z

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/a7;->d:Lcom/google/android/gms/measurement/internal/zzp;

    .line 9
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/y2;->o(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;

    move-result-object v1

    .line 10
    new-instance v2, Landroid/os/Bundle;

    .line 11
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-nez v1, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzkg;

    .line 13
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkg;->f:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 14
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkg;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkg;->e:Ljava/lang/Long;

    if-eqz v4, :cond_4

    .line 16
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkg;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 17
    :cond_4
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkg;->h:Ljava/lang/Double;

    if-eqz v4, :cond_2

    .line 18
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkg;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19
    :cond_5
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/z7;

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/z7;->A(Lcom/google/android/gms/measurement/internal/z7;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a7;->f:Lcom/google/android/gms/internal/measurement/zzs;

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/h9;->U(Lcom/google/android/gms/internal/measurement/zzs;Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 23
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    const-string v3, "Failed to get user properties; remote exception"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/a7;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a7;->f:Lcom/google/android/gms/internal/measurement/zzs;

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/h9;->U(Lcom/google/android/gms/internal/measurement/zzs;Landroid/os/Bundle;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a7;->g:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/a7;->f:Lcom/google/android/gms/internal/measurement/zzs;

    .line 30
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/h9;->U(Lcom/google/android/gms/internal/measurement/zzs;Landroid/os/Bundle;)V

    .line 31
    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method
