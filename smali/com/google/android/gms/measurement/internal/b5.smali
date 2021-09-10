.class final Lcom/google/android/gms/measurement/internal/b5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:Lcom/google/android/gms/measurement/internal/c5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/c5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b5;->f:Lcom/google/android/gms/measurement/internal/c5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/b5;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/b5;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/b5;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/b5;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b5;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b5;->f:Lcom/google/android/gms/measurement/internal/c5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c5;->U(Lcom/google/android/gms/measurement/internal/c5;)Lcom/google/android/gms/measurement/internal/b9;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->u()Lcom/google/android/gms/measurement/internal/j4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->O()Lcom/google/android/gms/measurement/internal/z6;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b5;->c:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z6;->x(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/r6;)V

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/measurement/internal/r6;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b5;->d:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/b5;->e:J

    .line 4
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/r6;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b5;->f:Lcom/google/android/gms/measurement/internal/c5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c5;->U(Lcom/google/android/gms/measurement/internal/c5;)Lcom/google/android/gms/measurement/internal/b9;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->u()Lcom/google/android/gms/measurement/internal/j4;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->O()Lcom/google/android/gms/measurement/internal/z6;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b5;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/z6;->x(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/r6;)V

    return-void
.end method
