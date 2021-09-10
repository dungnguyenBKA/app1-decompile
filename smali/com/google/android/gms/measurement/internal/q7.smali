.class final Lcom/google/android/gms/measurement/internal/q7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic e:Lcom/google/android/gms/internal/measurement/zzs;

.field final synthetic f:Lcom/google/android/gms/measurement/internal/z7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/z7;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;Lcom/google/android/gms/internal/measurement/zzs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/q7;->f:Lcom/google/android/gms/measurement/internal/z7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/q7;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/q7;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/q7;->d:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/q7;->e:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q7;->f:Lcom/google/android/gms/measurement/internal/z7;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/z7;->z(Lcom/google/android/gms/measurement/internal/z7;)Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q7;->f:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    const-string v2, "Failed to get conditional properties; not connected to service"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/q7;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/q7;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q7;->f:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 5
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q7;->e:Lcom/google/android/gms/internal/measurement/zzs;

    .line 6
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/h9;->V(Lcom/google/android/gms/internal/measurement/zzs;Ljava/util/ArrayList;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q7;->d:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v3, "null reference"

    .line 7
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q7;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/q7;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/q7;->d:Lcom/google/android/gms/measurement/internal/zzp;

    .line 9
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/y2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/h9;->W(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q7;->f:Lcom/google/android/gms/measurement/internal/z7;

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/z7;->A(Lcom/google/android/gms/measurement/internal/z7;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q7;->f:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 12
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q7;->f:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    const-string v3, "Failed to get conditional properties; remote exception"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/q7;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/q7;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/g3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q7;->f:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    goto :goto_0

    .line 16
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q7;->f:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/q7;->e:Lcom/google/android/gms/internal/measurement/zzs;

    .line 18
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/h9;->V(Lcom/google/android/gms/internal/measurement/zzs;Ljava/util/ArrayList;)V

    .line 19
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
