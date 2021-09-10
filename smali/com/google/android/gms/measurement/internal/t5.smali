.class final Lcom/google/android/gms/measurement/internal/t5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/measurement/internal/l6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/l6;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/t5;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/t5;->b:J

    const/4 v3, 0x1

    .line 1
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/l6;->s(JZ)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->P()Lcom/google/android/gms/measurement/internal/z7;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z7;->S(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
