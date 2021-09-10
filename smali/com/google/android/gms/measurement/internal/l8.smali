.class final Lcom/google/android/gms/measurement/internal/l8;
.super Lcom/google/android/gms/measurement/internal/l;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/google/android/gms/measurement/internal/m8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/m8;Lcom/google/android/gms/measurement/internal/f5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/l8;->e:Lcom/google/android/gms/measurement/internal/m8;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/l;-><init>(Lcom/google/android/gms/measurement/internal/f5;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l8;->e:Lcom/google/android/gms/measurement/internal/m8;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/m8;->d:Lcom/google/android/gms/measurement/internal/o8;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/m8;->d:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/m8;->d(ZZJ)Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/m8;->d:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/a2;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/m8;->d:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/a2;->j(J)V

    return-void
.end method
