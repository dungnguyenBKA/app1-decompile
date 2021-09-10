.class final Lcom/google/android/gms/measurement/internal/k8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/measurement/internal/j8;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/o8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/o8;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k8;->a:Lcom/google/android/gms/measurement/internal/j8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o8;->q(Lcom/google/android/gms/measurement/internal/o8;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k8;->a:Lcom/google/android/gms/measurement/internal/j8;

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/google/android/gms/measurement/internal/v2;->u0:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/v3;->v:Lcom/google/android/gms/measurement/internal/q3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/q3;->b(Z)V

    :cond_1
    return-void
.end method

.method final b(J)V
    .locals 7

    new-instance v6, Lcom/google/android/gms/measurement/internal/j8;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/j8;-><init>(Lcom/google/android/gms/measurement/internal/k8;JJ)V

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/k8;->a:Lcom/google/android/gms/measurement/internal/j8;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o8;->q(Lcom/google/android/gms/measurement/internal/o8;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/k8;->a:Lcom/google/android/gms/measurement/internal/j8;

    const-wide/16 v0, 0x7d0

    .line 3
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
