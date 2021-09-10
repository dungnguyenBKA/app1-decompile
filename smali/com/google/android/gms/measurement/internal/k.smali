.class final Lcom/google/android/gms/measurement/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/f5;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/l;Lcom/google/android/gms/measurement/internal/f5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k;->c:Lcom/google/android/gms/measurement/internal/l;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/k;->b:Lcom/google/android/gms/measurement/internal/f5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k;->b:Lcom/google/android/gms/measurement/internal/f5;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/f5;->zzas()Lcom/google/android/gms/measurement/internal/u9;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/u9;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k;->b:Lcom/google/android/gms/measurement/internal/f5;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/f5;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/g4;->q(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k;->c:Lcom/google/android/gms/measurement/internal/l;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k;->c:Lcom/google/android/gms/measurement/internal/l;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/l;->e(Lcom/google/android/gms/measurement/internal/l;)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k;->c:Lcom/google/android/gms/measurement/internal/l;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l;->a()V

    :cond_1
    return-void
.end method
