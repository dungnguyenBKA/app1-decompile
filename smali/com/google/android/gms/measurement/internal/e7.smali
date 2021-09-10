.class final Lcom/google/android/gms/measurement/internal/e7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic c:Lcom/google/android/gms/internal/measurement/zzs;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/z7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/z7;Lcom/google/android/gms/measurement/internal/zzp;Lcom/google/android/gms/internal/measurement/zzs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/e7;->b:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/e7;->c:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/google/android/gms/measurement/internal/v2;->w0:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/v3;->s()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f;->h()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->s()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    const-string v3, "Analytics storage consent denied; will not get app instance id"

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/l6;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/l6;->q(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v2

    .line 12
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/v3;->l:Lcom/google/android/gms/measurement/internal/u3;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/u3;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 13
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e7;->c:Lcom/google/android/gms/internal/measurement/zzs;

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/h9;->P(Lcom/google/android/gms/internal/measurement/zzs;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/z7;->z(Lcom/google/android/gms/measurement/internal/z7;)Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    goto :goto_0

    .line 17
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/e7;->b:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v4, "null reference"

    .line 18
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/e7;->b:Lcom/google/android/gms/measurement/internal/zzp;

    .line 20
    invoke-interface {v2, v3}, Lcom/google/android/gms/measurement/internal/y2;->e(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/l6;

    move-result-object v2

    .line 22
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/l6;->q(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v2

    .line 24
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/v3;->l:Lcom/google/android/gms/measurement/internal/u3;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/u3;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/z7;->A(Lcom/google/android/gms/measurement/internal/z7;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 26
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    goto :goto_0

    .line 29
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/e7;->c:Lcom/google/android/gms/internal/measurement/zzs;

    .line 31
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/h9;->P(Lcom/google/android/gms/internal/measurement/zzs;Ljava/lang/String;)V

    .line 32
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
