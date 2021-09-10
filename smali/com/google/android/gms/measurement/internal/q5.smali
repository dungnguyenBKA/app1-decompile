.class final Lcom/google/android/gms/measurement/internal/q5;
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

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/q5;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/v3;->p:Lcom/google/android/gms/measurement/internal/s3;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/q5;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/s3;->b(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/l6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->u()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/q5;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session timeout duration set"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
