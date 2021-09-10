.class final Lcom/google/android/gms/measurement/internal/x4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/zzkg;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/c5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/c5;Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x4;->d:Lcom/google/android/gms/measurement/internal/c5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/x4;->b:Lcom/google/android/gms/measurement/internal/zzkg;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/x4;->c:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x4;->d:Lcom/google/android/gms/measurement/internal/c5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c5;->U(Lcom/google/android/gms/measurement/internal/c5;)Lcom/google/android/gms/measurement/internal/b9;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->o()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x4;->b:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkg;->o()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x4;->d:Lcom/google/android/gms/measurement/internal/c5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c5;->U(Lcom/google/android/gms/measurement/internal/c5;)Lcom/google/android/gms/measurement/internal/b9;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/x4;->b:Lcom/google/android/gms/measurement/internal/zzkg;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/x4;->c:Lcom/google/android/gms/measurement/internal/zzp;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/b9;->r(Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x4;->d:Lcom/google/android/gms/measurement/internal/c5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c5;->U(Lcom/google/android/gms/measurement/internal/c5;)Lcom/google/android/gms/measurement/internal/b9;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/x4;->b:Lcom/google/android/gms/measurement/internal/zzkg;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/x4;->c:Lcom/google/android/gms/measurement/internal/zzp;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/b9;->q(Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method
