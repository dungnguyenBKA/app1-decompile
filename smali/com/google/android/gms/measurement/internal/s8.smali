.class abstract Lcom/google/android/gms/measurement/internal/s8;
.super Lcom/google/android/gms/measurement/internal/d5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/f5;


# instance fields
.field protected final b:Lcom/google/android/gms/measurement/internal/b9;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/b9;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/b9;->u()Lcom/google/android/gms/measurement/internal/j4;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/d5;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/b9;->s()V

    return-void
.end method


# virtual methods
.method final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/s8;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final i()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/s8;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/s8;->c:Z

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/s8;->k()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->t()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/s8;->c:Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract k()Z
.end method
