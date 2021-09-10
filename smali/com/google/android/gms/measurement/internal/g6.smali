.class final Lcom/google/android/gms/measurement/internal/g6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/f;

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:Z

.field final synthetic g:Lcom/google/android/gms/measurement/internal/l6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/l6;Lcom/google/android/gms/measurement/internal/f;JIJZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/g6;->g:Lcom/google/android/gms/measurement/internal/l6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/g6;->b:Lcom/google/android/gms/measurement/internal/f;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/g6;->c:J

    iput p5, p0, Lcom/google/android/gms/measurement/internal/g6;->d:I

    iput-wide p6, p0, Lcom/google/android/gms/measurement/internal/g6;->e:J

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/g6;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g6;->g:Lcom/google/android/gms/measurement/internal/l6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g6;->b:Lcom/google/android/gms/measurement/internal/f;

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/l6;->P(Lcom/google/android/gms/measurement/internal/f;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g6;->g:Lcom/google/android/gms/measurement/internal/l6;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/g6;->c:J

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/l6;->s(JZ)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/g6;->g:Lcom/google/android/gms/measurement/internal/l6;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/g6;->b:Lcom/google/android/gms/measurement/internal/f;

    iget v6, p0, Lcom/google/android/gms/measurement/internal/g6;->d:I

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/g6;->e:J

    iget-boolean v10, p0, Lcom/google/android/gms/measurement/internal/g6;->f:Z

    const/4 v9, 0x1

    .line 3
    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/l6;->I(Lcom/google/android/gms/measurement/internal/l6;Lcom/google/android/gms/measurement/internal/f;IJZZ)V

    return-void
.end method
