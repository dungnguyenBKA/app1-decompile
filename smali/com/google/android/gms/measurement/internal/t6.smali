.class final Lcom/google/android/gms/measurement/internal/t6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/r6;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/r6;

.field final synthetic d:J

.field final synthetic e:Z

.field final synthetic f:Lcom/google/android/gms/measurement/internal/z6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/z6;Lcom/google/android/gms/measurement/internal/r6;Lcom/google/android/gms/measurement/internal/r6;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t6;->f:Lcom/google/android/gms/measurement/internal/z6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/t6;->b:Lcom/google/android/gms/measurement/internal/r6;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/t6;->c:Lcom/google/android/gms/measurement/internal/r6;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/t6;->d:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/t6;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t6;->f:Lcom/google/android/gms/measurement/internal/z6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t6;->b:Lcom/google/android/gms/measurement/internal/r6;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/t6;->c:Lcom/google/android/gms/measurement/internal/r6;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/t6;->d:J

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/t6;->e:Z

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/z6;->E(Lcom/google/android/gms/measurement/internal/z6;Lcom/google/android/gms/measurement/internal/r6;Lcom/google/android/gms/measurement/internal/r6;JZ)V

    return-void
.end method
