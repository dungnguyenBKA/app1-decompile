.class final Lcom/google/android/gms/measurement/internal/j8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final b:J

.field final c:J

.field final synthetic d:Lcom/google/android/gms/measurement/internal/k8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/k8;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j8;->d:Lcom/google/android/gms/measurement/internal/k8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/j8;->b:J

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/j8;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j8;->d:Lcom/google/android/gms/measurement/internal/k8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/k8;->b:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/i8;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/i8;-><init>(Lcom/google/android/gms/measurement/internal/j8;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g4;->q(Ljava/lang/Runnable;)V

    return-void
.end method
