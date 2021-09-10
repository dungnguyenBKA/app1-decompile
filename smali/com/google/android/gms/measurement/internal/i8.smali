.class final synthetic Lcom/google/android/gms/measurement/internal/i8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/measurement/internal/j8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/j8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i8;->b:Lcom/google/android/gms/measurement/internal/j8;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i8;->b:Lcom/google/android/gms/measurement/internal/j8;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/j8;->d:Lcom/google/android/gms/measurement/internal/k8;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/j8;->b:J

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/j8;->c:J

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->u()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v4, "Application going to the background"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    .line 5
    sget-object v4, Lcom/google/android/gms/measurement/internal/v2;->u0:Lcom/google/android/gms/measurement/internal/u2;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/v3;->v:Lcom/google/android/gms/measurement/internal/q3;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/q3;->b(Z)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 9
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    .line 10
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->z()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/o8;->e:Lcom/google/android/gms/measurement/internal/m8;

    .line 11
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/m8;->b()V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 12
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/v2;->l0:Lcom/google/android/gms/measurement/internal/u2;

    .line 13
    invoke-virtual {v8, v7, v9}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/o8;->e:Lcom/google/android/gms/measurement/internal/m8;

    iget-wide v9, v7, Lcom/google/android/gms/measurement/internal/m8;->b:J

    iput-wide v2, v7, Lcom/google/android/gms/measurement/internal/m8;->b:J

    sub-long v9, v2, v9

    const-string v7, "_et"

    .line 14
    invoke-virtual {v0, v7, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 15
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->O()Lcom/google/android/gms/measurement/internal/z6;

    move-result-object v7

    .line 16
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/z6;->r(Z)Lcom/google/android/gms/measurement/internal/r6;

    move-result-object v7

    .line 17
    invoke-static {v7, v0, v4}, Lcom/google/android/gms/measurement/internal/z6;->w(Lcom/google/android/gms/measurement/internal/r6;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/o8;->e:Lcom/google/android/gms/measurement/internal/m8;

    .line 18
    invoke-virtual {v7, v8, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/m8;->d(ZZJ)Z

    :cond_2
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/l6;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_ab"

    move-object v7, v0

    .line 20
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/l6;->R(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method
