.class final Lcom/google/android/gms/measurement/internal/v6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/measurement/internal/z6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/z6;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/v6;->c:Lcom/google/android/gms/measurement/internal/z6;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/v6;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v6;->c:Lcom/google/android/gms/measurement/internal/z6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->f()Lcom/google/android/gms/measurement/internal/a2;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/v6;->b:J

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/a2;->j(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v6;->c:Lcom/google/android/gms/measurement/internal/z6;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/z6;->e:Lcom/google/android/gms/measurement/internal/r6;

    return-void
.end method
