.class final Lcom/google/android/gms/measurement/internal/w6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/r6;

.field final synthetic c:J

.field final synthetic d:Lcom/google/android/gms/measurement/internal/z6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/z6;Lcom/google/android/gms/measurement/internal/r6;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->d:Lcom/google/android/gms/measurement/internal/z6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/w6;->b:Lcom/google/android/gms/measurement/internal/r6;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/w6;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->d:Lcom/google/android/gms/measurement/internal/z6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->b:Lcom/google/android/gms/measurement/internal/r6;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/w6;->c:J

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/z6;->G(Lcom/google/android/gms/measurement/internal/z6;Lcom/google/android/gms/measurement/internal/r6;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->d:Lcom/google/android/gms/measurement/internal/z6;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/z6;->e:Lcom/google/android/gms/measurement/internal/r6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->P()Lcom/google/android/gms/measurement/internal/z7;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z7;->V(Lcom/google/android/gms/measurement/internal/r6;)V

    return-void
.end method
