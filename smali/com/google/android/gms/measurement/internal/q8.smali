.class final Lcom/google/android/gms/measurement/internal/q8;
.super Lcom/google/android/gms/measurement/internal/l;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/google/android/gms/measurement/internal/r8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/r8;Lcom/google/android/gms/measurement/internal/f5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/q8;->e:Lcom/google/android/gms/measurement/internal/r8;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/l;-><init>(Lcom/google/android/gms/measurement/internal/f5;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q8;->e:Lcom/google/android/gms/measurement/internal/r8;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r8;->m()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q8;->e:Lcom/google/android/gms/measurement/internal/r8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q8;->e:Lcom/google/android/gms/measurement/internal/r8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/s8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->j()V

    return-void
.end method
