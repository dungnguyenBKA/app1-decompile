.class final Lcom/google/android/gms/measurement/internal/o5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/gms/measurement/internal/l6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/l6;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/o5;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->j()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->i()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/o5;->b:Z

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/j4;->h(Z)V

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/o5;->b:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/o5;->b:Z

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Default data collection state already set to"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->j()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->j()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->i()Z

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->s()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/o5;->b:Z

    .line 11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "Default data collection is different than actual status"

    .line 13
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o5;->c:Lcom/google/android/gms/measurement/internal/l6;

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/l6;->J(Lcom/google/android/gms/measurement/internal/l6;)V

    return-void
.end method
