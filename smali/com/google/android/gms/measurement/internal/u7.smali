.class final Lcom/google/android/gms/measurement/internal/u7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/y2;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/y7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y7;Lcom/google/android/gms/measurement/internal/y2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/u7;->b:Lcom/google/android/gms/measurement/internal/y2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u7;->c:Lcom/google/android/gms/measurement/internal/y7;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u7;->c:Lcom/google/android/gms/measurement/internal/y7;

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/y7;->d(Lcom/google/android/gms/measurement/internal/y7;)Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/y7;->c:Lcom/google/android/gms/measurement/internal/z7;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/z7;->G()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/y7;->c:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->u()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    const-string v2, "Connected to remote service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/y7;->c:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u7;->b:Lcom/google/android/gms/measurement/internal/y2;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z7;->r(Lcom/google/android/gms/measurement/internal/y2;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
